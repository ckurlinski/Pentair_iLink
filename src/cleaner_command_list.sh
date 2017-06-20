#!/bin/bash

# Cleaner Control - Control/Query/Toggle PUMP
## Cleaner Status
_CLEANR_QUERY_FN() {
	_MESSAGE="Current Cleaner Status"
	_PENTAIR_CMD="#CLEANR ?<cr>"
	_SERIAL_CMD_FN
}
## CLEANR Set State On
_CLEANR_ON_FN() {
	_MESSAGE="Cleaner State On"
	_PENTAIR_CMD="#CLEANR =1<cr>"
	_SERIAL_CMD_FN
}
## CLEANR Set State Off
_CLEANR_OFF_FN() {
	_MESSAGE="Cleaner State Off"
	_PENTAIR_CMD="#CLEANR =0<cr>"
	_SERIAL_CMD_FN
}
