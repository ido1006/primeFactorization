#!/bin/bash

GROTHENDIECK_PRIME=57
ZERO=0
ONE=1
TWO=2
echo "put number you want to factorize."
read input_num

if [ $input_num -eq $GROTHENDIECK_PRIME ];
then
	echo -n "$input_num is Grothendieck prime number! (actually 3 * 19)"
	exit
fi

echo -n "$input_num = "
num=$input_num
for ((i=$TWO; i<=$num; i++));
do
	while [ $(($num % $i)) -eq $ZERO ]
	do
		if [ $input_num -eq $i ];
		then
			echo -n "prime number!"
			exit
		fi

		if [ $num -eq $i ];
		then
			echo -n "$i "
			exit
		fi

		echo -n "$i * "
		((num /= $i))
	done
done
