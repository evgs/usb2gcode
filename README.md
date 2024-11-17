This set of scripts will mount usb device automatically to Klipper GCODE default location:
```
~/printer_data/gcodes/USB/{Label or UUID}
```

Based on discussion here https://www.linux.org.ru/forum/linux-hardware/17416863


Clone this repository to klipper user home directory and execute install script:

```
cd ~
git clone https://github.com/evgs/usb2gcode
cd usb2gcode
./install.sh
```

