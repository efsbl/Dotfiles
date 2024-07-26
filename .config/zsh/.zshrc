#!/bin/sh
# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

if [ "$TMUX" = "" ]; then tmux; fi

export EDITOR="nvim"

HISTSIZE=10000 
SAVEHIST=10000
HISTFILE="$ZDOTDIR/.zsh_history"
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups 
setopt hist_save_no_dups 
setopt hist_ignore_dups 
setopt hist_find_no_dups 

source $ZDOTDIR/aliases.zsh

bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^y' autosuggest-accept

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"
# plug "zap-zsh/zap-prompt"
# plug "romkatv/powerlevel10k"

autoload -U compinit; compinit
zstyle ':completion:*' menu select

# let's Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# bob wants this
export PATH=$HOME/.local/share/bob/nvim-bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# cargo
export PATH=$HOME/.cargo/bin:$PATH

# fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# command not found in zsh
source /etc/zsh_command_not_found

# kubectl
source <(kubectl completion zsh)

# starship
eval "$(starship init zsh)"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
