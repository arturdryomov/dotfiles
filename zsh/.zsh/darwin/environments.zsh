# Homebrew

export BREW_HOME="$(brew --prefix)"
export PATH="${BREW_HOME}/bin:${BREW_HOME}/sbin:${PATH}"

# Homebrew Cask

export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"

# Android SDK

export ANDROID_HOME="/usr/local/opt/android-sdk/"

# Maven

export MAVEN_HOME="/usr/local/opt/maven/"

# Python environments

if [[ -f "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  export WORKON_HOME="${HOME}/.python_virtualenvs"

  source "/usr/local/bin/virtualenvwrapper_lazy.sh"
fi

# Ruby environments

if type "rbenv" > /dev/null; then
  eval "$(rbenv init - --no-rehash zsh)"
fi
