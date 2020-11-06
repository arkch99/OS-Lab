read n
bkp=$n
s=0
while [ $bkp -ne 0 ]
do
	d=`expr $bkp % 10`
	s=$(echo $s+$d^3 | bc)
	bkp=`expr $bkp / 10`
done

if [ $s -eq $n ]
then
	echo "Armstrong"
else
	echo "Not armstrong"
fi

# arko@arko:~/os_lab/nov6$ bash p2.sh
# 153
# Armstrong
# arko@arko:~/os_lab/nov6$ bash p2.sh
# 135
# Not armstrong