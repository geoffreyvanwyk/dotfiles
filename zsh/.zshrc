# Enter passphrase for SSH key
SSH_ASKPASS=ksshaskpass ssh-add < /dev/null

# Initialise zulu plugin manager
source "${ZULU_DIR:-"${ZDOTDIR:-$HOME}/.zulu"}/core/zulu"
zulu init

fpath=($fpath "/home/geoffrey/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
spaceship_vi_mode_enable

# Initialize Tmux prefix highlight plugin
~/.tmux/plugins/tmux-prefix-highlight/prefix_highlight.tmux
