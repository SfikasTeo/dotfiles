# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

######################## oh-my-zsh ########################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

# ZSH Theming
ZSH_THEME="refined"

# ZSH Updating protocol
zstyle ':omz:update' mode reminder # Remind 
zstyle ':omz:update' frequency 14 # Two Weeks

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	git 
	zsh-autosuggestions # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	zsh-syntax-highlighting # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	ssh-agent # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  copyfile # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile
)

source $ZSH/oh-my-zsh.sh

######################## User Config ########################

# Exported Environmental Variables:
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias lla="la"


