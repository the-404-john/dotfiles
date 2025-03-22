# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not installed
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
# zinit light zsh-users/zsh-autosuggestions
# zinit light Aloxaf/fzf-tab

# Load auto-completions
autoload -Uz compinit && compinit

# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~"   delete-char
bindkey "^B"      beginning-of-line

# tab + space
# bindkey "  " autosuggest-accept

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Auto-completion styling
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
# zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
# zstyle ":completion:*" menu no

export login="" # Fill your login

# Aliases
alias ls="ls --group-directories-first --color=auto"
alias grep="grep --color=auto"
alias ll="ls --group-directories-first -lh"
alias gs="git status"
alias aisa="ssh ${login}@aisa.fi.muni.cz"
alias vim="nvim"

scpaisa() {
    local dest="$2"
    [[ $dest != */ ]] && dest="$dest/"
    scp -r "${xlogin}@aisa.fi.muni.cz:/home/${xlogin}/$1" "$dest"
}

PROMPT='[%n@%m %B%F{blue}%1~%f%b]$ '
