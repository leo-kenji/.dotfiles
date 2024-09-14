set -e

original_directory=$(pwd)

cd ${HOME}

git clone https://github.com/leo-kenji/.dotfiles.git

cd .dotfiles

stow . --adopt

git restore .

python3 ${HOME}/.dotfiles/.scripts/install_scripts/install.py "$@"

cd ${original_directory}
