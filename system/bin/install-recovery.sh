#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30604584:c9fded581631b9d58a9a6d4448f009cce364f644; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26578212:7dcc78e62147e365decb1c5828830c370af3e8fd EMMC:/dev/block/bootdevice/by-name/recovery c9fded581631b9d58a9a6d4448f009cce364f644 30604584 7dcc78e62147e365decb1c5828830c370af3e8fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
