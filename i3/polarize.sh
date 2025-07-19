# TODO: Create automatic polarization of displays

xrandr --listactivemonitors \
  | tail -n +2 \
  | awk '{print $4}' \
  | xargs -I{} xrandr --output {} --brightness 1

xrandr --listactivemonitors \
  | tail -n +2 \
  | awk '{print $4}' \
  | xargs -i{} xrandr --output {} --brightness 0.5 --gamma 1.0:0.7:0.5

xrandr --listactivemonitors \
  | tail -n +2 \
  | awk '{print $4}' \
  | xargs -I{} xrandr --output {} --brightness 0.7 --gamma 1.0:0.8:0.6
