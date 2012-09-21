#bash
./adb.linux kill-server
./adb.linux start-server
./adb.linux wait-for-device
./adb.linux push recovery /data/local/tmp
./adb.linux shell chmod 755 /data/local/tmp/cwm-rec
./adb.linux shell su -c /data/local/tmp/cwm-rec
./adb.linux shell rm -r /data/local/tmp/*
