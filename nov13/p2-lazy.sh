touch tmp.txt
#echo $# > tmp.txt
len=$#
c=0
args=("$@")
while [ $c -ne $len ]; do
	echo "${args[$c]}" >> tmp.txt
	let c=c+1
done
sort -r tmp.txt
rm tmp.txt

# arko@arko:~/os_lab/nov13$ bash p2.sh 1 2 3 4
# 4
# 3
# 2
# 1