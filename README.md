# C language

## Tools: 
- STRC51 board
- Tera Term: https://osdn.net/projects/ttssh2/releases/
- SDCC compiler: http://sdcc.sourceforge.net/

---

## Tera Term: Serial port setup
- Port: COM1
- Baud rate: 19200
- Data: 8 bit
- Parity: none
- Stop: 1 bit
- Flow control: none
- Transmit delay: 0 msec/char && 20 msec/line

---

## Task of the programm: 
Write a program that will capture text data from the serial port received in the form of independent lines. Each line should be treated in the following way: the first characters (to the space character) are to be the first argument in HEX format, subsequent characters (up to the next space character) will be the second argument in the DEC format and the last portion of characters up to the end of the line will be the third argument in OCT format. After receiving the entire CPU line in STRC51 it will perform operations:
arg1 / arg2 OR arg3
and the result of these operations will be sent to the PC in the HEX format. Assume that each of these three arguments can consist of one, two, three or four ASCII characters. Assume that after the operation the result will be able to register on the four ASCII characters. Let your solution be ready to accept subsequent lines without losing any of them.

---

## How to compile:
1. Run Tera Term
2. Reset the board 
3. Run compile.bat
4. ``` q ```
5. ``` alt+v ```
6. Set the values of HEX, DEC & OCT (Read the task)
