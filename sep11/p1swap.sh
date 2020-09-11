read a
read b

echo "a is " $a
echo "b is " $b

a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`

echo "a is now " $a
echo "b is now " $b

#arko@arko:~/os_lab/sep11$ sh p1swap.sh 
# 2
# 3
# a is  2
# b is  3
# a is now  3
# b is now  2