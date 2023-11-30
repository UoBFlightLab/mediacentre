echo '#automatic device settings using get_source.sh'

echo '#BRIO'
v4l2-ctl --list-devices | grep -A1 BRIO | grep -o '/dev/video[0-9]*' | while read dev
do
    echo "-input_format mjpeg -video_size 3840x2160 -i $dev"
done

echo '#UVCHDCAP'
v4l2-ctl --list-devices | grep -A1 UVCHDCAP | grep -o '/dev/video[0-9]*' | while read dev
do
    echo "-framerate 30 -i $dev"
done

echo '#Integrated'
v4l2-ctl --list-devices | grep -A1 ntegrated | grep -o '/dev/video[0-9]*' | while read dev
do
    echo "-framerate 30 -i $dev"
done
