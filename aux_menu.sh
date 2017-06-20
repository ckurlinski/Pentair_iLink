#!/bin/sh
source bash_base.sh
source aux_list.sh

# AUX1 Menu
AUX1_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX1 Relay Status"
  "AUX1 Relay Off"
  "AUX1 Relay On"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX1_QUERY_FN'
	'_AUX1_OFF_FN'
	'_AUX1_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX2 Menu
AUX2_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX2 Relay Status"
  "AUX2 Relay Off"
  "AUX2 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX2_QUERY_FN'
	'_AUX2_OFF_FN'
	'_AUX2_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX3 Menu
AUX3_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX3 Relay Status"
  "AUX3 Relay Off"
  "AUX3 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX3_QUERY_FN'
	'_AUX3_OFF_FN'
	'_AUX3_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX4 Menu
AUX4_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX4 Relay Status"
  "AUX4 Relay Off"
  "AUX4 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX4_QUERY_FN'
	'_AUX4_OFF_FN'
	'_AUX4_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX5 Menu
AUX5_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX5 Relay Status"
  "AUX5 Relay Off"
  "AUX5 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX5_QUERY_FN'
	'_AUX5_OFF_FN'
	'_AUX5_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX6 Menu
AUX6_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX6 Relay Status"
  "AUX6 Relay Off"
  "AUX6 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX6_QUERY_FN'
	'_AUX6_OFF_FN'
	'_AUX6_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX7 Menu
AUX7_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX7 Relay Status"
  "AUX7 Relay Off"
  "AUX7 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX7_QUERY_FN'
	'_AUX7_OFF_FN'
	'_AUX7_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX8 Menu
AUX8_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX8 Relay Status"
  "AUX8 Relay Off"
  "AUX8 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX8_QUERY_FN'
	'_AUX8_OFF_FN'
	'_AUX8_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX9 Menu
AUX9_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX9 Relay Status"
  "AUX9 Relay Off"
  "AUX9 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX9_QUERY_FN'
	'_AUX9_OFF_FN'
	'_AUX9_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# AUX10 Menu
AUX10_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX10 Relay Status"
  "AUX10 Relay Off"
  "AUX10 Relay On"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX10_QUERY_FN'
	'_AUX10_OFF_FN'
	'_AUX10_ON_FN'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}

# AUX Main Menu
aux_menu()  {
	## Header
	HEADING="Aux Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX Relay 1"
  "AUX Relay 2"
  "AUX Relay 3"
  "AUX Relay 4"
  "AUX Relay 5"
  "AUX Relay 6"
  "AUX Relay 7"
  "AUX Relay 8"
  "AUX Relay 9"
  "AUX Relay 10"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'AUX1_menu'
	'AUX2_menu'
	'AUX3_menu'
	'AUX4_menu'
  'AUX5_menu'
  'AUX6_menu'
  'AUX7_menu'
  'AUX8_menu'
  'AUX9_menu'
  'AUX10_menu'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
