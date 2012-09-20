# By adridu59. Based on DooMLoRD's work.

if [ -d "temp" ] ; then
	rm -r temp
fi
mkdir temp
cp -r Custom/* temp/.
cd temp
find -name '.gitignore' -exec rm {} \;
find . | cpio -o -H newc | gzip > ../ramdisk.cpio.gz
cd ..
rm -r temp
echo "Ramdisk created."
