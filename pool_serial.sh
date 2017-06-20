#!/bin/bash

source src/bash_base.sh
source src/serial_com.sh
source src/pool_command_list.sh
source src/spa_command_list.sh
source src/aux_list.sh
source src/system_command_list.sh
source src/pump_command_list.sh
source src/feature_command_list.sh
source src/light_command_list.sh

# Pump Menu
pump_menu()  {
	## Header
	HEADING="Pump-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"Current Pump Status"
  "PUMP State On"
  "PUMP State Off"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_PUMP_QUERY_FN'
	'_PUMP_ON_FN'
	'_PUMP_OFF_FN'
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# Pool Menu
pool_menu()  {
	## Header
	HEADING="Pool-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"Current POOL Status"
  "POOL State On"
  "POOL State Off"
  "POOL Temperature"
  "POOL Status"
  "POOL Temperature Increment Up"
  "POOL Temperature Increment Down"
  "POOL Heater Status"
  "POOL Heater On"
  "POOL Heater Off"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_POOL_QUERY_FN'
  '_POOL_ON_FN'
  '_POOL_OFF_FN'
  '_POOL_TEMP_FN'
  '_POOL_TEMP_STATUS_FN'
  '_POOL_TEMP_INCREASE_FN'
  '_POOL_TEMP_DECREASE_FN'
  '_POOL_HEATER_STATUS_FN'
  '_POOL_HEATER_ON_FN'
  '_POOL_HEATER_OFF_FN'
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# Spa Menu
spa_menu()  {
	## Header
	HEADING="Pool-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"Current Spa Status"
  "Spa State On"
  "Spa State Off"
  "Spa Temperature"
  "Spa Status"
  "Spa Temperature Increment Up"
  "Spa Temperature Increment Down"
  "Spa Heater Status"
  "Spa Heater On"
  "Spa Heater Off"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_SPA_QUERY_FN'
	'_SPA_ON_FN'
  '_SPA_OFF_FN'
  '_SPA_TEMP_FN'
  '_SPA_TEMP_STATUS_FN'
  '_SPA_TEMP_INCREASE_FN'
  '_SPA_TEMP_DECREASE_FN'
  '_SPA_HEATER_STATUS_FN'
  '_SPA_HEATER_ON_FN'
  '_SPA_HEATER_OFF_FN'
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# AUX Menu
aux_menu()  {
	## Header
	HEADING="AUX-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX1 status"
	"Turning AUX1 ON"
	"Turning AUX1 OFF"
	"AUX2 status"
	"Turning AUX2 ON"
	"Turning AUX2 OFF"
	"AUX3 status"
	"Turning AUX3 ON"
	"Turning AUX3 OFF"
	"AUX4 status"
	"Turning AUX4 ON"
	"Turning AUX4 OFF"
	"AUX5 status"
	"Turning AUX5 ON"
	"Turning AUX5 OFF"
	"AUX6 status"
	"Turning AUX6 ON"
	"Turning AUX6 OFF"
	"AUX7 status"
	"Turning AUX7 ON"
	"Turning AUX7 OFF"
	"AUX8 status"
	"Turning AUX8 ON"
	"Turning AUX8 OFF"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX1_QUERY_FN '
	'_AUX1_ON_FN '
	'_AUX1_OFF_FN '
	'_AUX2_QUERY_FN '
	'_AUX2_ON_FN '
	'_AUX2_OFF_FN '
	'_AUX3_QUERY_FN '
	'_AUX3_ON_FN '
	'_AUX3_OFF_FN '
	'_AUX4_QUERY_FN '
	'_AUX4_ON_FN '
	'_AUX4_OFF_FN '
	'_AUX5_QUERY_FN '
	'_AUX5_ON_FN '
	'_AUX5_OFF_FN '
	'_AUX6_QUERY_FN '
	'_AUX6_ON_FN '
	'_AUX6_OFF_FN '
	'_AUX7_QUERY_FN '
	'_AUX7_ON_FN '
	'_AUX7_OFF_FN '
	'_AUX8_QUERY_FN '
	'_AUX8_ON_FN '
	'_AUX8_OFF_FN '
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# Feature Menu
feature_menu()  {
	## Header
	HEADING="Feature-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"AUX41 status"
  "Turning AUX41 ON"
  "Turning AUX41 OFF"
  "AUX42 status"
  "Turning AUX42 ON"
  "Turning AUX42 OFF"
  "AUX43 status"
  "Turning AUX43 ON"
  "Turning AUX43 OFF"
  "AUX44 status"
  "Turning AUX44 ON"
  "Turning AUX44 OFF"
  "AUX45 status"
  "Turning AUX45 ON"
  "Turning AUX45 OFF"
  "AUX46 status"
  "Turning AUX46 ON"
  "Turning AUX46 OFF"
  "AUX47 status"
  "Turning AUX47 ON"
  "Turning AUX47 OFF"
  "AUX48 status"
  "Turning AUX48 ON"
  "Turning AUX48 OFF"
  "AUX49 status"
  "Turning AUX49 ON"
  "Turning AUX49 OFF"
  "AUX50 status"
  "Turning AUX50 ON"
  "Turning AUX50 OFF"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_AUX41_QUERY_FN '
  '_AUX41_ON_FN '
  '_AUX41_OFF_FN '
  '_AUX42_QUERY_FN '
  '_AUX42_ON_FN '
  '_AUX42_OFF_FN '
  '_AUX43_QUERY_FN '
  '_AUX43_ON_FN '
  '_AUX43_OFF_FN '
  '_AUX44_QUERY_FN '
  '_AUX44_ON_FN '
  '_AUX44_OFF_FN '
  '_AUX45_QUERY_FN '
  '_AUX45_ON_FN '
  '_AUX45_OFF_FN '
  '_AUX46_QUERY_FN '
  '_AUX46_ON_FN '
  '_AUX46_OFF_FN '
  '_AUX47_QUERY_FN '
  '_AUX47_ON_FN '
  '_AUX47_OFF_FN '
  '_AUX48_QUERY_FN '
  '_AUX48_ON_FN '
  '_AUX48_OFF_FN '
  '_AUX49_QUERY_FN '
  '_AUX49_ON_FN '
  '_AUX49_OFF_FN '
  '_AUX50_QUERY_FN '
  '_AUX50_ON_FN '
  '_AUX50_OFF_FN '
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# Feature Menu
light_menu()  {
	## Header
	HEADING="Light-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"ALL LIGHTS State On"
  "ALL LIGHTS State Off"
  "COLORSYNC LIGHTS"
	"Return"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_ALLLIGHTS_ON_FN'
	'_ALLLIGHTS_OFF_FN'
	'_LIGHT_COLORSYNC_FN'
	'main_menu'
	)
	## Execute Menu Function
	g_menu_fn
}

# Main Menu
main_menu()  {
	## Header
	HEADING="Pool-System-Control"
	## Write out the menu options array
	### Use Double Quotes for Text
	l0=(
	"System Messages settings"
	"Reset iLink Command"
	"Command Response Format"
	"Current System Mode"
	"Query Model Type"
	"Current Temperature Units"
	"Current Air Temperature"
	"Pump Menu"
	"Pool System"
	"Spa System"
	"AUX Menu"
	"Feature Menu"
	"Light Menu"
	"Exit"
	)
	## Map Menu to command Array
	### Use Single Quotes for Commands
	opt0=(
	'_COSMSGS_QUERY_FN'
	'_RST_FN'
	'_RSPFMT_QUERY_FN'
	'_OPMODE_QUERY_FN'
	'_MODEL_TYPE_FN'
	'_UNITS_QUERY_FN'
	'_AIRTMP_QUERY_FN'
	'pump_menu'
	'pool_menu'
	'spa_menu'
	'aux_menu'
	'feature_menu'
	'light_menu'
	'exit'
	)
	## Execute Menu Function
	g_menu_fn
}
# Execute set color function
_set_colors
# Execute main menu
main_menu
