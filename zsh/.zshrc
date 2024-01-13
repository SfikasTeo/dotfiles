# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

bindkey -v

######################## oh-my-zsh ########################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export ZSH_CUSTOM="$ZSH/custom"

# ZSH Theming
ZSH_THEME="refined"

# ZSH Updating protocol
zstyle ':omz:update' mode reminder # Remind 
zstyle ':omz:update' frequency 14 # Two Weeks

# Uncomment the following line if you want to change the command execution time
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	# zsh-autosuggestions # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	# zsh-syntax-highlighting # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	# git 
)

source $ZSH/oh-my-zsh.sh

######################## User Config ########################

# Exported Environmental Variables:
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='hx'
fi

alias egrep='grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias ls='ls -G'
alias la='ls -lah'
alias ll='ls -lh'
alias md='mkdir -p'
alias rd=rmdir
alias sst="sudo systemctl"

####################### User Functions #######################

# Helix Search
hxs() {
	RG_PREFIX="rg -i --files-with-matches"
	local files
	files="$(
		FZF_DEFAULT_COMMAND_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			sk --multi 3 --print0 --sort --preview="[[ ! -z {} ]] && rg --pretty --ignore-case --context 5 {q} {}" \
				--phony -i -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap" \
				--bind 'ctrl-a:select-all'
	)"
	[[ "$files" ]] && hx --vsplit $(echo $files | tr \\0 " ")
}
