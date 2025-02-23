# Any error should be treated as an error
set -e

original_directory=$(pwd)

# Set the default Git repository URL
DOTFILES_URL="${DOTFILES_URL:-https://github.com/leo-kenji/.dotfiles.git}"

cd ${HOME}

# Clone the repository using the provided or default URL
git clone ${DOTFILES_URL} .dotfiles

cd .dotfiles

# Run stow with adopt flag, since its possible that there already are
# configurations files, this will force the symlinking.
stow . --adopt

# If there was any previous configuration, this will override it.
git restore .

# Run all installation scripts.
python3 ${HOME}/.dotfiles/.scripts/install_scripts/install.py "$@"

cd ${original_directory}
