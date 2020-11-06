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
echo "${fibs[@]}"

# arko@arko:~/os_lab/nov6$ bash p4.sh
# 5
# 1 1 2 3 5