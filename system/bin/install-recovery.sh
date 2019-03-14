#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14931244:3b4fe10204de4efac338855810d7d37110a13124; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11851048:4b02d0591a473ffc509a9de4945f2574e85a12fc EMMC:/dev/block/bootdevice/by-name/recovery 3b4fe10204de4efac338855810d7d37110a13124 14931244 4b02d0591a473ffc509a9de4945f2574e85a12fc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
