# Common

## Packages

alias p="pacman"
alias y="yaourt"

alias pkg-install="yaourt --sync"
alias pkg-uninstall="yaourt --remove --recursive --nosave"
alias pkg-search="yaourt --search --sync"
alias pkg-upgrade="yaourt --sysupgrade --sync --refresh --aur"

## System

alias off="systemctl poweroff"
alias reboot="systemctl reboot"
alias hide="systemctl suspend"

## Integrations

alias open="xdg-open"

alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
