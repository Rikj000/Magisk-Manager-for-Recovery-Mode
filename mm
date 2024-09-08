#!/sbin/sh
# Magisk Manager for Recovery Mode (mm)
# Copyright (C) 2018-2024, VR25 & Rikj000 @ xda-developers
# License: GPLv3+


main() {

tmpDir=/dev/_mm
tmpf=$tmpDir/tmpf
tmpf2=$tmpDir/tmpf2
mountPath=/_magisk
img=/data/adb/magisk.img
[ -f $img ] || img=/data/adb/modules

echo -e "\nMagisk Manager for Recovery Mode (mm) 2024.9.8
Copyright (C) 2018-2024, VR25 & Rikj000 @ xda-developers
License: GPLv3+\n"

trap 'exxit $?' EXIT

if is_mounted /storage/emulated; then
  echo -e "(!) This is meant to be used in recovery environment only!\n"
  exit 1
fi

umask 022
set -euo pipefail

mount /data 2>/dev/null || :
mount /cache 2>/dev/null || :

if [ ! -d /data/adb/magisk ]; then
  echo -e "(!) No Magisk installation found or installed version is not supported.\n"
  exit 1
fi

mkdir -p $tmpDir
mount -o remount,rw /
mkdir -p $mountPath

[ -f $img ] && e2fsck -fy $img 2>/dev/null 1>&2 || :
mount -o rw $img $mountPath
cd $mountPath
options
}


options() {

  local opt=""

  while :; do
    echo -n "##########################
l) List installed modules
##########################
Toggle
  c) Core only mode
  m) Magic mount
  d) Disable
  r) Remove
##########################
q) Quit
##########################

?) "
    read opt

    echo
    case $opt in
      m) toggle_mnt;;
      d) toggle_disable;;
      l) echo -e "Installed Modules\n"; ls_mods;;
      r) toggle_remove;;
      q) exit 0;;
      c) toggle_com;;
    esac
    break
  done

  echo -en "\n(i) Press <enter> to continue or \"q <enter>\" to quit... "
  read opt
  [ -z "$opt" ] || exit 0
  echo
  options
}


is_mounted() { grep -q "$1" /proc/mounts; }

ls_mods() { ls -1 $mountPath | grep -v 'lost+found' || echo "<None>"; }


exxit() {
  set +euo pipefail
  cd /
  umount -f $mountPath
  rmdir $mountPath
  mount -o remount,ro /
  rm -rf $tmpDir
  [ ${1:-0} -eq 0 ] && { echo -e "\nGoodbye.\n"; exit 0; } || exit $1
} 2>/dev/null


toggle() {
  local input="" mod=""
  local file="$1" present="$2" absent="$3"
  for mod in $(ls_mods | grep -v \<None\> || :); do
    echo -n "$mod ["
    [ -f $mountPath/$mod/$file ] && echo "$present]" || echo "$absent]"
  done

  echo -en "\nInput pattern(s) (e.g., a dot for all, acc, or fbind|xpo|viper): "
  read input
  echo

  for mod in $(ls_mods | grep -v \<None\> || :); do
    if echo $mod | grep -Eq "${input:-_noMatch_}"; then
      [ -f $mountPath/$mod/$file ] && { rm $mountPath/$mod/$file; echo "$mod [$absent]"; } \
        || { touch $mountPath/$mod/$file; echo "$mod [$present]"; }
    fi
  done
}


toggle_mnt() {
  echo -e "Toggle Magic Mount\n"
  [ -f $img ] && { toggle auto_mount ON OFF || :; } \
    || toggle skip_mount OFF ON
}


toggle_disable() {
  echo -e "Toggle ON/OFF\n"
  toggle disable OFF ON
}


toggle_remove() {
  echo -e "Mark for Removal ([X])\n"
  toggle remove X " "
}


toggle_com() {
  if [ -f /cache/.disable_magisk ] || [ -f /data/cache/.disable_magisk ]; then
    rm /data/cache/.disable_magisk /cache/.disable_magisk 2>/dev/null || :
    echo "(i) Core only mode [OFF]"
  else
    touch /data/cache/.disable_magisk /cache/.disable_magisk 2>/dev/null || :
    echo "(i) Core only mode [ON]"
  fi
}


main
