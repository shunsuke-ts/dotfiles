#!/bin/zsh

zplug "bhilburn/powerlevel9k", use:"powerlevel9k.zsh-theme", as:theme
POWERLEVEL9K_MODE='awesome-fontconfig'
source ~/.fonts/*.sh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
