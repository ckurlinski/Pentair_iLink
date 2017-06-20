#!/bin/bash
# hmmm... potato chips and garlic humus......
source bash_base.sh
source serial_com.sh
source command_list.sh
source aux_menu.sh

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
	"Aux Menu"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_COSMSGS_QUERY_FN'
	'_UNITS_QUERY_FN'
	'_AIRTMP_QUERY_FN'
	'_POOLTMP_QUERY_FN'
	'aux_menu'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# Execute set color function
_set_colors
# Execute main menu
main_menu
