# Force enable emacs-style navigation

bindkey -e

# Do not delete whole line with ^U
bindkey \^U backward-kill-line

# Make nice things such as /u/sh + Tab == /usr/share
autoload -Uz compinit
compinit

# Correct mistakes
setopt correct_all

# Change autocorrection question
SPROMPT="Change “%R” to “%r”? [Yes / No / Abort / Edit]: "

# Ignore Ctrl+D for exit
setopt ignore_eof

# Do not beep when error
setopt no_beep

# Cd folders without cd
setopt auto_cd

# History file
HISTFILE=~/.zsh_history

# Number of commands in history
HISTSIZE=10000

# Number of commands in launch
SAVEHIST=10000

# Append history, do not overwrite it
setopt append_history

# Ignore duplicate commands
setopt hist_ignore_all_dups

# Ignore spaces
setopt hist_ignore_space

# Ignore blank lines
setopt hist_reduce_blanks

# Always import new commands from history
setopt share_history

# Write command to history after pressing Enter
setopt inc_append_history 
