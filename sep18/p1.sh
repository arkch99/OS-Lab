reqFile=$1
if [ ! -e "$reqFile" ]; then
	echo "Does not exist!"
	touch $1
else
	echo "Exists:"
	ls -l $1
fi

# 1)
# arko@arko:~/os_lab/18sep$ sh p1.sh test
# Does not exist!
# arko@arko:~/os_lab/18sep$ sh p1.sh test
# Exists:
# -rw-r--r-- 1 arko arko 0 Sep 18 12:27 test