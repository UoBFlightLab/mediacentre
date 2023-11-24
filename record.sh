stream_id=0
cat sources.txt | while read line
do
  ffmpeg -v 0 $line -vcodec copy -an video-$(date +"%Y-%m-%d-%H-%M-%S")-src$stream_id.mkv &
  stream_id=$((stream_id+1))
done
echo "Use source stop.sh to stop."
