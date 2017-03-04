#!/bin/bash

for i in `seq 0 8989`;
do
	echo $i
	j2=$(echo "scale = 2; $i / 5" | bc)
	z='0'
	j=$z$j2
	echo $j
	d=2.2
	#k=$(echo "$j+$d"|bc)
	#echo $k
	ffmpeg -ss $j -i i_am_legend_chunk1.mp3 -t $d out${i}.mp3
done