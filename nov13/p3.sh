str=$1
search=$2
# searches for occurances of 2nd arg in 1st
echo $1 | grep -o $2 | wc -l

# arko@arko:~/os_lab/nov13$ bash p3.sh aabbaaaa a
# 6
# arko@arko:~/os_lab/nov13$ bash p3.sh aabbaaaa b
# 2