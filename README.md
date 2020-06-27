# BigFontClock
Code for Large Format Number Clock UTC and Local time

Clock display uses all four lines of LCD to display large numbers

Code is written in Python 3.6 for use with Raspbery pi.  Library files are basic code for  
LCD operation and generation of date and time in BCD format

.svg file for enclosure 

checkout https://www.ai6xg.com/post/big-font-clock-relieve-for-old-eyes for more details on software, hardware and build

A PC board for interfacing the LCD to the Rpi W was built in Kicad, schematic and board files now included.  The board has
a 555 based PWM dimmer for a backlit LCD display.  Enclosure has been modified with additional cutout for brightness control
