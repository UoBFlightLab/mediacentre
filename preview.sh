cat sources.txt | grep -v '^#' | while read line
do
  ffplay -v 0 -i $line &
done

