sdcc -c main.c 
sdcc --model-small --code-loc 0x4000 --xram-loc 0 main.rel 
packihx main.ihx > main.hex 
copyclip main.hex