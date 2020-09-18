read a
read b
echo "Adding:"
echo "scale=2; $a + $b" | bc
echo "Multipliying:"
echo "scale=2; $a * $b" | bc
echo "Division:"
echo "scale=2; $a / $b" | bc
echo "Subtraction:"
echo "scale=2; $a - $b" | bc

# 2)
# arko@arko:~/os_lab/18sep$ sh p2.sh
# 3.4
# 9.8
# Adding:
# 13.2
# Multipliying:
# 33.32
# Division:
# .34
# Subtraction:
# -6.4