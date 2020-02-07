#Dan Koellen AI6XG Jan 2020
#Returns BCD time and date
#local or utc

import datetime

#returns hour and minute BCD
#return_time(UTC) UTC = 1 local = 0
def return_time(UTC):
	if UTC:
		tm = datetime.datetime.utcnow()
	else:
		tm = datetime.datetime.now()
		
	hour_tens = int(tm.hour/10)
	hour_ones =  tm.hour%10
	min_tens = int(tm.minute/10)
	min_ones =  tm.minute%10
	
	return hour_tens, hour_ones, min_tens, min_ones
	

#returns month and day BCD
#return_date(UTC) UTC = 1 local = 0
def return_date(UTC):
	if UTC:
		tm = datetime.datetime.utcnow()
	else:
		tm = datetime.datetime.now()
		
	month_tens = int(tm.month/10)
	month_ones =  tm.month%10
	day_tens = int(tm.day/10)
	day_ones =  tm.day%10
	
	return month_tens, month_ones, day_tens, day_ones

