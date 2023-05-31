#!/bin/bash

btop --start-minimized &
sleep 1
wmctrl -c "btop"
