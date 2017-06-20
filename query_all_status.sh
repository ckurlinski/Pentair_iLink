#!/bin/sh

source src/bash_base.sh
source src/serial_com.sh
source src/pool_command_list.sh
source src/spa_command_list.sh
source src/aux_list.sh
source src/system_command_list.sh

l0=(
  '_COSMSGS_QUERY_FN'
  '_RSPFMT_QUERY_FN'
  '_UNITS_QUERY_FN'
  '_AIRTMP_QUERY_FN'
  '_POOL_QUERY_FN'
  '_POOL_TEMP_FN'
  '_POOL_TEMP_STATUS_FN'
  '_POOL_HEATER_STATUS_FN'
  '_SPA_QUERY_FN'
  '_SPA_TEMP_FN'
  '_SPA_TEMP_STATUS_FN'
  '_SPA_HEATER_STATUS_FN'
  '_AUX1_QUERY_FN '
  '_AUX2_QUERY_FN '
  '_AUX3_QUERY_FN '
  '_AUX4_QUERY_FN '
  '_AUX5_QUERY_FN '
  '_AUX6_QUERY_FN '
  '_AUX7_QUERY_FN '
  '_AUX8_QUERY_FN '
  '_AUX9_QUERY_FN '
  '_AUX10_QUERY_FN'
)

a=
count=1
for c0 in "${l0[@]}"
do
  a0[$count]=$c0
  ${a0[$count]}
  ((count++))
done