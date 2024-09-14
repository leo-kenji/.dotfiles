# My dotfiles

This setup uses gnu stow

## Script

Or run:

``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/leo-kenji/.dotfiles/main/.scripts/install_scripts/self.sh)" "" tmux zsh ros2
```

> [!CAUTION]
> This method will overwrite files.

## Manual Setup

Clone this repo in your home directory.

## Usage

Navigate into the cloned directory and execute:

```bash
stow .
```

This action will symlink all configuration files with your home directory.

To incorporate a new configuration, simply add it to the repository as if it were your home directory, then rerun `stow .`.
