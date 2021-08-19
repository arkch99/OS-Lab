read name

v=$(cat /etc/passwd | grep $name)

if [[ ${#v} -ne 0 ]]; then # check if the given name is in passwd
	echo "valid"
else
	echo "invalid"
fi

# arko@arko:~/os_lab/feb15$ bash p2.sh
# arko
# valid
# arko@arko:~/os_lab/feb15$ bash p2.sh
# arkos
# invalid
# arko@arko:~/os_lab/feb15$ bash p2.sh
# jkdjd
# invalid