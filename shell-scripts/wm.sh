unset XDG_RUNTIME_DIR
Xephyr -br -ac -noreset -screen 2400x1600 -dpi 234 -resizeable -noreset :2 &
DISPLAY=:2 i3
