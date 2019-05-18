#! /system/bin/sh
cp -a /system/etc/wifi/wpa_supplicant.conf /data/misc/wifi/
chmod 0660 /data/misc/wifi/wpa_supplicant.conf
chown system.wifi /data/misc/wifi/wpa_supplicant.conf

#echo "busybox ifconfig wlan0 up"
#busybox ifconfig wlan0 up

#STATE=`getprop init.svc.wpa_supplicant`
#echo $STATE
#if [ test $STATE -ne "running" ]; then
#	setprop ctl.start wpa_supplicant
#fi

setprop wlan.driver.status ok
sleep 1  ;
#yuyi@Connectivity.WiFi,2016/01/06,modify begin for mos mode enable wifi 
#echo S>/dev/wmtWifi
#setprop ctl.start wpa_supplicant
#setprop ctl.start p2p_supplicant
# sleep 20;
# "echo S>/dev/wmtWifi" to reset wifi is  abandoned by mtk
echo 1 >/dev/wmtWifi
sleep 1 ;
echo 0 >/dev/wmtWifi
sleep 1 ;
echo 1 >/dev/wmtWifi
sleep 1 ;
ifconfig wlan0 up
sleep 1	;
setprop ctl.start wpa_supplicant
#setprop ctl.start p2p_supplicant
#yuyi@Connectivity.WiFi,2016/01/06,modify end for mos mode enable wifi 
sleep 1  ;
setprop ctl.start factory_no_image
#setprop WPaMod 1
#getprop init.svc.wpa_supplicant



