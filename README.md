**Synchronous-FIFO (Design)**
_____________________________________________________________________________________________________________________________________________________________________
Data is written into the FIFO at each clock cycle when the write enable signal is active, and the FIFO is not full. The write pointer increments after each successful write.
Data can be read from the FIFO at each clock cycle when the read enable signal is active, and the FIFO is not empty. The read pointer increments after each successful read.


**Verification Plan and architucture Synchronus -FIFO**
______________________________________________________________________________________________________________________________________________

**FIFO Specification for Verification**
______________________
**a)data is written into a FIFO When:**
i) wr_en = 1
ii) fifo_full=0
**b) After a sucessful Write:**
i) data_store
ii) Write pointer increment
**c)Data is read from the FIFO when:**
i)rd_en =1
ii)empty =0
**d)After sucessful read:**
i) Data is written 
ii) read pointer increment
**e) Fifo generate:**
i) full
ii) Empty
iii) almost full
iv)almost empty
v) overflow
vi)underflow

**** Requirement Analysis****

Before writing any testbench, understand the specification.

Feature	                                        Requirement
Write	                              Write only when wr_en=1 and full=0
Read	                              Read only when rd_en=1 and empty=0
Full Flag	                          Assert when FIFO becomes full
Empty Flag	                          Assert when FIFO becomes empty
Overflow	                          Assert if write attempted when full
Underflow	                          Assert if read attempted when empty
Pointer	                              Increment correctly
Data Order	                          FIFO order maintained

**Verification Plan**

Every specification item becomes one or more verification items.

Verification Item	                                 Method
Reset	                                          Directed Test
Write Operation                                	Directed + Random
Read Operation	                                Directed + Random
Simultaneous Read/Write	                               Random
Pointer Increment	                            Assertion + Scoreboard
Full Flag	                                            Directed
Empty Flag	                                            Directed
Overflow	                                          Negative Test
Underflow	                                          Negative Test
Wrap Around	                                           Directed
Data Integrity	                                       Scoreboard
Random Traffic	                                     Constrained Random
Coverage	                                         Functional Coverage

**UVM Testbench Architecture**

                          +------------------+
                          |      TEST        |
                          +---------+--------+
                                    |
                           Virtual Sequence
                                    |
                          Virtual Sequencer
                                    |
                  +-----------------+-----------------+
                  |                                   |
             Write Agent                        Read Agent
                  |                                   |
        +---------+---------+               +---------+---------+
        |                   |               |                   |
    Sequencer            Driver          Sequencer          Driver
        |                   |               |                   |
        +-------------------+---------------+-------------------+
                            |
                     FIFO Interface
                            |
                         FIFO DUT
                            |
        +-------------------+-------------------+
        |                                       |
     Write Monitor                        Read Monitor
        |                                       |
        +-------------------+-------------------+
                            |
                      Scoreboard
                            |
                 Functional Coverage
                            |
                       Assertions


**UVM Components**
Test
sequence
driver
monitor 
scoreboard
Covarage
assertation

**TEST_PLAN**
**Basic functional Test **
reset Test
single write
single read
multiple write 
multiple read
stimulus write/read
full condition 
overflow
empty
underflow
pointer wrap around














