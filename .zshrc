# Prompts

## Set left prompt
PROMPT="[%n@%B%M%b %~]$ "

## Show branch name in repos directories
BRANCH=""
autoload -Uz vcs_info
zstyle ':vcs_info:*:prompt:*' formats "$VCSPROMPT" "[%b]"
precmd() {
  vcs_info 'prompt'
  if [ -n vcs_info_msg_0_ ]; then
    BRANCH=${vcs_info_msg_1_}
  else
    BRANCH=""
  fi

  update_prompt
}

## Show current Vi mode
VIMODE="[i]"
function zle-keymap-select {
  VIMODE="${${KEYMAP/vicmd/[n]}/(main|viins)/[i]}"
  update_prompt
  zle reset-prompt
}
zle -N zle-keymap-select

## Update right prompt simple function
function update_prompt() {
  RPROMPT="%B${VIMODE} ${BRANCH}%b"
}


# System configurations

## Use ccache
export PATH="/usr/lib/ccache/bin/:$PATH"

## Calm down Clang and ccache
export CCACHE_CPP2=yes

## Two threads for make
export MAKEFLAGS=-j2

## Classic time format
export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

## Set editor
export EDITOR="vim"

## Set Python config
export PYTHONSTARTUP=/home/ming/.pystartup


# Editing

## Use Vi bindkeys style
bindkey -v

## Activate Ctrl+R (history search) for Vi mode
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

## Make nice things such as /u/sh + Tab == /usr/share
autoload -Uz compinit
compinit

## Correct mistakes
setopt correct_all

## Change autocorrection question
SPROMPT='zsh: Change '\''%R'\'' to '\''%r'\'' ? [Yes/No/Abort/Edit] '

## Ignore Ctrl+D for exit
setopt ignore_eof

## Do not beep when error
setopt no_beep

## Cd folders without cd
setopt auto_cd

## Report status of background jobs
setopt notify


# Zsh common configuration

## Set history file
HISTFILE=~/.zsh_history

## Set number of commands in history
HISTSIZE=1000

## Set number of commands in launch
SAVEHIST=1000

## Append history, do not overwrite it
setopt append_history

## Ignore dublicate commands
setopt hist_ignore_all_dups

## Ignore spaces
setopt hist_ignore_space

## Ignore blank lines
setopt hist_reduce_blanks

## Always import new commands from history
setopt share_history

## Write command to history after pressing Enter
setopt inc_append_history 

## Configure completion
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:descriptions' format "$fg_bold[brown] %B%d%b $reset_color"


# Shortcuts, aliases and stuff

## Set hosts completion for ping
knownhosts=('ya.ru' 'google.com' 'byfly.by')
zstyle ':completion:*:(ping):*' hosts $knownhosts

## Control daemons
function start() {
  sudo /etc/rc.d/$1 start
}

function stop() {
  sudo /etc/rc.d/$1 stop
}

function restart() {
  sudo /etc/rc.d/$1 restart
}

function status {
  if [ -f "/var/run/daemons/$1" ]
   then
     stat="\e[1;32m[RUNNING]"
   else
     stat="\e[1;31m[STOPPED]"
   fi
  printf "$stat \e[1;39m$1\e[0;0m\n"
}

## Make dir and cd to it immediately
function mkd { 
  mkdir "$1"
  cd "$1" 
} 

## View IP
myip () {
  wget -O - -q icanhazip.com
}

## Netbook SSH share
function mount_netbook {
  mkdir -p ~/netbook
  sshfs 192.168.1.$1:/home/ming -p $2 ~/netbook 
}

function unmount_netbook {
  fusermount -u ~/netbook
  rm -rf ~/netbook
}

## Paint man pages
export LESS_TERMCAP_mb=$'\033[01;31m'
export LESS_TERMCAP_md=$'\033[01;31m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_so=$'\033[01;44;33m'
export LESS_TERMCAP_ue=$'\033[0m'
export LESS_TERMCAP_us=$'\033[01;32m'

## Code formatter (use as astyle < source > destination)
alias astyle='astyle --style=1tbs --indent=spaces=2 --indent-switches --indent-col1-comments --pad-oper --pad-header --break-closing-brackets --add-brackets --convert-tabs --align-pointer=name'

## Color output for some tools
alias ls='ls --color=auto'
alias grep='grep --color=auto'

## Aliases
alias p='pacman-color'
alias y='yaourt'
alias pacrns='sudo pacman-color -Rns'
alias yas='yaourt -S'
alias yass='yaourt -Ss'
alias yasyu='yaourt -Syu --aur'
alias xres='xrdb -merge ~/.Xresources'
alias reboot='sudo shutdown -r now'
alias shut='sudo shutdown -h now'

## Specific aliases
if [[ $HOST = "desktop" ]]
  then 
    alias captst='captstatusui -P LBP3010'
    alias mntnet='mount_netbook'
    alias umntnet='unmount_netbook'
    alias istat='vnstat -i eth0 -m'
  else if [[ $HOST = "netbook" ]]
    alias istat='vnstat -i wlan0 -m'
    # Make screen on the right
    alias makerscr='xrandr --verbose --output VGA1 --auto --right-of LVDS1'
    # Make double screen
    alias makedscr='xrandr --output VGA1 --auto --output LVDS1 --mode 1024x600'
    # Disable screen on VGA
    alias disscr='xrandr --output VGA1 --off'
fi
