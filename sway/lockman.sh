\#!/bin/sh
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
swaylock --clock --indicator -l  --grace 5 --fade-in 1.5 --submit-on-touch --ignore-empty-password --bs-hl-color d7d7d5 --key-hl-color 0abdc6 --ring-color d300c4 --ring-clear-color 00ff00 --ring-ver-color d300c4 --ring-wrong-color FF0000 --inside-color 000b1e --inside-clear-color 000b1e --inside-ver-color 000b1e --inside-wrong-color f57800 --inside-caps-lock-color d7d7d5 --text-color 0abdc6 --text-clear-color 0abdc6 --text-ver-color 0abdc6 --text-wrong-color d7d7d5 --line-color 123e7c --ring-clear-color 00FF00 --ring-caps-lock-color F57800 --ring-wrong-color FF0000 --screenshots -effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 32x2 --datestr "%a %m.%d.%Y" --timestr "%I:%M %p"
# Kills last background task so idle timer doesn't keep running
kill %%
