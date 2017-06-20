#!/bin/sh

# POOL Control - Control/Query/Toggle POOL
## POOL Status
_POOL_QUERY_FN() {
	_MESSAGE="Current POOL Status"
	_PENTAIR_CMD="#POOL ?<cr>"
	_SERIAL_CMD_FN
}
## POOL Set State On
_POOL_ON_FN() {
	_MESSAGE="POOL State On"
	_PENTAIR_CMD="#POOL = 1<cr>"
	_SERIAL_CMD_FN
}
## POOL Set State Off
_POOL_OFF_FN() {
	_MESSAGE="POOL State Off"
	_PENTAIR_CMD="#POOL = 0<cr>"
	_SERIAL_CMD_FN
}
# POOL Temperature Set Point Control
_POOL_TEMP_FN() {
	_MESSAGE="POOL Temperature"
	_PENTAIR_CMD="#POOLTMP ?<cr>"
	_SERIAL_CMD_FN
}
## POOL Status Temperature
_POOL_TEMP_STATUS_FN() {
	_MESSAGE="POOL Status"
	_PENTAIR_CMD="#POOLSP ?<cr>"
	_SERIAL_CMD_FN
}
## POOL Temperature Increment Up
_POOL_TEMP_INCREASE_FN() {
	_MESSAGE="POOL Temperature Increment Up"
	_PENTAIR_CMD="#POOLSP+ <cr>"
	_SERIAL_CMD_FN
}
## POOL Temperature Increment Down
_POOL_TEMP_DECREASE_FN() {
	_MESSAGE="POOL Temperature Increment Down"
	_PENTAIR_CMD="#POOLSP- <cr>"
	_SERIAL_CMD_FN
}
## POOL Heater Status
_POOL_HEATER_STATUS_FN() {
	_MESSAGE="POOL Heater Status"
	_PENTAIR_CMD="#POOLHT ?<cr>"
	_SERIAL_CMD_FN
}
## POOL Heater On
_POOL_HEATER_ON_FN() {
	_MESSAGE="POOL Heater On"
	_PENTAIR_CMD="#POOLHT = 1<cr>"
	_SERIAL_CMD_FN
}
## POOL Heater Off
_POOL_HEATER_OFF_FN() {
	_MESSAGE="POOL Heater Off"
	_PENTAIR_CMD="#POOLHT = 0<cr>"
	_SERIAL_CMD_FN
}
