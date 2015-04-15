# Common

## Package management

alias p="pacman"
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

alias open="xdg-open"

alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
