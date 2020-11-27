# confession - copied from rudrajit

clear
i="y"
echo "Enter name of database "
read db
if [[ ! -e $db ]]
then
    touch $db
    echo "Roll  |  Name  |  City">>$db
    
fi

while [ $i = "y" ]
do

echo "1.View the Data Base "
echo "2.View Specific Records "
echo "3.Add Records "
echo "4.Delete Records "
echo "5.Update Records "
echo "6.Exit "
echo "Enter your choice "
read ch
    case $ch in
        1)
		  sort -k1 -t "|" $db > tmp.txt
		  n_lines=$(wc -l tmp.txt | grep -o -P "[0-9]")
		  let n_lines=n_lines-1
		  echo "Roll  |  Name  |  City">$db
		  head -$n_lines tmp.txt >> $db
		  rm tmp.txt
		  cat $db;;		  
        2)echo "Enter Roll "
          read id
            grep -i "$id" $db;;
        3)echo "Enter Roll: "
          read id
          echo "Enter new std name: "
          read name
          echo "Enter City: "
          read city
          echo "$id  |  $name  |  $city">>$db;;
        4)echo "Enter Roll"
          read id
          dbs1=$(grep -v $id $db)
          echo $dbs1 > $db
          echo "Record is deleted"
          cat db;;
        5)echo "Enter Roll"
          read id
          dbs1=$(grep -v $id $db)
          echo $dbs1 > $db
          echo "Enter new std name: "
          read name
          echo "Enter City: "
          read city
          echo "$id  |  $name  |  $city">>$db;;        
        6)exit;;
        *)echo "Invalid choice ";;
    esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done

# arko@arko:~/os_lab/nov27$ bash p2.sh
# Enter name of database 
# testdb
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 3
# Enter Roll: 
# 45
# Enter new std name: 
# fgd
# Enter City: 
# eiki
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 3
# Enter Roll: 
# 1
# Enter new std name: 
# rgnh
# Enter City: 
# ij
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 1
# Roll  |  Name  |  City
# 1  |  rgnh  |  ij
# 45  |  fgd  |  eiki
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 4
# Enter Roll
# 45
# Record is deleted
# Roll | Name | City 
# 1 | rgnh | ij
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 3
# Enter Roll: 
# 23 
# Enter new std name: 
# dgnkd
# Enter City: 
# fe
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 1
# Roll  |  Name  |  City
# 1 | rgnh | ij
# 23  |  dgnkd  |  fe
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 5
# Enter Roll
# 23
# Enter new std name: 
# eee
# Enter City: 
# ttt
# Do u want to continue ?
# y
# 1.View the Data Base 
# 2.View Specific Records 
# 3.Add Records 
# 4.Delete Records 
# 5.Update Records 
# 6.Exit 
# Enter your choice 
# 1
# Roll  |  Name  |  City
# 1 | rgnh | ij
# 23  |  eee  |  ttt
# Do u want to continue ?
# n