# Prompts

## Set left prompt
PROMPT="%B[%~] → %b"

## Set right prompt

precmd() {
  set_right_prompt
}

function set_right_prompt() {
  git_branch_name=$(git_branch)

  if [ -z ${git_branch_name} ]; then
    export RPROMPT=""
  else
    export RPROMPT="%B[± ${git_branch_name}]%b"
  fi
}

function git_branch() {
  vcs_info

  echo ${vcs_info_msg_0_}
}

### Set up Zsh VCS module

autoload -Uz vcs_info

#### Allow only Git information
zstyle ":vcs_info:*" enable git

#### Print VCS information only as branch
zstyle ":vcs_info:*" formats "%b"


# System configurations

## Classic time format
export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

## Set editor
export EDITOR="vim"

## Set Python config
export PYTHONSTARTUP=/home/ming/.pystartup


# Editing

## Do not delete whole line with ^U
bindkey \^U backward-kill-line

## Make nice things such as /u/sh + Tab == /usr/share
autoload -Uz compinit
compinit

## Correct mistakes
setopt correct_all

## Change autocorrection question
SPROMPT="Change “%R” to “%r”? [Yes / No / Abort / Edit]: "

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
HISTSIZE=10000

## Set number of commands in launch
SAVEHIST=10000

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


# Zsh Fish-line syntax highlighting

## Include plugin

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Hignlight brackets 
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

## Do not underline pathes
ZSH_HIGHLIGHT_STYLES[path]=none

## Yellow patterns
ZSH_HIGHLIGHT_STYLES[globbing]="fg=yellow"


# Shortcuts, aliases and stuff

## Set hosts completion for ping
knownhosts=("ya.ru" "google.com" "byfly.by")
zstyle ":completion:*:(ping):*" hosts $knownhosts

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
  mkdir -p "$1"
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
alias astyle="astyle --style=1tbs --indent=spaces=2 --indent-switches 
  --indent-col1-comments --pad-oper --pad-header --break-closing-brackets 
  --add-brackets --convert-tabs --align-pointer=name"

## Color output for some tools
alias ls="ls --color=auto"
alias grep="grep --color=auto"

## Color Maven output
color_maven() {
  local BOLD=`tput bold`
  local TEXT_RED=`tput setaf 1`
  local TEXT_GREEN=`tput setaf 2`
  local TEXT_YELLOW=`tput setaf 3`
  local RESET_FORMATTING=`tput sgr0`

  /usr/bin/mvn $@ | sed -e "s/\(\[INFO\]\ \-\-\-\ .*\)/${TEXT_BLUE}\1${RESET_FORMATTING}/g" \
    -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}\1${RESET_FORMATTING}/g" \
    -e "s/\(\[INFO\]\ \)\(BUILD SUCCESS\)/\1${TEXT_GREEN}\2${RESET_FORMATTING}/g" \
    -e "s/\(\[INFO\]\ \)\(BUILD FAILURE\)/\1${TEXT_RED}\2${RESET_FORMATTING}/g" \
    -e "s/\(\[WARNING\].*\)/${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
    -e "s/\(\[ERROR\]\)/${TEXT_RED}\1${RESET_FORMATTING}/g" \
    -e "s/\(Exception in thread \".*\" \)\(.*\)/\1${TEXT_RED}\2${RESET_FORMATTING}/g" \
    -e "s/\(SUCCESS \)\[/${RESET_FORMATTING}${TEXT_GREEN}\1${RESET_FORMATTING}\[/g" \
    -e "s/\(FAILURE \)\[/${RESET_FORMATTING}${TEXT_RED}\1${RESET_FORMATTING}\[/g" \
    -e "s/\(Caused by: \)\([^:\t ]*\)/\1${TEXT_RED}\2${RESET_FORMATTING}/g" \
    -e "s/\(ERROR\ \[.*\)/${TEXT_RED}\1${RESET_FORMATTING}/g" \
    -e "s/Tests run: \([^,]*\), Failures: \([^,0]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${TEXT_YELLOW}\4${RESET_FORMATTING}/g"

  echo -ne ${RESET_FORMATTING}
}

## Aliases
alias p="pacman-color"
alias y="yaourt"
alias remove="sudo pacman-color -Rns"
alias get="yaourt -S"
alias search="yaourt -Ss"
alias update="yaourt -Syu --aur"
alias xres="xrdb -merge ~/.Xresources"
alias reboot="sudo shutdown -r now"
alias off="sudo shutdown -h now"
alias mvn=color_maven
alias maven=/usr/bin/mvn
alias translate=sdcv
alias alsar="sudo alsactl -f /var/lib/alsa/asound.state store"

## Specific aliases
if [[ $HOST = "desktop" ]]
  then 
    alias mntnet="mount_netbook"
    alias umntnet="unmount_netbook"
    alias traffic="vnstat -i eth0 -m"
    alias speed="slurm -i eth0"
  else if [[ $HOST = "netbook" ]]
    alias traffic="vnstat -i wlan0 -m"
    alias speed="slurm -i wlan0"
    # Make screen on the right
    alias makerscr="xrandr --verbose --output VGA1 --auto --right-of LVDS1"
    # Make double screen
    alias makedscr="xrandr --output VGA1 --auto --output LVDS1 --mode 1024x600"
    # Disable screen on VGA
    alias disscr="xrandr --output VGA1 --off"
fi
