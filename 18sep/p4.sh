read a

rem=$(($a%2))
if [ $rem -eq 0 ];
then
	echo "Even"
else
	echo "Odd"
fi

# 4)
# arko@arko:~/os_lab/18sep$ sh p4.sh
# 2
# Even
# arko@arko:~/os_lab/18sep$ sh p4.sh
# 3
# Odd