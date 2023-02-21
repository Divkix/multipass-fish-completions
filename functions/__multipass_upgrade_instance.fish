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
