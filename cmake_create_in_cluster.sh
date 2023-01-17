# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cmake_create.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sooyokim <sooyokim@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/03 02:00:26 by hyeonsok          #+#    #+#              #
#    Updated: 2022/12/19 18:32:37 by sooyokim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# TARGET=(
#   "Caches/vscode-cpptools"
#   "ApplicationSupport/Code/Cache"
#   "ApplicationSupport/Code/CachedData"
#   "ApplicationSupport/Code/CachedExtensions"
#   "ApplicationSupport/Code/CachedExtensionVSIXs"
#   "ApplicationSupport/Code/Code Cache"
#   "ApplicationSupport/Slack/Cache"
#   "ApplicationSupport/Slack/CachedData"
#   "ApplicationSupport/Slack/Service Worker/CacheStorage"
#   "ApplicationSupport/Slack/Service Worker/ScriptCache"
# )
# FLAG="$HOME/goinfre/issetup"
# function link_all_cache_dirs() {
#   echo "link Code Slack Cache dirs..."
#   for ((i = 0; i < ${#TARGET[@]}; i++)); do
#     mkdir -p "$HOME/goinfre/${TARGET[$i]}"
#     rm -rf "$HOME/Library/${TARGET[$i]}"
#     ln -s "$HOME/goinfre/${TARGET[$i]}" "$HOME/Library/${TARGET[$i]}"
#   done
#   echo "Complete link all Cache dirs!"
#   touch "$FLAG"
# }
# if [ ! -e "$FLAG" ]; then
#   echo "$BANNER"
#   link_all_cache_dirs
# fi

export BREWDIR="$HOME/goinfre/homebrew"

rm -rf "$BREWDIR"
rm -rf "$HOME/goinfre/Applications"

mkdir -p "$HOME/goinfre/Applications"
ln -s "$HOME/goinfre/Applications" "$HOME/Applications"
git clone https://github.com/Homebrew/brew $BREWDIR

# Shellenv, Homebrew Appdir
$BREWDIR/bin/brew shellenv >> $HOME/.zshrc
echo 'export HOMEBREW_CASK_OPTS="--appdir=$HOME/goinfre/Applications"' >> $HOME/.zshrc
source $HOME/.zshrc

# Formulas
#brew install gh mas numi

# Casks

#Jetbrains Toolbox
#rm -rf "$HOME/Library/Application Support/JetBrains"
#mkdir -p "$HOME/goinfre/Library/Application Support/JetBrains"
#ln -s "$HOME/goinfre/Library/Application Support/JetBrains" "$HOME/Library/Application Support/JetBrains"
#brew install --cask jetbrains-toolbox

brew install cmake

#brew tap LouisBrunner/valgrind
#brew install --HEAD LouisBrunner/valgrind/valgrind

## Notion
#rm -rf "$HOME/Library/Application Support/Notion"
#mkdir -p "$HOME/goinfre/Library/Application Support/Notion"
#ln -s "$HOME/goinfre/Library/Application Support/Notion" "$HOME/Library/Application Support/Notion"
#brew install --cask Notion

## Tabby
#rm -rf "$HOME/Library/Application Support/tabby"
#mkdir -p "$HOME/goinfre/Library/Application Support/tabby"
#ln -s "$HOME/goinfre/Library/Application Support/tabby" "$HOME/Library/Application Support/tabby"
#brew install --cask tabby

## Chrome Canary
#rm -rf "$HOME/Library/Application Support/Google/Chrome Canary"
#mkdir -p "$HOME/goinfre/Library/Application Support/Google/Chrome Canary"
#ln -s "$HOME/goinfre/Library/Application Support/Google/Chrome Canary" "$HOME/Library/Application Support/Google/Chrome Canary"
#brew tap homebrew/cask-versions && brew install --cask google-chrome-canary

# Apps
## Toggle Track	957734279
## Daisy Disk	411643860
# mias install 411643860 957734279

# brew install ncdu
