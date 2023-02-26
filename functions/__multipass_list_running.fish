# list only running instances
function __multipass_list_running
    __multipass_list_with_state | grep 'Running' | string split ':' -f1
end
