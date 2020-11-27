read -p "Enter string: " str
read -p "Enter search string: " search
l_str=${#str}
l_search=${#search}
for ((i=0; i<$l_str; i++)) 
do
    substr=${str:$i:$l_search}
    if [ $substr == $search ]
    then 
        echo "Position of $search: $i"
        break
    fi 
done

# arko@arko:~/os_lab/nov27$ bash p1.sh
# Enter string: abcdef
# Enter search string: cde
# Position of cde: 2