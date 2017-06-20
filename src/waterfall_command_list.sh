#!/bin/bash

# Waterfall Control - Control/Query/Toggle PUMP
## Waterfall Status
_WFALL_QUERY_FN() {
	_MESSAGE="Current Waterfall Status"
	_PENTAIR_CMD="#WFALL ?<cr>"
	_SERIAL_CMD_FN
}
## Waterfall Set State On
_WFALL_ON_FN() {
	_MESSAGE="Waterfall State On"
	_PENTAIR_CMD="#WFALL =1<cr>"
	_SERIAL_CMD_FN
}
## Waterfall Set State Off
_WFALL_OFF_FN() {
	_MESSAGE="Waterfall State Off"
	_PENTAIR_CMD="#WFALL =0<cr>"
	_SERIAL_CMD_FN
}
