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

#---------### Android Development {{{3

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

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

#---------### JavaScript  {{{3

#------------#### FNM - Fast Node.js Version Manager {{{4
if [[ ":$PATH:" != *":${HOME}/.fnm:"* ]]; then
    export PATH=$HOME/.fnm:$PATH
fi

#------## Python {{{2

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV=$WORKON_HOME
