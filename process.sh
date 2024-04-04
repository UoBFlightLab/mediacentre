mkdir -p arch
mkdir -p proc
cd raw
for f in *.mkv
do
  ffmpeg -y -i $f ../proc/$f.mp4 && mv $f ../arch
done
cd ..

