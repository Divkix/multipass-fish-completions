# Multipass Fish completions

`multipass` command completions for [Fish](https://fishshell.com/).

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install Divkix/multipass-fish-completions
```

Or manually:

```console
mkdir ~/.config/fish/completions
wget https://raw.githubusercontent.com/Divkix/multipass-fish-completions/main/completions/multipass.fish -O ~/.config/fish/completions/multipass.fish
```

Fish will load the new completions straight away—no reload required.

## Example

```console
% multipass [TAB]
delete                                 (Delete instances)
recover                       (Recover deleted instances)
exec                       (Run a command on an instance)
restart                               (Restart instances)
...
```

These completions have been taken from [here](https://gist.github.com/linux-china/3e1a7ce99393382ad8fe575af19c8f07) and [here](https://gist.github.com/tmsick/45184f2b5976d0367f0b561f15f6d4a8).
Thanks to both the authors for their work.
