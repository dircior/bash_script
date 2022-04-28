#!/bin/bash

read -p "Type 'y' to turn on the keylight or 'n' to turn it off: " choice

case "$choice" in
 y) xset led named "Scroll Lock"
    echo "Keylight ON"
    ;;
 n) xset -led named "Scroll Lock"
    echo "Keylight OFF"
    ;;
 *) echo "Type only 'y' or 'n'!" ;;
esac
