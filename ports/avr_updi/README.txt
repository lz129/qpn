About The QP-AVR Port
=====================
This directory contains the QP-nano ports to the 8-bit AVR tiny and mega processor family programmed via UPDI
The following ports are provided:

avr_updi
|
+-qk      - port to the preemptive QK kernel
| +-gnu   - port with the GNU-AVR toolset
| +-iar   - port with the IAR-AVR toolset
|
+-qv      - port to the cooperative QV kernel
| +-gnu   - port with the GNU-AVR toolset
| +-iar   - port with the IAR-AVR toolset


Please see the README.txt files in the sub-directories for more information
about building the QP libraries.