#!/bin/bash
## Serial Device
_serial_dev="/dev/tty.usbserial-A501JX6M"
if [[ -e ${_serial_dev} ]]; then
	echo "Using serial device : ${_serial_dev}"
else
	echo "Serial Device not installed, Goodbye"
	exit
fi
## Socat
if [[ -e `(which socat)` ]]; then
	echo "Using socat at: `(which socat)`"
else
	echo "socat not installed, Goodbye"
	exit
fi
_serial_cmd="socat - ${_serial_dev},raw,echo=0,crnl"

# Command Line
# Serial Command
_SERIAL_CMD_FN() {
	echo ${_PENTAIR_CMD} | ${_serial_cmd}
}