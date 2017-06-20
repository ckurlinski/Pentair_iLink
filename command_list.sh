#!/bin/bash

# COSMSGS
# Query
_COSMSGS_QUERY_FN() {
	_MESSAGE="System Messages Settings"
	_PENTAIR_CMD="#COSMSGS ?<cr>"
	_SERIAL_CMD_FN
}
# UNITS
## QUERY
_UNITS_QUERY_FN() {
	_MESSAGE="Current Temperature Units"
	_PENTAIR_CMD="#UNITS ?<cr>"
	_SERIAL_CMD_FN
}
# AIRTMP
## Query
_AIRTMP_QUERY_FN() {
	_MESSAGE="Current Air Temperature"
	_PENTAIR_CMD="#AIRTMP ?<cr>"
	_SERIAL_CMD_FN
}
# POOLTMP
## Query
_POOLTMP_QUERY_FN() {
	_MESSAGE="Current Pool Temperature"
	_PENTAIR_CMD="#POOLTMP ?<cr>"
	_SERIAL_CMD_FN
}
