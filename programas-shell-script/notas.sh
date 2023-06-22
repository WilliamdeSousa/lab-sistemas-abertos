#!/bin/bash

for i in `seq 40 69`
do
	v1=$((500 - (6 * $i)))
	v2=`echo "scale=1;$v1/4" | bc`
	v3=`echo "$v2+0.5" | bc`
	precisa=`echo -n ${v3:0:2}`
	echo "Com a nota $i, precisa de $precisa pontos!"
done
