directory="cprog"
ex="c"
#for i in $directory/*.c;
for i in ~/$directory/*.c;
  do
  	#echo $i
    extension=`echo $i | cut -d '.' -f2`
	#echo $extension
    if [ -f "$i" ]; then	 
        if [ $extension == $ex ]; then
            echo "$i ends with .$ex"
        else
            echo "$i does NOT end with .$ex"
        fi
    fi
  done