#------------------------------------------------------------------------------
#---# Antibody - ZSH Plug-In Manager {{{1

source ~/.zsh_plugins.sh

#------------------------------------------------------------------------------
#---# Aliases {{{1

alias ls="ls --color=auto"

#------------------------------------------------------------------------------
#---# Prompt {{{1

# Set Spaceship ZSH as a prompt
fpath=($fpath "/home/geoffrey/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship
spaceship_vi_mode_enable

#------------------------------------------------------------------------------
#---# JavaScript {{{1

#------## FNM - Fast Node.js Version Manager

eval "`fnm env --multi`"
