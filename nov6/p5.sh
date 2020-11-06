read n
a=0
b=0
c=1
fibs=()
i=0
while [ $i -lt $n ]
do
	fibs+=($c)	
	a=$b
	b=$c
	c=`expr $a + $b`
	i=`expr $i + 1`
done

nFibs=()
i=0
n=`expr $n - 1`
while [ $i -lt $n ]
do
	j=`expr ${fibs[$i]} + 1`
	next=`expr $i + 1`
	while [ $j -lt ${fibs[${next}]} ]	
	do
		nFibs+=($j)
		j=`expr $j + 1`
	done
	i=`expr $i + 1`
done

echo "${nFibs[@]}"

# arko@arko:~/os_lab/nov6$ bash p5.sh
# 6
# 4 6 7
