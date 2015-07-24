# GIT
. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

# COMMANDS
alias ll='ls -l'
alias cls='printf "\033c"'
alias subl='"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"'

# ENVIRONMENT
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk/
export NDK_ROOT=$HOME/Soft/android-ndk-r10e
export COCOS_ROOT=$HOME/GitHub/cocos2d-x/
export COCOS_CONSOLE_ROOT=$COCOS_ROOT/tools/cocos2d-console/bin
export COCOS_TEMPLATES_ROOT=$COCOS_ROOT/templates

# PATH
export PATH=$COCOS_TEMPLATES_ROOT:$COCOS_CONSOLE_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools/:$PATH
export PATH=$ANDROID_SDK_ROOT/tools/:$PATH
export PATH=$ANDROID_SDK_ROOT/build-tools/22.0.1/:$PATH
