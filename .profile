# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

############## Aliases ##################
alias grep='grep --color'
alias ls='ls -lh'
alias pgrep='ps -ef | grep'

alias ip='ifconfig | grep "inet 10" | cut -f 2 -d " "'

# Goodreads
export GOODREADS_RAILS_ROOT=~/goodreads/goodreads_rails/rails-root
source $GOODREADS_RAILS_ROOT/script/platform/aliases.sh

alias gr='cd $GOODREADS_RAILS_ROOT && export SUPPRESS_LOG_NOISE=1'
export GOODREADS_DEV_EMAIL=`whoami`@goodreads.com
alias ss='./script/server'
alias rake='bundle exec rake'
alias spring='bundle exec spring'
alias post-review='post-review -o --target-groups=goodreads-ux-overhaul --target-people=clinew,itsachen,dbrewste,elaichen'

if [[ -d "$HOME/.rbenv" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

