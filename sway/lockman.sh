#!/bin/sh
#
#[DEFAULT]
# Times the screen off and puts it to background
#swayidle \
#    timeout 300 'swaymsg "output * dpms off"' \
#    resume 'swaymsg "output * dpms on"' \
#    before-sleep 'playerctl pause' &
# Locks the screen immediately
#swaylock --clock --indicator --screenshots -effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 32x2 --datestr "%a %m.%e.%Y" --timestr "%k:%M"
# Kills last background task so idle timer doesn't keep running
#kill %%

#[my pretty edit]
#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 300 'swaymsg "output * dpms off"' \
    timeout 600 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
    resume 'swaymsg "output * dpms on"' \
    before-sleep 'playerctl pause' &
# Locks the screen immediately
swaylock --clock --indicator --screenshots -effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 32x2 --datestr "%a %m.%e.%Y" --timestr "%I:%M"
# Kills last background task so idle timer doesn't keep running
kill %%
