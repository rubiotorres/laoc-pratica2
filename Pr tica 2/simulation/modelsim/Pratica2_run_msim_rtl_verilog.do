transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Aluno/Desktop/Prática\ 2 {C:/Users/Aluno/Desktop/Pr�tica 2/contador.v}

