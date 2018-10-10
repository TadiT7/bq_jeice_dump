#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30328104:184d316dfb19d30e7eda7c22c27b00b5377c424e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26301732:ea4bac51f91f7ddf40efa9f6a8074735c6183137 EMMC:/dev/block/bootdevice/by-name/recovery 184d316dfb19d30e7eda7c22c27b00b5377c424e 30328104 ea4bac51f91f7ddf40efa9f6a8074735c6183137:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
