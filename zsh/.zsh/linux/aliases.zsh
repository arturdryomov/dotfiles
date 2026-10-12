alias open="xdg-open"

case "${XDG_SESSION_TYPE}" in
  wayland)
    alias pbcopy="wl-copy"
    alias pbpaste="wl-paste --no-newline"
    ;;
  x11)
    alias pbcopy="xsel --clipboard --input"
    alias pbpaste="xsel --clipboard --output"
    ;;
esac
