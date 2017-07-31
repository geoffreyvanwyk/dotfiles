#------------------------------------------------------------------------------ 
#---# Environment Variables

#------## General

# Default text editor.
# In Bash/Zsh, it can be started with <C-X><C-E>.
export EDITOR="gvim"

#------## Colored Man Pages

# In order for the colored-man-pages plugin to work, this variable has to be set
# to 1. It is used by the grotty program. See `man grotty`.
export GROFF_NO_SGR=1

#------## Cryptography

export GPGKEY=127ED2EB

#------## Execution Path

#---------### General

if [[ ":$PATH:" != *":${HOME}/bin:"* ]]; then
    export PATH=$HOME/bin:$PATH
fi

#---------### PHP Package Manager: Composer
if [[ ":$PATH:" != *":${HOME}/.config/composer/vendor/bin:"* ]]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

#---------### Node.js 

#------------#### Package Manager: NPM
if [[ ":$PATH:" != *":${HOME}/.npm_global/bin:"* ]]; then
    export PATH=$HOME/.npm_global/bin:$PATH
fi

#------------#### Version Manager: N
if [[ ":$PATH:" != *":${HOME}/.n/bin:"* ]]; then
    export PATH=$HOME/.n/bin:$PATH
fi

export N_PREFIX=$HOME/.n

#------## Python

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV=$WORKON_HOME

#------## Prompt

export POWERLEVEL9K_INSTALLATION_PATH=$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-bhilburn-SLASH-powerlevel9k.git

