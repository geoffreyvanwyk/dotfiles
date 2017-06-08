#------------------------------------------------------------------------------
# Environment Variables
#------------------------------------------------------------------------------

#---Execution Path-------------------------------------------------------------


# PHP Package Manager: Composer
if [[ ":$PATH:" != *":${HOME}/.config/composer/vendor/bin:"* ]]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

# Node.js Package Manager: NPM
if [[ ":$PATH:" != *":${HOME}/.npm_global/bin:"* ]]; then
    export PATH=$HOME/.npm_global/bin:$PATH
fi

# Node.js Version Manager: N
if [[ ":$PATH:" != *":${HOME}/.n/bin:"* ]]; then
    export PATH=$HOME/.n/bin:$PATH
fi

if [[ ":$PATH:" != *":${HOME}/bin:"* ]]; then
    export PATH=$HOME/bin:$PATH
fi

#---Node.js Version Manager----------------------------------------------------

export N_PREFIX=$HOME/.n

#---Cryptography---------------------------------------------------------------

export GPGKEY=127ED2EB

#---GitLab---------------------------------------------------------------------

export GITLAB_API_ENDPOINT=https://gitlab.com/api/v3
export GITLAB_API_PRIVATE_TOKEN=eykmYXxy4JpNd68u9z3k

#---Colored Man Pages------------------------------------------------------------

# In order for the colored-man-pages plugin to work, this variable has to be set
# to 1. It is used by the grotty program. See `man grotty`.
export GROFF_NO_SGR=1
