#!/usr/bin/env bash

TEMP_DIR=$(mktemp -d)
REPO_FOLDER="${TEMP_DIR}/tilix_catppuccin"

# Ensure the temporary directory is cleaned up on exit
trap 'rm -rf "$TEMP_DIR"' EXIT

git clone "https://github.com/catppuccin/tilix.git" "${REPO_FOLDER}"

cd "$REPO_FOLDER" || exit

mkdir -p "${HOME}/.config/tilix/schemes"
mv themes/* "${HOME}/.config/tilix/schemes"
