#!/bin/bash
# hmmm... potato chips and garlic humus......
source src/bash_base.sh
source src/serial_com.sh
source src/pool_command_list.sh
source src/spa_command_list.sh
source src/aux_list.sh
source src/system_command_list.sh

# Main Menu
main_menu()  {
	## Header
	HEADING="Pool-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"System Messages settings"
	"Reset iLink Command"
	"Command Response Format"
	"Current Temperature Units"
	"Current Air Temperature"
	"Current Pool Temperature"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_COSMSGS_QUERY_FN'
	'_RST_FN'
	'_UNITS_QUERY_FN'
	'_AIRTMP_QUERY_FN'
	'_POOL_TEMP_FN'
	'_SPA_TEMP_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# Execute set color function
_set_colors
# Execute main menu
main_menu
