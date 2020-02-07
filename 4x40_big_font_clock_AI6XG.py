#Dan Koellen AI6XG Jan 2020
#
#4x40_big_font_clock_AI6XG.py
#change GPIO assignments for board layout

import datetime
import time
from LCD_2E_AI6XG import *
from LCD_BIG_FONT_AI6XG import *
from return_time_date_AI6XG import *
#import RPi.GPIO as gpio						#uncomment if gpio not setup previously

mode_pin_lsb = 22								#mode pin lsb 2^0
mode_pin_usb = 9								#mode pin usb 2^1
mode_flag = 0									#mode changed = 1,no mode change = 0

toggle_dur = 7									#display duration in seconds in toggle mode
toggle_dur *= 1.0								#force to float


#Function Definitions for Clock display 
#place colon : at left
def colon(left):
	lcd_goto(left, 0)							#LCD0 line 0 position 'left'
	lcd_putch(0x20, 0)
	
	lcd_goto(left + 0x40, 0)					#LCD0 line 1 position 'left'
	lcd_putch(0x05, 0)	
	
	lcd_goto(left, 1)							#LCD1 line 0 position 'left'
	lcd_putch(0x01, 1)
	
	lcd_goto(left + 0x40, 1)					#LCD1 line 1 position 'left'
	lcd_putch(0x20, 1)
	
#place a blank space at left
def blank(left):
	lcd_goto(left, 0)
	lcd_putch(0x20, 0)
	
	lcd_goto(left + 0x40, 0)
	lcd_putch(0x20, 0)	
	
	lcd_goto(left, 1)
	lcd_putch(0x20, 1)
	
	lcd_goto(left + 0x40, 1)
	lcd_putch(0x20, 1)
	
#place a single space dash at left
def dash(left):
	lcd_goto(left, 0)
	lcd_putch(0x20, 0)
	
	lcd_goto(left + 0x40, 0)
	lcd_putch(0x01, 0)	
	
	lcd_goto(left, 1)
	lcd_putch(0x20, 1)
	
	lcd_goto(left + 0x40, 1)
	lcd_putch(0x20, 1)
	
#place a period at left
def period(left):
	lcd_goto(left, 0)
	lcd_putch(0x20, 0)
	
	lcd_goto(left + 0x40, 0)
	lcd_putch(0x20, 0)	
	
	lcd_goto(left, 1)
	lcd_putch(0x20, 1)
	
	lcd_goto(left + 0x40, 1)
	lcd_putch(0x05, 1)

#display colon at position pos
#col_on/100 sec colon on, 1 - col_on/100 second colon off
#needs continuous time access for blink
#col_on blink < 100 --->steady = 100 blank = 0
#colon_display(pos, col_on) 
def colon_display(pos, col_on):
	if col_on > 100:
		col_on = 100
	now = datetime.datetime.now()
	if now.microsecond <= col_on * 10000:
		colon(pos)
	else:
		blank(pos)
	
#time displayed at position left
#colon may be placed at left + 7
#time_bcd[hours_tens, hours_ones, minutes_tens, minutes_ones]
#time_display(time_bcd, left) 
def time_display(time_bcd, left):
	big_write(time_bcd[0],left)						#display hours_tens
	big_write(time_bcd[1],left + 4)					#display hours_ones
	big_write(time_bcd[2],left + 8)					#display minutes_tens
	big_write(time_bcd[3], left + 12)				#display minutes_ones

#date displayed at position left
#dash = 1/period = 0 placed at left + 7
#date_bcd[month_tens, month_ones, day_tens, day_ones, date_dash]
#date_display(date_bcd, left, date_dash) 
def date_display(date_bcd, left, date_dash):
	big_write(date_bcd[0],left)						#display month_tens
	big_write(date_bcd[1],left + 4)					#display month_ones
	big_write(date_bcd[2],left + 8)					#display day_tens
	big_write(date_bcd[3], left + 12)				#display day_ones
	if date_dash:									#display dash or period
		dash(left + 7)
	else:
		period(left + 7)

#check for mode
#check_mode(mode_1_pin, mode_0_pin)
def check_mode(mode_1_pin, mode_0_pin):
	global mode_toggle
	mode_0 =gpio.input(mode_0_pin)
	mode_1 =gpio.input(mode_1_pin)
	mode_now = ((mode_1 <<1) & 0b10) + mode_0		#convert to two bits
	mode_toggle = 0
	if mode_now == 0b11:							#set toggle flag for mode 3
		mode_now = 0b01
		mode_toggle = 1
	return mode_now


#set up gpios for LCD
#Setup BCM gpio for LCD, EN0 enable for LCD0, EN1 for LCD1
#lcd_setup_gpios(DB4, DB5, DB6, DB7, EN0, EN1, RS)
lcd_setup_gpios(5,8,11,25,16,21,20)

#setup gpios for this program
#gpio.setmode(gpio.BCM)								
gpio.setup(mode_pin_lsb, gpio.IN, pull_up_down = gpio.PUD_DOWN)
gpio.setup(mode_pin_usb, gpio.IN, pull_up_down = gpio.PUD_DOWN)

#initialize toggle timer
last_toggle = 0

#initialize and clear LCD 0
lcd_init(0)
lcd_clear(0)


#initialize and clear LCD 1
lcd_init(1)
lcd_clear(1)


#generate custom characters for big font
generate_big()

lcd_goto(0x00,0)
lcd_goto(0x40,1)

#clock mode selection
mode = check_mode(mode_pin_usb, mode_pin_lsb)				#mode at startup

#add mode pin interrupts
gpio.add_event_detect(mode_pin_lsb, gpio.BOTH,bouncetime = 300)
gpio.add_event_detect(mode_pin_usb, gpio.BOTH, bouncetime = 300)

#display time and date at startup
if mode == 0 or mode == 1:
	tme = return_time(UTC = 0)
	time_display(tme, 0)							#display local time starting at position 0
	
if mode ==1:
	dte = return_date(0)
	date_display(dte, 20, 0)						#display local date starting at position 20					

if mode == 0:
	tme = return_time(UTC = 1)
	time_display(tme, 20)							#display UTC time starting at position 20
	big_write('z',37)
	
if mode == 2:
	tme = return_time(UTC = 1)
	time_display(tme, 0)							#display UTC time starting at position 0
	dte = return_date(1)
	date_display(dte, 20, 0)						#display UTC date starting at position 20
	big_write(10,37)


while(1 == 1):
	if mode == 0 or mode ==1:						#local colon mode
		colon_display(7, 50)
	if mode == 0:									#UTC colon mode
		colon_display(pos = 27, col_on = 0)
	if mode == 2:									#UTC colon mode
		colon_display(7, 0)

	if gpio.event_detected(mode_pin_lsb):					#check mode at interupt
		mode = check_mode(mode_pin_usb, mode_pin_lsb)
		mode_flag = 1										#mode has changed 
		
	if gpio.event_detected(mode_pin_usb):					#check mode at interupt
		mode = check_mode(mode_pin_usb, mode_pin_lsb)
		mode_flag = 1
	
	toggle_now = time.time()								#toggle timer
	if toggle_now - last_toggle > toggle_dur and  mode_toggle:		#test for toggle duration and mode
		last_toggle = toggle_now
		mode ^= 0b11												#toggle mode
		mode_flag = 1
		
	now = datetime.datetime.now()
	if now.second == 0 or mode_flag:						#only at change of minute or mode
		if mode == 0 or mode == 1:
			tme = return_time(UTC = 0)
			time_display(tme, 0)							#display local time starting at position 0
			
		if mode == 1:
			dte = return_date(0)
			date_display(dte, 20, 0)						#display local date starting at position 20
			blank(37)										#blank last three positions
			blank(38)
			blank(39)

		if mode == 0:
			tme = return_time(UTC = 1)						
			time_display(tme, 20)							#display UTC time starting at position 20
			big_write('Z', 37)
			
		if mode == 2:
			tme = return_time(UTC = 1)
			time_display(tme, 0)							#display UTC time starting at position 0
			dte = return_date(1)
			date_display(dte, 20, 0)						#display UTC date starting at position 20
			big_write('Z', 37)
		
		mode_flag = 0										#clear mode flag
		time.sleep(.2)										#allow time for display to update
	




