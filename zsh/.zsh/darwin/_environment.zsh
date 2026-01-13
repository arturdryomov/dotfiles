# Homebrew

/opt/homebrew/bin/brew shellenv

export BREW_HOME="$(brew --prefix)"
export PATH="${BREW_HOME}/bin:${BREW_HOME}/sbin:${PATH}"
