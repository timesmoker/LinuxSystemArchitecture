#!/bin/sh
echo "row :"$1
echo "column:"$2
if [ $1 -lt 1 ] || [ $2 -lt 1 ];then
	echo "Input value is less than 1"
else
	i=1
	while [ $i -le $1 ]
	do
		str=""
		j=1
		while [ $j -le $2 ]
		do
		val="$i*$j = `expr $i \* $j`"
		str="$str $val"
		j=`expr $j + 1`
		done
		echo $str
		i=`expr $i + 1`
	done
fi

exit 0

