read fname
read startLine
read nLine

endLine=$(echo "$startLine+$nLine" | bc)

sed -n "$startLine, $endLine p" $fname

# arko@arko:~/os_lab/sep25$ sh p2.sh
# f4.txt
# 3
# 2
# line3
# line4
# line5