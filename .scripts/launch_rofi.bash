#!/usr/bin/env bash

set -Eeuo pipefail

# Logging and error handling.

SCRIPT_NAME="$(basename "${0}")"
LOG_FILE="${HOME}/${SCRIPT_NAME}.log"

# Redirect all stderr while still showing it.
exec 2> >(tee -a "${LOG_FILE}" >&2)

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ${*}" | tee -a "${LOG_FILE}"
}

trap 'log "[Error] on line ${LINENO}: \"${BASH_COMMAND}\" (exit code: ${?})"; exit 1' ERR

# Flags

FLAGS=(
  # Force X11 as GNOME does not support the layer shell protocol required for
  # Rofi 2.0.
  -x11
  # Run Rofi with a permanent cache folder (this is the history file, no idea
  # why its considered cache).
  -cache-dir "${HOME}/.config/rofi"
  # Flags for running Rofi in Wayland (Looks like they are not necessary
  # anymore).
  -normal-window -steal-focus
  # Just want this mode shown.
  -show combi
)

rofi "${FLAGS[@]}"
