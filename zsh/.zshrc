function source_configs() {
  local config_path

  for config_path in "${ZDOTDIR}/.zsh/${1}"/*.zsh(N); do
    source "${config_path}"
  done
}

case "${OSTYPE}" in
  darwin*)
    source_configs "darwin"
    source_configs "unix"
    ;;
  linux*)
    source_configs "linux"
    source_configs "unix"
    ;;
esac

unfunction source_configs
