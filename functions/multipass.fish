# override the default "multipass" command with a custom function
function multipass
    set __the_custom_command $argv[1]
    switch $__the_custom_command
        case status
            __multipass_status
        case add-ssh
            __multipass_add_ssh $argv[2]
        case upgrade
            __multipass_upgrade $argv[2]
        case '*'
            command multipass $argv
    end
end
