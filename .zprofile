export GTK_USE_PORTAL=1
export PATH=$PATH:/home/mateusz/.spicetify
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:$HOME/.local/bin

export GOPATH=$HOME/Dev/go
export PATH=$PATH:$GOPATH/bin

#export PYENV_ROOT=$HOME/.pyenv
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

pulseeffects -l "AClean"

export MOZ_DISABLE_RDD_SANDBOX=1
export LIBVA_DRIVER_NAME=nvidia
export NVD_BACKEND=direct
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

setxkbmap -option ctrl:swapcaps
xcape -e 'Control_L=Escape'

export WLR_NO_HARDWARE_CURSORS=1
