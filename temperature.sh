#!/bin/sh
while true
do
  #read Internal Temperature  5Eh, 5Fh    (0x000)-144.7 C ->   264.8 C(0xFFF) , 0.1°C / bit
  TEMPERATURE_LSB=$(i2cget -y -f 0 0x34 0x5f)
  TEMPERATURE_MSB=$(i2cget -y -f 0 0x34 0x5e)

  # echo $TEMPERATURE_MSB $TEMPERATURE_LSB

  TEMPERATURE_BIN=$(( $(($TEMPERATURE_MSB << 4)) | $(($TEMPERATURE_LSB & 0x0F))))
  TEMP_DEGC=$(echo "($TEMPERATURE_BIN/10)-144.7"|bc)

  echo $TEMP_DEGC # "°C"
  TEMP_DEGF=$( echo "($TEMP_DEGC*1.8)+32"|bc)
  # echo $TEMP_DEGF"°F"
done
