######################## Path ########################

PATH="/$HOME/.local/bin:$PATH"

# Add Homebrew (if you are on macOS)
if [[ "$(uname -s)" == "Darwin" ]]; then
    PATH="/opt/homebrew/bin:$PATH"
    PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

# Add Nix to the PATH (if it's installed)
if [[ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]]; then
    . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# Add Emacs to the PATH (if it's installed)
if [[ -e "$HOME/.emacs.d/bin" ]]; then
    PATH="$HOME/.emacs.d/bin":$PATH
fi

# Add .cargo/bin to the PATH (if it's installed)
if [[ -e "$HOME/.cargo/bin" ]]; then
    PATH="$HOME/.cargo/bin":$PATH
fi

export PATH

######################## OMZsh ########################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMP="yyyy-mm-dd"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#bbc3d4'

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

source $ZSH/oh-my-zsh.sh

######################## Config ########################

# ZSH configuration
bindkey -e
export LANG=en_US.UTF-8
unsetopt correct_all

# Basic aliases
alias nv=nvim
alias egrep='grep -E --color=auto --exclude-dir={.git}'
alias fgrep='grep -F --color=auto --exclude-dir={git}'
alias grep='grep --color=auto --exclude-dir={.git}'
alias cdr='cd $(git rev-parse --show-toplevel)'
alias sc='sudo systemctl'
alias jc='sudo journalctl'
alias md='mkdir -p'
alias rd=rmdir

# lsd
if [[ -x "$(command -v lsd)" ]]; then
    alias ls='lsd -a'
    alias la='lsd -la'
    alias lt='lsd --tree'
fi

# fzf -- dependancy: ripgrep, fd-find
if [[ -x "$(command -v fzf)" ]]; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore --glob "!.git/*"'
    export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd --type d"
    export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap"
    source <(fzf --zsh)
fi

# startship
if [[ -x "$(command -v starship)" ]]; then
    eval "$(starship init zsh)"
fi

# direnv
if [[ -x "$(command -v direnv)" ]]; then
    eval "$(direnv hook zsh)"
fi

# source worldcoin dev env:
source $HOME/.wldrc

