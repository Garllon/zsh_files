# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=vim

# aliases
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'
alias gitkraken="open -na 'GitKraken' --args -p $(pwd)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

alias login_to_aws='$HOME/code/garllon/zsh_files/login_to_aws.sh'
