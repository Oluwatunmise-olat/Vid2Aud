#!/bin/bash

operating_system=$(uname)

echo "Installing programme requirements >>"

# youtube-dl -U

if [[ ${operating_system} -eq "Darwin" ]]; then
  brew install youtube-dl ffmpeg

else if [[ ${operating_system} -eq "Linux" ]]; then
    echo "Linux"
  fi
fi