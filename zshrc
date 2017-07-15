# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$PATH:$HOME/code/kaeuferportal/command_line_tools_kp/bin

if [ -f ~/.docker/config.json ] ; then
    read email token <<< $(ruby -e "require 'json'; require 'base64'; string = File.read(ENV['HOME'] + '/.docker/config.json'); hash = JSON.parse(string); credentials = hash['auths']['registry.codevault.io']['auth']; email, token = Base64.decode64(credentials).split(':'); puts email + ' ' + token")

    export DOCKER_LOGIN=$email
    export GITLAB_ACCESS_TOKEN=$token
else
    echo 'DOCKER_LOGIN and GITLAB_ACCESS_TOKEN could not be automatically set. Are you logged in to registry.codevault.io via Docker?'
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR=vim

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'
alias deploy='$HOME/code/kaeuferportal/deployment/deploy_app.sh deploy'
alias connect='$HOME/code/kaeuferportal/deployment/deploy_app.sh connect'
