# File path
HISTFILE="${HOME}/.zsh_history"

# Size at RAM
HISTSIZE=10000

# Size at file
HISTFILESIZE=10000

# Append the file instead of replacing it
setopt APPEND_HISTORY

# Append the file ASAP
setopt INC_APPEND_HISTORY

# Avoid duplicates during navigation and search
setopt HIST_FIND_NO_DUPS

# Avoid writing duplicates to the file
setopt HIST_IGNORE_ALL_DUPS

# Avoid writing spaces to the file
setopt HIST_IGNORE_SPACE

# Avoid writing blanks to the file
setopt HIST_REDUCE_BLANKS

# Pick commands from the file ASAP
setopt SHARE_HISTORY
