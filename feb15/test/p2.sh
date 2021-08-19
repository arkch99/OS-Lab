suffix="c"
for i in ~/*;
  do
    extension=`echo "$i" | cut -d'.' -f2`
    if     [ -f "$i" ]; then
        if [ $extension == $suffix ]; then
            echo "$i ends with .$suffix"
        else
            echo "$i does NOT end with .$suffix"
        fi
    fi
  done