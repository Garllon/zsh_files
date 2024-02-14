# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=vim
export PATH=$PATH:$HOME/code/kaeuferportal/command_line_tools_kp/bin
source $HOME/code/garllon/zsh_files/env_variables

# aliases
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'
alias deploy='$HOME/code/kaeuferportal/deployment/deploy_app.sh deploy'
alias connect='$HOME/code/kaeuferportal/deployment/deploy_app.sh connect'
alias gitkraken="open -na 'GitKraken' --args -p $(pwd)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
