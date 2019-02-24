for device in $(python vendor/one/tools/get_official_devices.py)
do
for var in eng user userdebug; do
add_lunch_combo one_$device-$var
done
done
