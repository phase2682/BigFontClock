#Dan Koellen AI6XG Jan 2020

#This is for 4 line x 40 character LCD
#This LCD configuration has two controllers

#two LCD controllers has two enables
#EN0 is top two lines designated LCD0 (LCD = 0)
#EN1 is bottom two lines designated LCD1 (LCD = 1)

#includes function to generate custom characters

import datetime
from time import sleep
import RPi.GPIO as gpio

#print('import')

#Setup BCM gpio for LCD, EN0 enable for LCD0, EN1 for LCD1
#lcd_setup_gpios(DB4, DB5, DB6, DB7, EN0, EN1, RS)
def lcd_setup_gpios(DB4, DB5, DB6, DB7, EN0, EN1, RS):			
	global db4, db5, db6, db7, en0, en1, rs 
	db4 = DB4
	db5 = DB5
	db6 = DB6
	db7 = DB7
	en0 = EN0
	en1 = EN1
	rs = RS
	
	gpio.setmode(gpio.BCM)
	gpio.setwarnings(False)

#setup outputs and initial states
	gpio.setup(DB4, gpio.OUT, initial = gpio.LOW)
	gpio.setup(DB5, gpio.OUT, initial = gpio.LOW)
	gpio.setup(DB6, gpio.OUT, initial = gpio.LOW)
	gpio.setup(DB7, gpio.OUT, initial = gpio.LOW)
	
	gpio.setup(EN0, gpio.OUT, initial = gpio.HIGH)
	gpio.setup(EN1, gpio.OUT, initial = gpio.HIGH)
	
	gpio.setup(RS, gpio.OUT, initial = gpio.LOW)

#strobe enable top LCD 0 bottom 1
#lcd_strobe(LCD)
def lcd_strobe(LCD):				
	if LCD:
		p = en1
	else:
		p = en0
	gpio.output(p,1)
	sleep(.002)
	gpio.output(p,0)	
	

#write a byte to the LCD in 4 bit mode, top LCD 0, bottom 1
#lcd_write(c, LCD):
def lcd_write(c, LCD):							#top LCD 0, bottom 1
	sleep(.001)
	gpio.output(db4,((c >> 4) & 0x01))		#upper nibble first bit
	gpio.output(db5,((c >> 5) & 0x01))		#upper nibble second bit
	gpio.output(db6,((c >> 6) & 0x01))		#upper nibble third bit
	gpio.output(db7,((c >> 7) & 0x01))		#upper nibble fourth bit	
	lcd_strobe(LCD)
	
	
	gpio.output(db4,((c) & 0x01))			#lower nibble first bit
	gpio.output(db5,((c >> 1) & 0x01))		#lower nibble second bit
	gpio.output(db6,((c >> 2) & 0x01))		#lower nibble third bit
	gpio.output(db7,((c >> 3) & 0x01))		#lower nibble fourth bit
	lcd_strobe(LCD)

 #clear and home LCD top 0 bottom 1
 #lcd_clear(LCD)
def lcd_clear(LCD):
	gpio.output(rs, 0)
	lcd_write(0x1,LCD)
	sleep(.002)
	
#write one character c to LCD top 0 bottom 1
#lcd_putch(c, LCD)
def lcd_putch(c, LCD):
	gpio.output(rs, 1)				#write characters
	lcd_write(c, LCD)
	
#write a string s of characters to LCD top 0 bottom 1
#lcd_puts(s, LCD)
def lcd_puts(s, LCD):
	gpio.output(rs, 1)
	for i in range(len(s)):
		c = ord(s[i])
		lcd_write(c, LCD)
		
#go to specific position pos on LCD top 0 bottom 1
#lcd_goto(pos, LCD)
def lcd_goto(pos, LCD):
	gpio.output(rs, 0)
	lcd_write(pos + 0x80, LCD)
	
#initialise the LCD and put in 4 bit mode
#LCD top 0 bottom 1
#lcd_init(LCD)
def lcd_init(LCD):
	gpio.output(rs, 0)
	init_value = 0x3
	if LCD:
		gpio.output(en1,0)
	else:
		gpio.output(en0,0)
	sleep(.05)
	gpio.output(db4,((init_value) & 0x01))			#upper nibble first bit
	gpio.output(db5,((init_value >> 1) & 0x01))		#upper nibble second bit
	gpio.output(db6,((init_value >> 2) & 0x01))		#upper nibble third bit
	gpio.output(db7,((init_value >> 3) & 0x01))		#upper nibble fourth bit	
	lcd_strobe(LCD)
	sleep(.01)
	lcd_strobe(LCD)
	sleep(.01)
	lcd_strobe(LCD)
	sleep(.01)
	#set to four bit mode
	gpio.output(db4, 0)		#upper nibble first bit
	gpio.output(db5, 1)		#upper nibble second bit
	gpio.output(db6, 0)		#upper nibble third bit
	gpio.output(db7, 0)		#upper nibble fourth bit
	lcd_strobe(LCD)
	
	lcd_write(0x28, LCD)	#4 bit interface, 2 lines
	#lcd_write(0x20, LCD)	#4 bit interface, 1 line
	lcd_write(0x10, LCD)	
	lcd_write(0x0c, LCD)	#display on, cursor off, blink off
	#lcd_write(0xd, LCD)		#display on, cursor off, blink on
	#lcd_write(0xe, LCD)		#display on, cursor on, blink off
	#lcd_write(0xf, LCD)		#display on, cursor on, cursor blink
	lcd_clear(LCD)
	lcd_write(0x06, LCD)		#set entry mode, cursor right, display no shift
	
#create custom characters in location loc 0 - 7
#charmap is line 0 -7 pixel map, 1 is dark
#LCD top 0 bottom 1
#lcd_cust_char(loc, charmap, LCD)
def lcd_cust_char(loc, charmap, LCD):
	gpio.output(rs, 0)				#command
	loc = loc & 0b0000111			#3 bits only
	loc = loc << 3					#shift to address position
	lcd_write(loc + 0x40, LCD)		#0x40 sets CGRAM address
	gpio.output(rs, 1)				#write data
	for k in range(8):
		lcd_write(charmap[k], LCD)	#line pixel map
			


	
	
	

	

