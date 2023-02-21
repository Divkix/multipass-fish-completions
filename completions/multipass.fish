# complete command
complete -c multipass -f

#
# custom commands
#
# status command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "status" -d 'Display status of instances'
# add-ssh command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "add-ssh" -d "Add the current user's SSH key to the instance"
complete -c multipass -n "__fish_seen_subcommand_from add-ssh" -a "(__multipass_list_instance_names)"
# upgrade command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "upgrade" -d 'Upgrade the packages on instance'
complete -c multipass -n "__fish_seen_subcommand_from upgrade" -a "(__multipass_list_instance_names)"


#
# default commands
#
# alias command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "alias" -d 'Create an alias'
complete -c multipass -n "__fish_seen_subcommand_from alias" -d ' Name of the alias to create' -r
complete -c multipass -n "__fish_seen_subcommand_from alias" -s h -l help -d 'Prints help information'
complete -c multipass -n "__fish_seen_subcommand_from alias" -s v -l verbose -d 'Increase logging verbosity. Can be used multiple times.'
complete -c multipass -n "__fish_seen_subcommand_from alias" -s n -l no-map-working-directory -d 'Do not map the current working directory to the instance'
# aliases command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "aliases" -d 'List available aliases'
complete -c multipass -n "__fish_seen_subcommand_from aliases" -s h -l help -d 'Prints help information'
complete -c multipass -n "__fish_seen_subcommand_from aliases" -s v -l verbose -d 'Increase logging verbosity. Can be used multiple times.'
complete -c multipass -n "__fish_seen_subcommand_from aliases" -l format -d 'Output list in the requested format. Valid formats are: table (default), json, csv and yaml'
# authenticate command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "authenticate" -d 'Authenticate with the Multipass service'
complete -c multipass -n "__fish_seen_subcommand_from authenticate" -s h -l help -d 'Prints help information'
complete -c multipass -n "__fish_seen_subcommand_from authenticate" -s v -l verbose -d 'Increase logging verbosity. Can be used multiple times.'
# delete command
complete -c multipass -n "__multipass_fish_use_subcommand" -a "delete" -d "Delete instances"
complete -c multipass -n "__fish_seen_subcommand_from delete" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from delete" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from delete" -l all -d "Delete all instances"
complete -c multipass -n "__fish_seen_subcommand_from delete" -s p -l purge -d "Purge instances immediately"
complete -c multipass -n "__fish_seen_subcommand_from delete" -a "(__multipass_list_instance_names)"
# exec command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "exec" -d 'Run a command on an instance'
complete -c multipass -n "__fish_seen_subcommand_from exec" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from exec" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from exec" -s d -l working-directory -d 'Change to <dir> before execution'
complete -c multipass -n "__fish_seen_subcommand_from exec" -s n -l no-map-working-directory -d 'Do not map the host execution path to a mounted path'
complete -c multipass -n "__fish_seen_subcommand_from exec" -a "(__multipass_list_instance_names)"
# find command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "find" -d 'Display available images to create instances from'
complete -c multipass -n "__fish_seen_subcommand_from find" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from find" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from find" -l show-unsupported -d "Show unsupported cloud images as well"
complete -c multipass -n "__fish_seen_subcommand_from find" -l format -d "Output list in the requested format. Valid formats are: table (default), json, csv and yaml"
# get command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "get" -d 'Get a configuration setting'
complete -c multipass -n "__fish_seen_subcommand_from get" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from get" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from get" -l raw -d 'Output in raw format. For now, this affects only the representation of empty values (i.e. "" instead of "<empty>").'
# help command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "help" -d 'Display help about a command'
complete -c multipass -n "__fish_seen_subcommand_from help" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from help" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from help" -a "delete exec find get help info launch list mount purge recover restart set shell start stop suspend transfer umount version"
# info command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "info" -d 'Display information about instances'complete -c multipass -n "__fish_seen_subcommand_from info" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from info" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from info" -l all -d "Display info for all instances"
complete -c multipass -n "__fish_seen_subcommand_from info" -l format -d "Output info in the requested format. Valid formats are: table (default), json, csv and yaml"
# launch command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "launch" -d 'Create and start an Ubuntu instance'
complete -c multipass -n "__fish_seen_subcommand_from launch" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from launch" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from launch" -s c -l cpus -d "Number of CPUs to allocate. Minimum: 1, default: 1."
complete -c multipass -n "__fish_seen_subcommand_from launch" -s d -l disk -d "Disk space to allocate. Positive integers, in bytes, or with K, M, G suffix. Minimum: 512M, default: 5G."
complete -c multipass -n "__fish_seen_subcommand_from launch" -s m -l mem -d "Amount of memory to allocate. Positive integers, in bytes, or with K, M, G suffix. Minimum: 128M, default: 1G."
complete -c multipass -n "__fish_seen_subcommand_from launch" -s n -l name -d "Name for the instance. If it is 'primary' (the configured primary instance name), the user's home directory is mounted inside the newly launched instance, in 'Home'."
complete -c multipass -n "__fish_seen_subcommand_from launch" -l cloud-init -d "Path to a user-data cloud-init configuration, or '-' for stdin"
# list command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "list" -d 'List all available instances'
complete -c multipass -n "__fish_seen_subcommand_from list" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from list" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from list" -l format -d "Output list in the requested format. Valid formats are: table (default), json, csv and yaml"
# mount command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "mount" -d 'Mount a local directory in the instance'
complete -c multipass -n "__fish_seen_subcommand_from mount" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from mount" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from mount" -s g -l gid-map -d "A mapping of group IDs for use in the mount. File and folder ownership will be mapped from <host> to <instance> inside the instance. Can be used multiple times."
complete -c multipass -n "__fish_seen_subcommand_from mount" -s u -l uid-map -d "A mapping of user IDs for use in the mount. File and folder ownership will be mapped from <host> to <instance> inside the instance. Can be used multiple times."
complete -c multipass -n "__fish_seen_subcommand_from mount" -s t -l type -d "Specify the type of mount to use. Valid types are: 'classic' (default) and 'native'"
# networks command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "networks" -d 'List available network interfaces'
complete -c multipass -n "__fish_seen_subcommand_from networks" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from networks" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from networks" -l format -d "Output list in the requested format. Valid formats are: table (default), json, csv and yaml"
# purge command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "purge" -d 'Purge all deleted instances permanently'
complete -c multipass -n "__fish_seen_subcommand_from purge" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from purge" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
# recover command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "recover" -d 'Recover deleted instances'
complete -c multipass -n "__fish_seen_subcommand_from recover" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from recover" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from recover" -l all -d "Recover all deleted instances"
complete -c multipass -n "__fish_seen_subcommand_from recover" -a "(__multipass_list_instance_names)"
# restart command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "restart" -d 'Restart instances'
complete -c multipass -n "__fish_seen_subcommand_from restart" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from restart" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from restart" -l all -d "Restart all instances"
complete -c multipass -n "__fish_seen_subcommand_from restart" -a "(__multipass_list_instance_names)"
# set command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "set" -d 'Set a configuration setting'
complete -c multipass -n "__fish_seen_subcommand_from set" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from set" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
# shell command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "shell" -d 'Open a shell on a running instance'
complete -c multipass -n "__fish_seen_subcommand_from shell" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from shell" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from shell" -a "(__multipass_list_instance_names)"
# start command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "start" -d 'Start instances'
complete -c multipass -n "__fish_seen_subcommand_from start" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from start" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from start" -l all -d "Start all instances"
complete -c multipass -n "__fish_seen_subcommand_from start" -a "(__multipass_list_instance_names)"
# stop command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "stop" -d 'Stop running instances'
complete -c multipass -n "__fish_seen_subcommand_from stop" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from stop" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from stop" -l all -d "Stop all instances"
complete -c multipass -n "__fish_seen_subcommand_from stop" -s t -l time -d "Time from now, in minutes, to delay shutdown of the instance"
complete -c multipass -n "__fish_seen_subcommand_from stop" -s c -l cancel -d "Cancel a pending delayed shutdown"
complete -c multipass -n "__fish_seen_subcommand_from stop" -a "(__multipass_list_instance_names)"
# suspend command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "suspend" -d 'Suspend running instances'
complete -c multipass -n "__fish_seen_subcommand_from suspend" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from suspend" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from suspend" -l all -d "Suspend all instances"
complete -c multipass -n "__fish_seen_subcommand_from suspend" -a "(__multipass_list_instance_names)"
# transfer command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "transfer" -d 'Transfer files between the host and instances'
complete -c multipass -n "__fish_seen_subcommand_from transfer" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from transfer" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
# umount command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "umount" -d 'Unmount a directory from an instance'
complete -c multipass -n "__fish_seen_subcommand_from umount" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from umount" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
# unalias command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "unalias" -d 'Remove aliases'
complete -c multipass -n "__fish_seen_subcommand_from unalias" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from unalias" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from unalias" -l all -d "Remove all aliases"
# version command
complete -c multipass -n "__multipass_fish_use_subcommand" -f -a "version" -d 'Show version details'
complete -c multipass -n "__fish_seen_subcommand_from version" -s h -l help -d "Display help"
complete -c multipass -n "__fish_seen_subcommand_from version" -s v -l verbose -d "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv."
complete -c multipass -n "__fish_seen_subcommand_from version" -l format -d "Output list in the requested format. Valid formats are: table (default), json, csv and yaml"
