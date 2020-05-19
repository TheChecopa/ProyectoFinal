transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/Alu.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/A10.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/buffer1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/buffer2.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/buffer3.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/buffer4.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/mux2.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/mux3.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/mux4.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/uc.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/uc_alu.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/test.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/add2.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/add1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/branch.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/mem.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/sign.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/shift1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/pc.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/mux1.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/banco.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/memIn.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal {C:/intelFPGA_lite/18.1/proyectos/ProyectoFinal/test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
