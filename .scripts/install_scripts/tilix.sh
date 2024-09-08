# TODO make this better with actual temp files that will be removed

REPO_FOLDER="/tmp/tilix_catppuccin"

git clone https://github.com/catppuccin/tilix.git ${REPO_FOLDER}

cd ${REPO_FOLDER}

mkdir -p ${HOME}/.config/tilix/schemes
mv themes/* ${HOME}/.config/tilix/schemes