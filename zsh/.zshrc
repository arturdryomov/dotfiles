function source_configs() {
  local configs_path="${HOME}/.zsh/${1}"

  for config_path in "${configs_path}"/*.zsh(N); do
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
