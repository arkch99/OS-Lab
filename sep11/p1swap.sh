read a
read b

echo "a is " $a
echo "b is " $b

a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`

echo "Without using a third variable: "

echo "a is now " $a
echo "b is now " $b

echo "Swapping them back with a third variable..."

t=$a
a=$b
b=$t

echo "a is now " $a
echo "b is now " $b

# arko@arko:~/os_lab/sep11$ sh p1swap.sh 
# 2
# 3
# a is  2
# b is  3
# Without using a third variable: 
# a is now  3
# b is now  2
# Swapping them back with a third variable...
# a is now  2
# b is now  3