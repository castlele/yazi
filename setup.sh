#!/bin/bash

OS_TYPE="$OSTYPE"
LINUX_MINT="linux-gnu"
MACOS="darwin"

if [[ $OS_TYPE == $MACOS* ]]; then
    INSTALLATION_CMD="brew install yazi ffmpegthumbnailer sevenzip jq poppler fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font"
else
    INSTALLATION_CMD="cargo install --locked --git https://github.com/sxyazi/yazi.git yazi-fm yazi-cli"
fi

$INSTALLATION_CMD

