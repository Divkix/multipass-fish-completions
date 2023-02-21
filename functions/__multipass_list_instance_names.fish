# function for listing multipass instance names using the json format
function __multipass_list_instance_names -d "List multipass instance names"
    multipass list --format=json | jq -r '.list[].name'
end
