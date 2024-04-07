#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
#This is a small project developed with the intent of learning a bit of shell script to not type at all when it comes to ghdl and gtkwave commands. (so yeah, I'm really lazy.)
echo -e "${bold}DISCLAIMER! ${normal}Before using this .sh please certify that it is inside the folder with the VHDL files you want to process. And ${bold}DO NOT run this script${normal} if there is a file that is not a ${bold}.vhd, .ghw${normal} or ${bold}.sh${normal} if you don't wish it gone.\n"

while true; do
    read -p "${bold}Do you wish to proceed? (y/n): ${normal}" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * )
    esac
done
clear && printf '\e[3J'
read -p "Enter simulation time in ${bold}ns${normal}: " time

main=$(find . -name "*_tb.vhd")
len=${#main}
main=${main:7:$len-14}

comp=$(find . -name "*.vhd" -and ! -name "*$main*")
dtBar="./"
N_comp=$(find . -name "*.vhd" -and ! -name "*$main*" | wc -l)

count=0
while [ $count -lt $N_comp ]
do
	comp=${comp/$dtBar/}
	((count++))
done

if (( $N_comp > 0 )); then
	ghdl -a $comp
fi

ghdl -a Eq01-"$main".vhd Eq01-"$main"_tb.vhd
ghdl -e "$main"_tb
ghdl -r "$main"_tb --stop-time="$time"ns --wave=Eq01-"$main".ghw
N_GTKW=$(find . -name "Eq01*.gtkw" | wc -l)
ghdl --clean
ghdl --remove
if (( $N_GTKW > 0 )); then
	gtkwave Eq01-"$main".gtkw
else
	gtkwave Eq01-"$main".ghw
fi

echo -e "\n${bold}by Fabio Z. Y. Wang${Normal}\n"

sleep 1
