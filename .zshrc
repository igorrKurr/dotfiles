#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias bi='bundle install'
alias be='bundle exec'
alias ni='npm install'
alias boi='bower install'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias es='ember server'
alias esl='ember server --proxy http://localhost:3000'
alias ga='git add --all'
alias nrs='npm run --silent'
alias dm='docker-machine'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcr='docker-compose run'

function zxc {
   $(npm bin)/$@
}

export INSTANT_CLIENT_LIB_PATH=$ORACLE_HOME/lib
export INSTANT_CLIENT_INCLUDE_PATH=$ORACLE_HOME/sdk/include
export ERL_INTERFACE_DIR=/usr/local/lib/erlang/lib/erl_interface-3.8.1
export OCI_INCLUDE_DIR=/usr/local/Oracle/product/instantclient/11.2.0.4.0/sdk/include
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/.flutter-package/bin"

alias k=kubectl
# Drop into an interactive terminal on a container
alias keti='kubectl exec -ti'

# OPAM configuration
. /Users/igor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
