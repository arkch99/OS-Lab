read a
read b
if [ $a -gt $b ];
then
	echo "$a is greater"
else
	echo "$b is greater"
fi

# 3)
# arko@arko:~/os_lab/18sep$ sh p3.sh
# 7
# 8
# 8 is greater
# arko@arko:~/os_lab/18sep$ sh p3.sh
# 10
# 1
# 10 is greater
