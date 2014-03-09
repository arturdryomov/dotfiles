# Common

## Package management

alias p="pacman-color"
alias y="yaourt"

alias pkg-install="yaourt -S"
alias pkg-uninstall="yaourt -Rns"

alias pkg-search="yaourt -Ss"
alias pkg-update="yaourt -Sy"
alias pkg-upgrade="yaourt -Syu --aur"

## System

alias off="systemctl poweroff"
alias reboot="systemctl reboot"
alias hide="systemctl suspend"

## Other

alias translate="sdcv"


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
