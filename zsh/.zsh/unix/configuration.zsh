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

# Ignore Ctrl + D for exit
setopt ignore_eof

# Do not beep when error
setopt no_beep

# Cd folders without cd
setopt auto_cd

# Wait 10 seconts to perform rm with star
setopt rm_star_wait

# Show long-running command time after 5 minutes
REPORTTIME=300
