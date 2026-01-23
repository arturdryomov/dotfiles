autoload -Uz compinit; compinit

# Navigate options as menu ASAP
zstyle ":completion:*" menu select

# Present options as groups
zstyle ":completion:*" group-name ""

# Present options as groups with descriptions
zstyle ":completion:*:descriptions" format "%B%d%b"
