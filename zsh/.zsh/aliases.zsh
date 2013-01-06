# Common

## Package management

alias p="pacman-color"
alias y="yaourt"

alias get="yaourt -S"
alias remove="sudo pacman-color -Rns"
alias search="yaourt -Ss"
alias update="yaourt -Syu --aur"

## System

alias off="systemctl poweroff"
alias reboot="systemctl reboot"
alias hide="systemctl suspend"

## Other

alias translate="sdcv"

### Force tmux to use 256 colors
alias tmux="tmux -2"

### Color output
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias tree="tree -C"


# Specific for hosts

if [ ${HOST} = "desktop" ]; then
  alias traffic="vnstat -i eth0 -m"
  alias speed="slurm -i eth0"
fi

if [ ${HOST} = "netbook" ]; then
  alias traffic="vnstat -i wlan0 -m"
  alias speed="slurm -i wlan0"

  alias wifi="wicd-curses"

  alias make-right-screen="xrandr --verbose --output VGA1 --auto --right-of LVDS1"
  alias make-double-screen="xrandr --output VGA1 --auto --output LVDS1 --mode 1024x600"
  alias remove-external-screen="xrandr --output VGA1 --off"
fi
