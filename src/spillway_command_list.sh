#!/bin/bash

# Spillway Control - Control/Query/Toggle PUMP
## Spillway Status
_SPILLWAY_QUERY_FN() {
	_MESSAGE="Current Spillway Status"
	_PENTAIR_CMD="#SPILLWAY ?<cr>"
	_SERIAL_CMD_FN
}
## Spillway Set State On
_SPILLWAY_ON_FN() {
	_MESSAGE="Spillway State On"
	_PENTAIR_CMD="#SPILLWAY =1<cr>"
	_SERIAL_CMD_FN
}
## Spillway Set State Off
_SPILLWAY_OFF_FN() {
	_MESSAGE="Spillway State Off"
	_PENTAIR_CMD="#SPILLWAY =0<cr>"
	_SERIAL_CMD_FN
}
