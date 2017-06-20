#!/bin/bash

# AUX Number

# AUX Query
_AUX_QUERY_FN() {
	_MESSAGE="Aux status is - "
	_PENTAIR_CMD="#AUX1 ?<cr>"
	_SERIAL_CMD_FN
}
# AUX ON
_AUX_ON_FN() {
	_MESSAGE="Turning Aux ON"
	_PENTAIR_CMD="#AUX1 = 1<cr>"
	_SERIAL_CMD_FN
}
# AUX OFF
_AUX_OFF_FN() {
	_MESSAGE="Turning Aux OFF"
	_PENTAIR_CMD="#AUX1 = 0<cr>"
	_SERIAL_CMD_FN
}
