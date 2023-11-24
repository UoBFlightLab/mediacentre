stream_id=0
file_stub=video-$(date +"%Y-%m-%d-%H-%M-%S")
cat sources.txt | while read line
do
  ffmpeg -v 0 $line -vcodec copy -an $file_stub-src$stream_id.mkv &
  stream_id=$((stream_id+1))
done
watch 'ps -f | grep ffmpeg | grep -v grep; ls -l '$file_stub'*.mkv'
pkill ffmpeg
