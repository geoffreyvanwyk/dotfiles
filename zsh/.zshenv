#------------------------------------------------------------------------------
# Environment Variables
#------------------------------------------------------------------------------

#---Execution Path-------------------------------------------------------------

if [[ ":$PATH:" != *":${HOME}/.composer/vendor/bin:"* ]]; then
    export PATH=$HOME/.composer/vendor/bin:$PATH
fi

if [[ ":$PATH:" != *":${HOME}/.npm-global/bin:"* ]]; then
    export PATH=$HOME/.npm-global/bin:$PATH
fi

if [[ ":$PATH:" != *":${HOME}/bin:"* ]]; then
    export PATH=$HOME/bin:$PATH
fi

#---Cryptography---------------------------------------------------------------

export GPGKEY=127ED2EB

#---GitLab---------------------------------------------------------------------

export GITLAB_API_ENDPOINT=https://gitlab.com/api/v3
export GITLAB_API_PRIVATE_TOKEN=eykmYXxy4JpNd68u9z3k
