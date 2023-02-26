# list only stopped or suspended instances
function __multipass_list_stopped_or_suspended
    __multipass_list_with_state | grep 'Stopped\|Suspended' | string split ':' -f1
end
