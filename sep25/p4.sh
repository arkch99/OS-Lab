echo "Words: "
wc -w < $1
echo "Characters: "
wc -c < $1
echo "Whitespace: "
grep -o " " $1 | wc -l
echo "Special characters: "
grep -o -P "[\W]" f5.txt | grep -v " " | wc -l

# arko@arko:~/os_lab/sep25$ sh p4.sh f5.txt
# Words: 
# 6
# Characters: 
# 44
# Whitespace: 
# 6
# Special characters: 
# 9