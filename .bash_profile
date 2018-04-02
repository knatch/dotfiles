export BASH_CONF="bash_profile"

# Set up for NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set PATH environment variable for Yarn
export PATH="$PATH:$HOME/.yarn/bin"

export CLICOLOR=1

# Source aliases
source ~/.aliases

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[01;34m\]\@: \[\033[01;36m\]\w \[\e[0m\]\$(parse_git_branch) >\[\e[0m\]"
