# Common

## Package management

alias p="pacman-color"
alias y="yaourt"

alias get="yaourt -S"
alias remove="sudo pacman-color -Rns"
alias search="yaourt -Ss"
alias update="yaourt -Syu --aur"

## System

alias off="sudo shutdown -h now"
alias reboot="sudo shutdown -r now"

### Restore ALSA config after kernel upgrade (I hate Linux for such things)
alias alsa-restore="sudo alsactl -f /var/lib/alsa/asound.state store"

## Other

alias translate="sdcv"

### Color output

alias ls="ls --color=auto"
alias grep="grep --color=auto"


# Specific for hosts

if [ ${HOST} = "desktop" ]; then
  alias traffic="vnstat -i eth0 -m"
  alias speed="slurm -i eth0"
fi

if [ ${HOST} = "netbook" ]; then
  alias traffic="vnstat -i wlan0 -m"
  alias speed="slurm -i wlan0"
fi
