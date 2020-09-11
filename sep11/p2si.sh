echo "Principal"
read p
echo "Rate"
read r
echo "Time"
read t

echo "scale = 2; $p * $r * $t / 100" | bc

#arko@arko:~/os_lab/sep11$ sh p2si.sh 
# Principal
# 100
# Rate
# 2
# Time
# 4
# 8.00
