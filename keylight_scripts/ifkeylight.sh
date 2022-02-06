#!/usr/bin/bash

XON="Keyboard led light turned ON"
XOFF="Keyboard led light turned OFF"

H=$(date "+%k")

if ((16 <= $H || $H < 8))
then
  xset led named "Scroll Lock"
  echo $XON
else
  xset -led named "Scroll Lock"
  echo $XOFF
fi

