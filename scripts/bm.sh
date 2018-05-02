#!/bin/bash

if [ "$(uname)" = "Darwin" ]; then
  dir="$HOME/Library/Application Support/Google/Chrome/Default/Bookmarks"
  open=open
else
  dir="$HOME/.config/google-chrome/Default/Bookmarks"
  open=xdg-open
fi
bookmarks=$(jq '[.roots.bookmark_bar.children[] | if .type == "folder" then .children else . end] | flatten' $dir)
name=$(echo "${bookmarks}" | jq -r '.[].name' | fzf)
echo "${bookmarks}" | jq -r ".[] | select(.name==\"${name}\") | .url" | xargs $open > /dev/null 2> /dev/null

