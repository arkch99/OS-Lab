args=("$@")
len=$#

for ((i = 0; i<$len; i++))
do
	for((j = $i; j<$len; j++))
	do
		if [ ${args[i]} -lt ${args[$j]} ]
		then			
			tmp=${args[j]}
			args[$j]=${args[$i]}
			args[$i]=$tmp
		fi
	done
done

echo ${args[*]}

# arko@arko:~/os_lab/nov13$ bash p2.sh 1 2 4 3 8 0
# 8 4 3 2 1 0