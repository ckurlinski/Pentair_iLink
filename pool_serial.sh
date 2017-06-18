#!/bin/bash

# Set Colors
	_set_colors() {
		reset=$(echo -en '\033[0m')
		red=$(echo -en '\033[00;31m')
		green=$(echo -en '\033[00;32m')
		yellow=$(echo -en '\033[00;33m')
		blue=$(echo -en '\033[00;34m')
		magenta=$(echo -en '\033[00;35m')
		purple=$(echo -en '\033[00;35m')
		cyan=$(echo -en '\033[00;36m')
		lightgray=$(echo -en '\033[00;37m')
		lred=$(echo -en '\033[01;31m')
		lgreen=$(echo -en '\033[01;32m')
		lyellow=$(echo -en '\033[01;33m')
		lblue=$(echo -en '\033[01;34m')
		lmagenta=$(echo -en '\033[01;35m')
		lpurple=$(echo -en '\033[01;35m')
		lcyan=$(echo -en '\033[01;36m')
		white=$(echo -en '\033[01;37m')
	}
# Set Print formatting
	## Header
		_header() {
			printf "\n${lcyan}==========  %s  ==========${reset}\n" "$@"
		}
	## Menu selection
		_select() {
			printf "${lgreen}%s${reset}\n" "$@"
		}
	## Seperator
		_sep() {
			printf "\n${lpurple}========================================${reset}\n" "$@"
		}
	## Successful Command
		_success() {
			printf "${green}✔ %s${reset}\n" "$@"
		}
	## Error
		_error() {
			printf "${red}✖ %s${reset}\n" "$@"
		}
	## Successful Removal
		_removed() {
			printf "${green}✖ %s${reset}\n" "$@"
		}
	## Warning
		_warning() {
			printf "${yellow}➜ %s${reset}\n" "$@"
		}
	## Note
		_note() {
			printf "${lyellow}Note:${reset}  ${lyellow}%s${reset}\n" "$@"
		}
# Menu List Function
	menu_list_template() {
		count=1
		for c0 in "${l0[@]}"
		do
			a0[$count]=$c0
			_select "$count - ${a0[$count]}"
			((count++))
		done
		read c1
		if [[ $c1 = [a-Z] ]]; then
			_error "Bad Input - no donut"
			return 1
		fi
		MENU_COUNT=${c1}
		MENU_OUTPUT=${a0[$c1]}
		opt_count=( `expr ${MENU_COUNT} - 1` )
	}
# Command to run from menu command array
	menu_command_run() {
		${opt0[$opt_count]}
	}
# Generic Base Menu Function
	g_menu_fn() {
		while :
		do
			_header ${HEADING}
			if [ "${ERR_MSG} != """ ]; then
				_warning "ERROR: ${ERR_MSG}"
			fi
			## Reset Error MSG
				ERR_MSG="What you talkin' 'bout Willis!!!!!'"
			## Generate menu list from menu options array
				menu_list_template
			## Run choosen command from menu command array
				menu_command_run
		done
	}
# Command Line Parameters
  _serial_dev="/dev/tty.usbserial-A501JX6M"
  _serial_cmd="socat - ${_serial_dev},raw,echo=0,crnl"
# Serial Command
  _SERIAL_CMD_FN() {
    echo ${_PENTAIR_CMD} | ${_serial_cmd}
    # | xargs echo ${_MESSAGE}
  }
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
  # Query
    _POOLTMP_QUERY_FN() {
      _MESSAGE="Current Pool Temperature is - "
      _PENTAIR_CMD="#POOLTMP ?<cr>"
      _SERIAL_CMD_FN
    }
# AUX1
  # Query
      _AUX1_QUERY_FN() {
      _MESSAGE="Aux1 status is - "
      _PENTAIR_CMD="#AUX1 ?<cr>"
      _SERIAL_CMD_FN
    }
  # ON
      _AUX1_ON_FN() {
      _MESSAGE="Turning Aux1 ON"
      _PENTAIR_CMD="#AUX1 = 1<cr>"
      _SERIAL_CMD_FN
    }
  # OFF
      _AUX1_OFF_FN() {
      _MESSAGE="Turning Aux1 OFF"
      _PENTAIR_CMD="#AUX1 = 0<cr>"
      _SERIAL_CMD_FN
    }
# AUX2
  # Query
      _AUX2_QUERY_FN() {
      _MESSAGE="AUX2 status is - "
      _PENTAIR_CMD="#AUX2 ?<cr>"
      _SERIAL_CMD_FN
    }
  # ON
      _AUX2_ON_FN() {
      _MESSAGE="Turning AUX2 ON"
      _PENTAIR_CMD="#AUX2 = 1<cr>"
      _SERIAL_CMD_FN
    }
  # OFF
      _AUX2_OFF_FN() {
      _MESSAGE="Turning AUX2 OFF"
      _PENTAIR_CMD="#AUX2 = 0<cr>"
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
					"Exit"
				)
		## Map Menu to command Array
			### Use Single Quotes for Commands
				opt0=(
					'_COSMSGS_QUERY_FN'
          '_UNITS_QUERY_FN'
					'exit'
					)
		## Execute Menu Function
			g_menu_fn
	}
# Execute set color function
 _set_colors
# Execute main menu
	main_menu
