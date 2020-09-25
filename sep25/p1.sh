read ch

case $ch in
	1) cat f1.txt f2.txt > f3.txt
	cat f3.txt;;
	2) grep "sentence" f1.txt;;
	*) echo "Invalid option";;
esac

# arko@arko:~/os_lab/sep25$ sh p1.sh
# 1
# sentence 1 is a sentencesentence 2 is a sentencearko@arko:~/os_lab/sep25$ sh p1.sh
# 2
# sentence 1 is a sentence
# arko@arko:~/os_lab/sep25$ sh p1.sh
# 3
# Invalid option