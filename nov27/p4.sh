ip=$1
i_base=$2
o_base=$3

echo "ibase=$i_base; obase=$o_base; $ip" | bc

# arko@arko:~/os_lab/nov27$ bash p4.sh 6 10 2
# 110
# arko@arko:~/os_lab/nov27$ bash p4.sh 6 10 16
# 6
# arko@arko:~/os_lab/nov27$ bash p4.sh 65 10 16
# 41
# arko@arko:~/os_lab/nov27$ bash p4.sh 6588 10 16
# 19BC