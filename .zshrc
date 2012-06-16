export ZSH_HOME="${HOME}/.zsh"

fish_plugin_config="${ZSH_HOME}/color-fish-like-style.zsh"


foreach file in ${ZSH_HOME}/*.zsh; do
  if [[ ${fish_plugin_config} != ${file} ]]; then
    source $file
  fi
done

# Fish plugin must be loaded after all configuration to properly support
#   aliases highlighting
source ${fish_plugin_config}

# Force change current directory
cd ${HOME}
