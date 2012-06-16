export ZSH_HOME="${HOME}/.zsh/"

foreach file in ${ZSH_HOME}/*.zsh; do
  source $file
done
