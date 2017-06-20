#!/bin/bash
# hmmm... potato chips and garlic humus......
source bash_base.sh
source serial_com.sh

# COSMSGS
# Query
_COSMSGS_QUERY_FN() {
	_MESSAGE="System Messages setting is - "
	_PENTAIR_CMD="#COSMSGS ?<cr>"
	_SERIAL_CMD_FN
}
# UNITS
## QUERY
_UNITS_QUERY_FN() {
	_MESSAGE="Current Temperature Units is - "
	_PENTAIR_CMD="#UNITS ?<cr>"
	_SERIAL_CMD_FN
}
# AIRTMP
## Query
_AIRTMP_QUERY_FN() {
	_MESSAGE="Current Air Temperature Units is - "
	_PENTAIR_CMD="#AIRTMP ?<cr>"
	_SERIAL_CMD_FN
}
# POOLTMP
## Query
_POOLTMP_QUERY_FN() {
	_MESSAGE="Current Pool Temperature is - "
	_PENTAIR_CMD="#POOLTMP ?<cr>"
	_SERIAL_CMD_FN
}

# Main Menu
main_menu()  {
	## Header
	HEADING="Pool-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"System Messages settings"
	"Current Temperature Units"
	"Current Air Temperature"
	"Current Pool Temperature"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_COSMSGS_QUERY_FN'
	'_UNITS_QUERY_FN'
	'_AIRTMP_QUERY_FN'
	'_POOLTMP_QUERY_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# Execute set color function
_set_colors
# Execute main menu
main_menu
