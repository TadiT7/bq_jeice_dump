build_type=$(getprop ro.build.type)
# This check is important for boot userdebug + system user
fingerprint=$(getprop ro.bootimage.build.fingerprint)

if [ -f /cache/bq_reset ] || [ "$build_type" == "userdebug" ] || [[ $fingerprint == *"userdebug"* ]] || [ "$build_type" == "eng" ]; then
    setprop persist.sys.usb.config diag,serial_smd,rmnet_qti_bam,adb
    setprop persist.service.adb.secure 0
fi
