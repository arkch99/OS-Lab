read ch

case $ch in
	1) who | wc -l;;
	2) read n
	   read fname
	   head -$n $fname;;
	3) read fname
	   touch $fname
	   ls -l $fname;;
	*) echo "Invalid option";;
esac

# arko@arko:~/os_lab/sep25$ sh p3.sh
# 1
# 1
# arko@arko:~/os_lab/sep25$ sh p3.sh
# 2
# 3
# f4.txt
# line1
# line2
# line3
# arko@arko:~/os_lab/sep25$ sh p3.sh
# 3
# f4.txt
# -rw-r--r-- 1 arko arko 29 Sep 25 12:41 f4.txt
# arko@arko:~/os_lab/sep25$ sh p3.sh
# 5
# Invalid option
