ZSH_HOME="${HOME}/.zsh"

function source_configs() {
  foreach CONFIG_PATH in ${ZSH_HOME}/${1}/*.zsh; do
    source "${CONFIG_PATH}"
  done
}

case "$(uname)" in
  "Darwin")
    source_configs "darwin"
    source_configs "unix"
    ;;
  "Linux")
    source_configs "linux"
    source_configs "unix"
    ;;
esac
