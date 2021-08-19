directory="~"
ex="c"
for i in "$directory"/*; 
  do
    extension=`echo "$i" | cut -d'.' -f2`
    if     [ -f "$i" ]; then        
        if [ $extension == $ex ]; then
            echo "$i ends with .$ex"
        else
            echo "$i does NOT end with .$ex"
        fi
    fi
  done