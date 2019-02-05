# Homebrew

export BREW_HOME="$(brew --prefix)"
export PATH="${BREW_HOME}/bin:${BREW_HOME}/sbin:${PATH}"

# Homebrew Cask

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Android SDK

export ANDROID_HOME="${BREW_HOME}/share/android-sdk/"

# Maven

export MAVEN_HOME="${BREW_HOME}/opt/maven/"

# Python environments

if [[ -f "${BREW_HOME}/bin/virtualenvwrapper.sh" ]]; then
  export WORKON_HOME="${HOME}/.python_virtualenvs"

  source "${BREW_HOME}/bin/virtualenvwrapper_lazy.sh"
fi

# Ruby environments

if type "rbenv" > /dev/null; then
  eval "$(rbenv init - --no-rehash zsh)"
fi
