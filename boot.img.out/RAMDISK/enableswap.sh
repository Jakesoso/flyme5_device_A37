#!/bin/sh
MemTotalStr=`cat /proc/meminfo | grep MemTotal`
MemTotal=${MemTotalStr:16:8}

if [ $MemTotal -lt 2097152 ]; then
  #config 1GB zram size with memory less than 2 GB
   echo lz4 > /sys/block/zram0/comp_algorithm
   echo 1342177280 > /sys/block/zram0/disksize
   echo 180 > /proc/sys/vm/swappiness
   echo 40 > /proc/sys/vm/direct_swappiness
elif [ $MemTotal -lt 3145728 ]; then
  #config 1.5GB zram size with memory less than 3 GB
   echo lz4 > /sys/block/zram0/comp_algorithm
   echo 1610612736 > /sys/block/zram0/disksize
   echo 180 > /proc/sys/vm/swappiness
   echo 40 > /proc/sys/vm/direct_swappiness
else
  #config 2GB zram size with memory greater than 3 GB
   echo lz4 > /sys/block/zram0/comp_algorithm
   echo 2147483648 > /sys/block/zram0/disksize
   echo 180 > /proc/sys/vm/swappiness
   echo 40 > /proc/sys/vm/direct_swappiness
fi

/system/bin/tiny_mkswap /dev/block/zram0
/system/bin/tiny_swapon /dev/block/zram0
