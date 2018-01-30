#!/bin/zsh

zplug "geometry-zsh/geometry"
# ls colors
 export CLICOLOR=1
 export LSCOLORS="ExFxCxDxBxegedabagaca#d"

 # Enable prompt themes
 setopt PROMPT_SUBST

 autoload -U colors && colors
 autoload -U promptinit
 autoload -Uz compinit && compinit

 # Use base16
 #BASE16_SCHEME="tomorrow-night"
 BASE16_SCHEME="default-dark"
 BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-$BASE16_SCHEME.sh"
 [[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

 # Customize geometry
 GEOMETRY_COLOR_GIT_DIRTY=9
 GEOMETRY_COLOR_GIT_BRANCH=6
 GEOMETRY_COLOR_EXIT_VALUE=9
 GEOMETRY_COLOR_DIR=242
 GEOMETRY_SYMBOL_EXIT_VALUE="▲"
 PROMPT_GEOMETRY_GIT_CONFLICTS=true

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
