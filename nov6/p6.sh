read n
c=1
f=1
while [ $c -le $n ]
do
	f=`expr $f \* $c`
	c=`expr $c + 1`
done
echo $f

# arko@arko:~/os_lab/nov6$ bash p6.sh
# 6
# 720