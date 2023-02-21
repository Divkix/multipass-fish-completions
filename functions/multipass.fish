# override the default "multipass" command with a custom function
function multipass
    switch $argv[1]
        # custom command for "multipass status"
        case status
            # Execute the desired command instead of the default "multipass status" command
            multipass list --format=json | jq -r '.list[] | "\(.name):\n  Release: \(.release)\n  Running: \(.state)\n  IPV4:    \(.ipv4 | join(", "))"'
        case '*'
            # Execute the default "multipass" command with the provided arguments
            command multipass $argv
    end
end
