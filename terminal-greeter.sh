#!/bin/bash

cur_hour=$(date +"%H")  		#gets the current hour
#echo $cur_hour

if [ "$cur_hour" -ge 0 ] && [ "$cur_hour" -le 6 ]; then
	$(espeak "Enough coding for the day. You should be sleeping now!" 2>errors.log)	#stderr redirected to errors.log
else 
	if [ "$cur_hour" -gt 6 ] && [ "$cur_hour" -lt 12 ]; then
		$(espeak "Good morning!" 2>errors.log)
	else 
		if [ "$cur_hour" -ge 12 ] && [ "$cur_hour" -lt 20 ]; then
			$(espeak "Good evening!" 2>errors.log)
		else 
			$(espeak "Good night!" 2>errors.log)
		fi
	fi
fi
$(rm errors.log)	#removed as not required
