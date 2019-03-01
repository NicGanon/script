# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=$HOME/repos/golang
export GOROOT=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$HOME/go/bin:$GOPATH/bin
export PATH=$PATH:$HOME/thrift

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:$HOME/Documents/fun

alias idl="cd ~/repos/idl"
alias sc="~/repos/sync.sh"
alias pullsync="~/pull_sync.sh"
alias pushsync="~/push_sync.sh"


#alias ckinit="~/kinit.sh"
#todo figure out whats mean of richgo
#alias go=richgo
#source ~/repos/toutiao/runtime/init.sh
export region=cn
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
