# custom command to upgrade multipass instances, just upgrade the selected instance and stop it
function __multipass_upgrade
    set __instance_name $argv[1]
    # get the state of the instance, if it's running, leave it running, otherwise start it and return it to the original state
    set __instance_state (multipass info $__instance_name | grep State | awk '{print $2}')
    if test $__instance_state = "Running"
        __multipass_upgrade_instance $__instance_name
    else if test $__instance_state = "Stopped"
        multipass start $__instance_name
        __multipass_upgrade_instance $__instance_name
        multipass stop $__instance_name
    else if test $__instance_state = "Suspended"
        multipass start $__instance_name
        __multipass_upgrade_instance $__instance_name
        multipass suspend $__instance_name
    else
        echo "Unknown instance state: $__instance_state"
    end
    echo "Instance $__instance_name upgraded"
end

# function to upgrade the selected instance, instance is passed as an argument
# update the package list on instance without asking for confirmation
# upgrade the instance by setting non-interactive mode and accepting all prompts
# stop the instance
function __multipass_upgrade_instance -d "Upgrade the selected instance"
    set __instance_name $argv[1]
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt update
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
    multipass stop $__instance_name
end
