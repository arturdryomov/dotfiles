# Homebrew

export BREW_HOME="$(brew --prefix)"
export PATH="${BREW_HOME}/bin:${BREW_HOME}/sbin:${PATH}"

# Homebrew Cask

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Android SDK

export ANDROID_HOME="${BREW_HOME}/share/android-sdk/"

