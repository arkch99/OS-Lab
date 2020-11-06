read a
read b
read c

for i in $a $b $c
do
	for j in $a $b $c
	do
		for k in $a $b $c
		do
			echo $i $j $k
		done
	done
done

# arko@arko:~/os_lab/nov6$ bash p3.sh
# 1  
# 2
# 3
# 1 1 1
# 1 1 2
# 1 1 3
# 1 2 1
# 1 2 2
# 1 2 3
# 1 3 1
# 1 3 2
# 1 3 3
# 2 1 1
# 2 1 2
# 2 1 3
# 2 2 1
# 2 2 2
# 2 2 3
# 2 3 1
# 2 3 2
# 2 3 3
# 3 1 1
# 3 1 2
# 3 1 3
# 3 2 1
# 3 2 2
# 3 2 3
# 3 3 1
# 3 3 2
# 3 3 3