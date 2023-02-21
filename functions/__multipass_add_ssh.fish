# custom command to install private ssh key to multipass instances
# Execute the desired command instead of the default "multipass add-ssh" command
# should use this bash command: multipass exec $argv[2] -- bash -c "echo `cat ~/.ssh/id_rsa.pub` >> ~/.ssh/authorized_keys"
# but fish shell doesn't support backticks, so we get the public key from ~/.ssh/id_rsa.pub and set it to the public_key variable
function __multipass_add_ssh
    set __public_key (cat ~/.ssh/id_rsa.pub)
    set __instance_name $argv[1]
    multipass exec $__instance_name -- bash -c "echo $__public_key >> ~/.ssh/authorized_keys"
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt update
    multipass exec $__instance_name -- sudo DEBIAN_FRONTEND=noninteractive apt install avahi-daemon -y
    echo -e "\n\nSSH key added to $__instance_name, can now connect to it using:\nssh ubuntu@$__instance_name.local"
end