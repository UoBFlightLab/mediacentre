 ls -1 /dev/video* | while read src
do
    echo $src
    v4l2-ctl -d $src --all
    v4l2-ctl -d $src --list-formats-ext
done 
