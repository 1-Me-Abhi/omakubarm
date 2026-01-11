#!/bin/bash

# Detect architecture
ARCH=$(dpkg --print-architecture)

# Only ask for default desktop app choices when running Gnome
if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
  if [ "$ARCH" = "arm64" ] || [ "$ARCH" = "armhf" ]; then
    # 1Password and Spotify don't support ARM64, so only offer Dropbox
    OPTIONAL_APPS=("Dropbox")
    DEFAULT_OPTIONAL_APPS=''
  else
    OPTIONAL_APPS=("1password" "Spotify" "Dropbox")
    DEFAULT_OPTIONAL_APPS='1password,Spotify'
  fi
  export OMAKUB_FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 6 --header "Select optional apps" | tr ' ' '-')
fi

AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Go" "PHP" "Python" "Elixir" "Rust" "Java")
SELECTED_LANGUAGES="Ruby on Rails","Node.js"
export OMAKUB_FIRST_RUN_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")

AVAILABLE_DBS=("MySQL" "Redis" "PostgreSQL")
SELECTED_DBS="MySQL,Redis"
export OMAKUB_FIRST_RUN_DBS=$(gum choose "${AVAILABLE_DBS[@]}" --no-limit --selected "$SELECTED_DBS" --height 5 --header "Select databases (runs in Docker)")
