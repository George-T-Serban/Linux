#!/bin/bash

# This script puts the result of the command date +%d-%m-%y in a variable,
# and uses pattern matching to show 3 lines:
# The day is 05
# The month is 01
# The year is 15

my_date=$(date +%d-%m-%y)
echo "Today's date is: " $my_date
echo "The day is: "${my_date%%-*}
echo "The month is: "${my_date#*-} | cut -f1 -d"-"
echo "The year is: "${my_date##*-}