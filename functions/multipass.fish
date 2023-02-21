# override the default "multipass" command with a custom function
function multipass
    set __the_custom_command $argv[1]
    switch $__the_custom_command
        # custom command for "multipass status"
        case status
            multipass list --format=json | jq -r '.list[] | "\(.name):\n  Release: \(.release)\n  Running: \(.state)\n  IPV4:    \(.ipv4 | join(", "))"'
        # custom command to install private ssh key to multipass instances
        # Execute the desired command instead of the default "multipass add-ssh" command
        # should use this bash command: multipass exec $argv[2] -- bash -c "echo `cat ~/.ssh/id_rsa.pub` >> ~/.ssh/authorized_keys"
        # but fish shell doesn't support backticks, so we get the public key from ~/.ssh/id_rsa.pub and set it to the public_key variable
        case add-ssh
            set __public_key (cat ~/.ssh/id_rsa.pub)
            set __instance_name $argv[2]
            multipass exec $__instance_name -- bash -c "echo $__public_key >> ~/.ssh/authorized_keys"
            multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt update
            multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt install avahi-daemon -y
            echo -e "\n\nSSH key added to $__instance_name, can now connect to it using:\nssh ubuntu@$__instance_name.local"
        # custom command to upgrade multipass instances, just upgrade the selected instance and stop it
        case upgrade
            set __instance_name $argv[2]
            # get the state of the instance, if it's running, leave it running, otherwise start it and return it to the original state
            set __instance_state (multipass info $__instance_name | grep State | awk '{print $2}')
            if test $__instance_state = "Running"
                __upgrade_instance $__instance_name
            else if test $__instance_state = "Stopped"
                multipass start $__instance_name
                __upgrade_instance $__instance_name
                multipass stop $__instance_name
            else if test $__instance_state = "Suspended"
                multipass start $__instance_name
                __upgrade_instance $__instance_name
                multipass suspend $__instance_name
            else
                echo "Unknown instance state: $__instance_state"
            end
            echo "Instance $__instance_name upgraded"
        # Execute the default "multipass" command with the provided arguments
        case '*'
            command multipass $argv
    end
end

# function to upgrade the selected instance, instance is passed as an argument
# update the package list on instance without asking for confirmation
# upgrade the instance by setting non-interactive mode and accepting all prompts
# stop the instance
function __upgrade_instance -d "Upgrade the selected instance"
    set __instance_name $argv[1]
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt update
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
    multipass stop $__instance_name
end

# function for checking if the current command is a subcommand
function __fish_use_subcommand -d "Check if the current command is a subcommand"
    test (count (commandline -poc)) -eq 1
end

# function for listing multipass instance names using the json format
function __fish_list_multipass_instance_names -d "List multipass instance names"
    multipass list --format=json | jq -r '.list[].name'
end
