v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -970 -470 -170 -70 {flags=graph
y1=-0.0014
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3e-09
x2=2.7e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 220 -230 240 -230 {
lab=Vin}
N 220 -230 220 -150 {
lab=Vin}
N 220 -150 230 -150 {
lab=Vin}
N 230 -150 240 -150 {
lab=Vin}
N 200 -190 220 -190 {
lab=Vin}
N 280 -200 280 -180 {
lab=Vout}
N 280 -190 300 -190 {
lab=Vout}
N 300 -190 390 -190 {
lab=Vout}
N 180 -190 200 -190 {
lab=Vin}
N 280 -230 290 -230 {
lab=VDD}
N 290 -260 290 -230 {
lab=VDD}
N 280 -260 290 -260 {
lab=VDD}
N 280 -150 290 -150 {
lab=GND}
N 290 -150 290 -120 {
lab=GND}
N 280 -120 290 -120 {
lab=GND}
C {devices/vdd.sym} 280 -260 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 280 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 80 -270 0 0 {name=Vdd value=1.8
}
C {devices/vdd.sym} 80 -300 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 80 -240 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 80 -150 0 0 {name=VVin value="pulse(0 1.8 0 1n 1n 4n 8n)"
}
C {devices/gnd.sym} 80 -120 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/corner.sym} 450 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 660 -350 0 0 {name=SPICE only_toplevel=false value="


.control
  save all
  tran 0.004n 30n
  write test_inv.raw
set appendwrite
  dc VVin 0 1.8 0.1
  
  write test_inv.raw
* exit
.endc
"
}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 80 -180 2 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 390 -190 2 0 {name=p3 sig_type=std_logic lab=Vout
}
C {sky130_fd_pr/pfet_01v8.sym} 260 -230 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 260 -150 0 0 {name=M1
L=0.15
W=12
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/launcher.sym} -310 -580 0 0 {name=h5
descr="load waves_tran" 
tclcommand="xschem raw_read $netlist_dir/test_inv.raw tran"
}
C {devices/launcher.sym} -590 -580 0 0 {name=h1
descr="load waves_dc" 
tclcommand="xschem raw_read $netlist_dir/test_inv.raw dc"
}
C {devices/launcher.sym} -860 -580 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
