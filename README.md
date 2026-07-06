# Synchronus-FIFO
Synchronus-FIFO 
_____________________________________________________________________________________________________________________________________________________________________
Data is written into the FIFO at each clock cycle when the write enable signal is active, and the FIFO is not full. The write pointer increments after each successful write.
Data can be read from the FIFO at each clock cycle when the read enable signal is active, and the FIFO is not empty. The read pointer increments after each successful read.
