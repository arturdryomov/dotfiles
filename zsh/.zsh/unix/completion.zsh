autoload -Uz compinit

compinit -d "${XDG_CACHE_HOME}/zsh/compdump"

zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/compcache"

# Navigate options as menu ASAP
zstyle ":completion:*" menu select

# Present options as groups
zstyle ":completion:*" group-name ""

# Present options as groups with descriptions
zstyle ":completion:*:descriptions" format "%B%d%b"
