str=$1
len=${#str}
c=$(echo "$len - 1" | bc)

rev=""

while [ $c -ge 0 ]; do	
	rev="${rev}${str:$c:1}"
	let c=c-1
done

if [ $str == $rev ]; then
	echo "Palindrome"
else
	echo "Not palindrome"
fi

# arko@arko:~/os_lab/nov13$ bash p1.sh aba
# Palindrome
# arko@arko:~/os_lab/nov13$ bash p1.sh abc
# Not palindrome