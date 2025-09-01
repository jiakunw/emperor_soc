transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+microblaze_riscv_0  -L xil_defaultlib -L xpm -L microblaze_v11_0_14 -L microblaze_riscv_v1_0_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.microblaze_riscv_0 xil_defaultlib.glbl

do {microblaze_riscv_0.udo}

run 1000ns

endsim

quit -force
