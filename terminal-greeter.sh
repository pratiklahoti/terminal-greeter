#Copyright (C) 2012  Pratik Lahoti

#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License or any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

#!/bin/bash

cur_hour=$(date +"%H")  		#gets the current hour
#echo $cur_hour

if [ "$cur_hour" -ge 0 ] && [ "$cur_hour" -le 6 ]; then
	$(espeak "Enough coding for the day. You should be sleeping now!" 2>errors.log)	#stderr redirected to errors.log
else 
	if [ "$cur_hour" -gt 6 ] && [ "$cur_hour" -lt 12 ]; then
		$(espeak "Good morning!" 2>errors.log)
	else 
		if [ "$cur_hour" -ge 12 ] && [ "$cur_hour" -lt 16 ]; then
			$(espeak "Good afternoon!" 2>errors.log)
		else
			if [ "$cur_hour" -ge 16 ] && [ "$cur_hour" -lt 20 ]; then
				$(espeak "Good evening!" 2>errors.log)
			else 
				$(espeak "Good night!" 2>errors.log)
			fi
		fi
	fi
fi
$(rm errors.log)	#removed as not required
