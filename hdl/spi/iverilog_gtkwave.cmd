REM cmd script for running the spi example

:: cleanup first
erase spi.out
erase spi.vcd

:: compile the verilog sources (testbench and RTL)
iverilog -o spi.out spi_tb.v spi.v
:: run the simulation
vvp spi.out

:: open the waveform and detach it
gtkwave spi.vcd gtkwave.sav &
