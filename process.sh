for f in *.mkv
do
  ffmpeg -n -i $f $f.mp4
done

