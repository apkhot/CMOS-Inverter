# CMOS-Inverter

The static complementary CMOS gate-level circuit combines a pull-up (PUN) and a pull-down (PDN) network. Its structure is shown in the Figure 2 in the static complementary CMOS gate circuit design, a pull-down network is generally first designed according to the logic solution calculation formula to be implemented. Then a pull-up network is made according to the logic structure of the pull-down network. The specific implementation is to exchange the serial-parallel mode of the MOS transistors in the pull-down network and the N/P attributes of the MOS transistors to obtain a new network in the pull-up network. In terms of operation, for NMOS tubes, series connection means to do the method operation, parallel means to do the addition operation, and vice versa.

Schematic:
![CMOS_Inverter](https://github.com/apkhot/CMOS-Inverter/assets/47900640/1d017823-c13b-4e0c-9cf2-931b88866371)

Output:
![TransientAnalysis](https://github.com/apkhot/CMOS-Inverter/assets/47900640/e7d8c4c6-0985-4ae4-b868-4761da5e8842)

Transient Analysis:
![DCAnalysis](https://github.com/apkhot/CMOS-Inverter/assets/47900640/6e8707b7-62c7-4d38-8192-199903d5a3d8)

The transient characteristics of the inverter can be expressed by the rise time and fall time of the inverter.
The rise time tr is the time required to make the output level of the inverter from 0.1vdd to 0.9vdd, and
the fall time tf is defined as the time required for the output level to fall from 0.9vdd to 0.1vdd. Set the
input high-level inverter to 1.8V and the input low-level to 0V. Similarly, the output high level and low level are 1.8V and 0V respectively. It can also be found that the potential of input and output is just the opposite, which satisfies Vout= Vin. According to the design requirements, select the appropriate aspect ratio, so that the inverter input flip level is exactly half of the supply voltage, Vin = 0.5VDD. Through transient simulation, the rise time and fall time of the inverter are
obtained. It can be found that the threshold voltage is approximately equal to 0.9V, and it is not difficult to find that the rise time is about 2ns. 

