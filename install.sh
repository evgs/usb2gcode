die() { echo "*** FAILED ***"  ; exit 1; }

echo "USBMP=${HOME}/printer_data/gcodes/USB/" > files/usbmp

sudo cp files/usbmp  /etc || die
sudo cp files/usb-mount.sh  /usr/local/bin/ || die
sudo cp files/usb-mount@.service  /etc/systemd/system/ || die
sudo cp files/99-usbmount.rules  /etc/udev/rules.d/

