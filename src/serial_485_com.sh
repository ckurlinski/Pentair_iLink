#!/bin/bash
## Serial RS485 Device
source src/bash_base.sh
source rs485.conf

if [[ -e ${_serial_485_dev} ]]; then
	echo "Using serial device : ${_serial_485_dev}"
else
	echo "RS 485 Serial Device not installed, Goodbye"
	exit
fi
## od
if [[ -e `(which od)` ]]; then
	echo "Using od at: `(which od)`"
else
	echo "od not installed, Goodbye"
	exit
fi
_serial_485_cmd="od ${_serial_485_dev}"

# Command Line
# Serial Command
_SERIAL_485_CMD_FN() {
	_sep
	echo ${_MESSAGE}
	echo ${_PENTAIR_CMD} | ${_serial_485_cmd}
	_sep
}
