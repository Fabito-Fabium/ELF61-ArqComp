#!/bin/bash
echo "DISCLAIMER! Before using this .sh please put it inside the folder with the VHDL files you want to process."

N_VHD=$(find . -name "*.vhd" | wc -l)
one=1
two=2
if [ "$N_VHD" == "$two" ]; then
	read -p "Enter main entity: " main
	
elif [ $two -gt $N_VHD ]; then
	echo "Hey there are some files missing wtf."
	exit

else
	read -p "Enter main entity: " main
	for i in $( eval echo {3..$N_VHD} )
	do
		read -p "Enter entity: " sec
		ghdl -a "$sec".vhd
		echo "$sec"
	done
fi
ghdl -a "$main".vhd "$main"_tb.vhd
ghdl -e "$main"_tb
ghdl -r "$main"_tb --wave=sim_wave.ghw
gtkwave sim_wave.ghw

#by Fabio Z. Y. Wang
