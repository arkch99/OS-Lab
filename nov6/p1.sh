echo 'Enter no. of integers:'
read n
i=0
max=0
min=9999
echo 'Enter the numbers:'
while [ $i -lt $n ]
do
read a
if [ $a -gt $max ]
then
max=$a
fi
if [ $a -lt $min ]
then
min=$a
fi
i=`expr $i + 1`
done
echo "Max = $max"
echo "Min = $min"

# arko@arko:~/os_lab/nov6$ bash p1.sh
# Enter no. of integers:
# 3
# Enter the numbers:
# 1
# 2
# 3
# Max = 3
# Min = 1