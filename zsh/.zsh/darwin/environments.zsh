# Homebrew

export BREW="/usr/local/bin:/usr/local/sbin"
export PATH="$BREW:$PATH"

# Android SDK

export ANDROID_HOME="/usr/local/opt/android-sdk/"

# Maven

export MAVEN_HOME="/usr/local/opt/maven/"

# Python environments

if [[ -f "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  export WORKON_HOME="$HOME/.python_virtualenvs"

  source "/usr/local/bin/virtualenvwrapper_lazy.sh"
fi

# Ruby environments

if type "rbenv" > /dev/null; then
  eval "$(rbenv init - --no-rehash zsh)"
fi
