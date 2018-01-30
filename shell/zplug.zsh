#!/bin/zsh

zplug "geometry-zsh/geometry"
GEOMETRY_COLOR_GIT_DIRTY=9
GEOMETRY_COLOR_GIT_BRANCH=6
GEOMETRY_COLOR_EXIT_VALUE=9
GEOMETRY_COLOR_DIR=242
GEOMETRY_SYMBOL_EXIT_VALUE="▲"
PROMPT_GEOMETRY_GIT_CONFLICTS=true

#zplug "bhilburn/powerlevel9k", use:"powerlevel9k.zsh-theme", as:theme
#POWERLEVEL9K_MODE='awesome-fontconfig'
#source ~/.fonts/*.sh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"

zplug "mollifier/cd-gitroot"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
