#------------------------------------------------------------------------------
#---# Environment Variables {{{1

#------## General {{{2

# Default text editor.
# In Bash/Zsh, it can be started with <C-X><C-E>.
export EDITOR="gvim"

# Used by powerlevel9k prompt to determine whether to include the context
# segment.
export DEFAULT_USER=systemovich

export TERM=xterm-256color

export DISABLE_AUTO_TITLE=true

#------## Colored Man Pages {{{2

# In order for the colored-man-pages plugin to work, this variable has to be
# set to 1. It is used by the grotty program. See `man grotty`.
export GROFF_NO_SGR=1

#------## Cryptography {{{2

export GPGKEY=127ED2EB

#------## Execution Path {{{2

#---------### General {{{3

if [[ ":$PATH:" != *":${HOME}/bin:"* ]]; then
    export PATH=$HOME/bin:$PATH
fi

if [[ ":$PATH:" != *":/snap/bin:"* ]]; then
    export PATH=/snap/bin:$PATH
fi

#---------### PHP Package Manager: Composer {{{3
if [[ ":$PATH:" != *":${HOME}/.composer/vendor/bin:"* ]]; then
    export PATH=$HOME/.composer/vendor/bin:$PATH
fi

#---------### Node.js  {{{3

#------------#### Package Manager: NPM {{{4
if [[ ":$PATH:" != *":${HOME}/.npm_global/bin:"* ]]; then
    export PATH=$HOME/.npm_global/bin:$PATH
fi

#------------#### Version Manager: N {{{4
if [[ ":$PATH:" != *":${HOME}/.n/bin:"* ]]; then
    export PATH=$HOME/.n/bin:$PATH
fi

export N_PREFIX=$HOME/.n

#------## Python {{{2

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV=$WORKON_HOME

#------## Prompt {{{2

export POWERLEVEL9K_INSTALLATION_PATH=$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-bhilburn-SLASH-powerlevel9k.git
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh root_indicator context dir dir_writable virtualenv vcs)
export POWERLEVEL9K_MODE='awesome-fontconfig'
export POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=$'\u2570'$'\u2500'$'\u2B24'"  "
export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

