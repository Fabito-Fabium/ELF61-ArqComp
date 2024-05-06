transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_un_controle.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_toplevel.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_ROM_PC_UC.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_reg16bits.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_ramdisp.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-EX03FPGA_program_counter.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-EX03FPGA_maq_estados.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-Ex03FPGA_Hex.vhd}
vcom -93 -work work {C:/Users/victo/OneDrive/UTFPR/2024.1/Arquitetura e Organizacao de computadores/Labs/Lab 7/Eq01-EX03FPGA_conteudo_rom.vhd}

