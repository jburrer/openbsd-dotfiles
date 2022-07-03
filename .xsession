export PKG_PATH="$(cat /etc/installurl)/$(uname -r)/packages-stable/$(uname -p)/:$(cat /etc/installurl)/$(uname -r)/packages/$(uname -p)/:https://pkg.weird.cafe/pub/OpenBSD/$(uname -r)/packages/$(uname -p)/"
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc

xrdb -merge $HOME/.Xresources
xidle &
$HOME/Documents/scripts/topbar &
$HOME/Documents/scripts/bottombar &
LANG= xclock &

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

exec cwm
