# function for checking if the current command is a subcommand
function __multipass_fish_use_subcommand -d "Check if the current command is a subcommand"
    test (count (commandline -poc)) -eq 1
end
