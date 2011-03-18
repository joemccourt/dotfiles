# Load global Xprofile
if [ -f /etc/X11/Xprofile ]; then
    . /etc/X11/Xprofile
fi

# Start xcompmgr
xcompmgr &

# Start awesome
exec awesome
