# custom command for "multipass status"
function __multipass_status
    multipass list --format=json | jq -r '.list[] | "\(.name):\n  Release: \(.release)\n  Running: \(.state)\n  IPV4:    \(.ipv4 | join(", "))"'
end
