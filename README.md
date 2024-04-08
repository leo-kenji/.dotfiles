# My dotfiles

This setup uses gnu stow

## Setup

Clone this repo in your home directory.

## Usage

Navigate into the cloned directory and execute:

```bash
stow .
```

This action will symlink all configuration files with your home directory.

To incorporate a new configuration, simply add it to the repository as if it were your home directory, then rerun `stow .`.
