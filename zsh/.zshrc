#------------------------------------------------------------------------------ 
#---# Aliases {{{1

alias artisan=./artisan
alias mux=tmuxinator

alias phinx='./vendor/bin/phinx'
alias phinxs='./vendor/bin/phinx status -e development'
alias phinxm='./vendor/bin/phinx migrate -e development'
alias phinxr='./vendor/bin/phinx rollback -e development'

alias xdebug-on='sudo phpenmod -s cli xdebug'
alias xdebug-off='sudo phpdismod -s cli xdebug'

#------------------------------------------------------------------------------ 
#---# Antigen {{{1

source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle tmux

# Bundles from ZSH Users Organisation on GitHub
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k 

# Tell antigen that you're done.
antigen apply

#------------------------------------------------------------------------------ 
#---# Tmuxinator {{{1

# Completions
source $HOME/bin/tmuxinator.zsh

#------------------------------------------------------------------------------ 
#---# Tilix Terminal Emulator {{{1

# The reason for this is explained here: 
# https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

#------------------------------------------------------------------------------ 
#---# Python {{{1

source /home/systemovich/.local/bin/virtualenvwrapper.sh

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

#------------------------------------------------------------------------------ 
#---# Fonts {{{1

# Enable awesome terminal fonts
source $HOME/.fonts/*.sh

