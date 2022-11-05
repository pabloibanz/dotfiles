# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/pablo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
export TERM="rxvt-unicode-256color"
# Set name of the theme to load.
 ZSH_THEME="af-magic"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd textmate)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

export TERM='kitty'
# update system
alias U='sudo  apt update'
alias UG='sudo apt upgrade'
alias apagar='sudo shutdown -h now'
alias I='sudo aptitude -v install'
alias v='nvim'
alias archclean='sudo pacman -Rs $(pacman -Qtdq)'
alias v-conf='nvim ~/.config/nvim/init.vim'
alias e='emacs -nw'
alias vscodium='codium --no-sandbox'
alias codium='codium --no-sandbox'
#multimedia
alias yt='yt-dlp'
alias ytf='ytfzf'
#mount samba#
alias mount-samba="sudo mount -t cifs -o username=transuser //192.168.1.6/raspi /media/samba-torrent/"           
#connect samba#
alias smb="smbclient //192.168.1.6/raspi/ -U transuser"  
#Super-programs
alias df="duf"
alias cat="bat"
alias du="dust"
alias ls="lsd"
#Directory Shortcuts:
alias gh="cd ~ && ls -a"
alias gdo="cd ~/Documents && ls -a"
alias gdw="cd ~/Downloads && ls -a"
alias gw="cd ~/Work && ls -a"
alias gp="cd ~/Pictures && ls -a"
alias gv="cd ~/Videos && ls -a"
alias gm="cd ~/Music && ls -a"
alias gb="cd ~/Books && ls -a"
alias gq="cd ~/qemu-img && ls -a"
alias gi="cd ~/iso && ls -a"
alias gt='cd /media/samba-torrent/qbittorrent/download/ && ls -a'
alias gbi='cd /media/disc1T-torrent/'
alias ge='cd /media/samba-torrent/samba-server/lrn/'
#SSH_CONNECTION
alias pideb="ssh -l pablo 192.168.1.6"
alias piarch='ssh -l  pablo 192.168.1.5'
#SAMBA
alias smb='smbclient -U qbtuser //192.168.1.6/raspi'
#vim mode
#set -o vi
#programs
#alias python="python3"
#colors for wal script
# Import colorscheme from 'wal' asynchronously
# # &   # Run the process in the background.
# # (  ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)
#
# # Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences
#
# # To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh
#
#
# Convert mp3 to wav for burn cd-disc
	mp3towav()
	{
		for file in ./*.mp3; do ffmpeg -i "${file}" -acodec pcm_s16le -ar 44100  "${file%.*}.wav"; done; 
	}
