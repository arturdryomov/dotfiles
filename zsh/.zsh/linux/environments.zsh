# Android SDK

export ANDROID_HOME="${HOME}/.android-sdk"
export PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"

# Maven

export MAVEN_HOME="/opt/maven/"

# Python environments

if [[ -f "/usr/bin/virtualenvwrapper.sh" ]]; then
  export WORKON_HOME="${HOME}/.python_virtualenvs"

  source "/usr/bin/virtualenvwrapper_lazy.sh"
fi
