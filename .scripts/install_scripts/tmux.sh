#!/usr/bin/env bash

git clone --depth=1 https://github.com/tmux-plugins/tpm ${HOME}/.config/tmux/plugins/tpm

# The install_plugins script expects the PWD to be this.
cd ${HOME}/.config/tmux/plugins/tpm/bin

${HOME}/.config/tmux/plugins/tpm/bin/install_plugins
