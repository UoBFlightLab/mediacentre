cat sources.txt | while read line
do
  ffplay -v 0 -i $line &
done

