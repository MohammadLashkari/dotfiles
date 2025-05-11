# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

# Keybindings
bindkey -v '^?' backward-delete-char
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey -s '^f' ' tmux-sessionizer\n'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt GLOB_DOTS

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Aliases
alias ls='ls --color'
alias grep='grep --color'
alias vim='nvim'
alias k='kubectl'

# ENV
EDITOR=/usr/bin/nvim
PATH=$PATH:$HOME/.local/bin
GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/usr/local/go/bin
export MANPAGER='nvim +Man!'
# FZF
export FZF_DEFAULT_OPTS='--reverse'
source <(fzf --zsh)
# STARSHIP
eval "$(starship init zsh)"
