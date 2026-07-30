HISTFILE="${XDG_DATA_HOME}/zsh/history"

# Size at RAM
HISTSIZE=10000

# Size at file
SAVEHIST=10000

# Avoid duplicates during navigation and search
setopt HIST_FIND_NO_DUPS

# Avoid writing duplicates to the file
setopt HIST_IGNORE_DUPS

# Avoid writing spaces to the file
setopt HIST_IGNORE_SPACE

# Avoid writing blanks to the file
setopt HIST_REDUCE_BLANKS

# Read and write commands ASAP
setopt SHARE_HISTORY
