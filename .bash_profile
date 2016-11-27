export BASH_CONF="bash_profile"

# Set up for NVM
source /usr/local/opt/nvm/nvm.sh

# Set PATH environment variable for Yarn
export PATH="$PATH:$HOME/.yarn/bin"

export CLICOLOR=1

# PS1="\w \[\033[01;32m\]$(parse_git_branch)\[\033[00m\] > "
# export PS1="\w  > "
alias ll='ls -la'

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[01;34m\]\@: \[\033[01;36m\]\w \[\e[0m\]\$(parse_git_branch) >\[\e[0m\]"
