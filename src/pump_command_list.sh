#!/bin/bash

# PUMP Control - Control/Query/Toggle PUMP
## PUMP Status
_PUMP_QUERY_FN() {
	_MESSAGE="Current Pump Status"
	_PENTAIR_CMD="#PUMP ?<cr>"
	_SERIAL_CMD_FN
}
## PUMP Set State On
_PUMP_ON_FN() {
	_MESSAGE="PUMP State On"
	_PENTAIR_CMD="#PUMP =1<cr>"
	_SERIAL_CMD_FN
}
## PUMP Set State Off
_PUMP_OFF_FN() {
	_MESSAGE="PUMP State Off"
	_PENTAIR_CMD="#PUMP =0<cr>"
	_SERIAL_CMD_FN
}
