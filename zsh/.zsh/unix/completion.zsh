# Separate completion commands to groups with names-tags
zstyle ":completion:*" group-name ""

# Activate selecting command
zstyle ":completion:*" menu select=long-list select=0

# Pretty completion with command groups
zstyle ":completion:*:descriptions" format "$fg_bold[brown] %B%d%b $reset_color"

# Case insensitive completion for lowercase
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"
