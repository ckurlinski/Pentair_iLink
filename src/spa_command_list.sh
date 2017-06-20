#!/bin/sh

# Spa Control - Control/Query/Toggle Spa
## Spa Status
_SPA_QUERY_FN() {
	_MESSAGE="Current Spa Status"
	_PENTAIR_CMD="#SPA ?<cr>"
	_SERIAL_CMD_FN
}
## Spa Set State On
_SPA_ON_FN() {
	_MESSAGE="Spa State On"
	_PENTAIR_CMD="#SPA =1<cr>"
	_SERIAL_CMD_FN
}
## Spa Set State Off
_SPA_OFF_FN() {
	_MESSAGE="Spa State Off"
	_PENTAIR_CMD="#SPA =0<cr>"
	_SERIAL_CMD_FN
}
# Spa Temperature Set Point Control
# Spa Temperature Query
_SPA_TEMP_FN() {
	_MESSAGE="Spa Temperature"
	_PENTAIR_CMD="#SPATMP ?<cr>"
	_SERIAL_CMD_FN
}
## Spa Status Temperature
_SPA_TEMP_STATUS_FN() {
	_MESSAGE="Spa Status"
	_PENTAIR_CMD="#SPASP ?<cr>"
	_SERIAL_CMD_FN
}
## Spa Temperature Increment Up
_SPA_TEMP_INCREASE_FN() {
	_MESSAGE="Spa Temperature Increment Up"
	_PENTAIR_CMD="#SPASP+ <cr>"
	_SERIAL_CMD_FN
}
## Spa Temperature Increment Down
_SPA_TEMP_DECREASE_FN() {
	_MESSAGE="Spa Temperature Increment Down"
	_PENTAIR_CMD="#SPASP- <cr>"
	_SERIAL_CMD_FN
}
## Spa Heater Status
_SPA_HEATER_STATUS_FN() {
	_MESSAGE="Spa Heater Status"
	_PENTAIR_CMD="#SPAHT ?<cr>"
	_SERIAL_CMD_FN
}
## Spa Heater On
_SPA_HEATER_ON_FN() {
	_MESSAGE="Spa Heater On"
	_PENTAIR_CMD="#SPAHT =1<cr>"
	_SERIAL_CMD_FN
}
## Spa Heater Off
_SPA_HEATER_OFF_FN() {
	_MESSAGE="Spa Heater Off"
	_PENTAIR_CMD="#SPAHT =0<cr>"
	_SERIAL_CMD_FN
}
