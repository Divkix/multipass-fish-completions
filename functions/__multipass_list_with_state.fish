# list all instances with their state
function __multipass_list_with_state
    multipass list --format=json | jq -r '.list[] | "\(.name):\(.state)"'
end
