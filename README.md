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

## Testing in docker

Bring up the container with:

``` bash
docker compose run --rm dotfiles_test
```

Once inside the container, execute the following:

``` bash
export DOTFILES_URL=dotfiles_repository # This export allows for testing local changes instead of the online repository version
zsh ./dotfiles_repository/.scripts/install_scripts/self.sh tmux zsh
```
