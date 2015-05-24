# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=$HOME/GitHub/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH


# Add git comletion
. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash

alias ll='ls -l'
alias cls='printf "\033c"'
alias subl='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'

# ENVIRONMENT
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk/
export NDK_ROOT=$HOME/Documents/Soft/android-ndk-r10e

# PATH
export COCOS_TEMPLATES_ROOT=$HOME/GitHub/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools/:$PATH
export PATH=$ANDROID_SDK_ROOT/tools/:$PATH
