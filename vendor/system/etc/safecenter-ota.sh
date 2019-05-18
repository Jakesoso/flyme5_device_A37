#!/sbin/sh

busybox rm -rf /data/oppo/ota
busybox mkdir -p /data/oppo/ota
busybox cp -Rf /data/data/com.oppo.blacklist /data/oppo/ota/blacklist
busybox cp -Rf /data/data/com.oppo.trafficmonitor /data/oppo/ota/trafficmonitor
busybox cp -Rf /data/data/com.oppo.secure /data/oppo/ota/secure
busybox cp -Rf /data/data/com.oppo.providers.permissions /data/oppo/ota/permissions
busybox cp -Rf /data/data/com.oppo.safe /data/oppo/ota/safe
busybox chmod -R 777 /data/oppo/ota

busybox mkdir -p /data/media/0/Android/
busybox cp -Rf /data/data/com.nearme.note /data/media/0/Android/
busybox chmod -R 777 /data/media/0/Android/com.nearme.note

busybox cp -Rf /data/data/com.oppo.blacklist/databases/safe.db /data/media/0/Android/blacklist.db
busybox cp -Rf /data/data/com.color.safecenter/databases/safe.db /data/media/0/Android/safecenter.db
busybox chmod -R 777 /data/media/0/Android/blacklist.db
busybox chmod -R 777 /data/media/0/Android/safecenter.db

#added by xinyang.hu@Launcher
#for themespace. ColorOS2.1 update to ColorOS3.0, need move the downloaded resources to new folder
busybox mkdir -p /data/media/0/ColorOS/
busybox chmod -R 777 /data/media/0/ColorOS/

busybox mkdir -m 777 -p /data/media/0/ColorOS/ThemeStore/Themes
busybox mv -f /data/media/0/Themes/* /data/media/0/ColorOS/ThemeStore/Themes/
busybox chmod -R 777 /data/media/0/ColorOS/ThemeStore/Themes/

busybox mkdir -m 777 -p /data/media/0/ColorOS/ThemeStore/Themes/.Tlsdiw34
busybox mv -f /data/media/0/Themes/.Tlsdiw34/* /data/media/0/ColorOS/ThemeStore/Themes/.Tlsdiw34/
busybox chmod -R 777 /data/media/0/ColorOS/ThemeStore/Themes/.Tlsdiw34

busybox mkdir -m 777 -p /data/media/0/ColorOS/ThemeStore/Wallpapers
busybox mv -f /data/media/0/Wallpapers/* /data/media/0/ColorOS/ThemeStore/Wallpapers/
busybox chmod -R 777 /data/media/0/ColorOS/ThemeStore/Wallpapers

busybox mkdir -m 777 -p /data/media/0/ColorOS/ThemeStore/.lock/COLORLOCK
busybox mv -f /data/media/0/ThemeStore/.lock/COLORLOCK/* /data/media/0/ColorOS/ThemeStore/.lock/COLORLOCK/
busybox chmod -R 777 /data/media/0/ColorOS/ThemeStore/.lock/COLORLOCK

busybox mv -f /data/media/0/ThemeStore/* /data/media/0/ColorOS/ThemeStore/
busybox chmod -R 777 /data/media/0/ColorOS/ThemeStore/

busybox rm -rf /data/media/0/Themes
busybox rm -rf /data/media/0/Wallpapers
busybox rm -rf /data/media/0/ThemeStore

#remove theme resources file under data/theme when ota update from 2.1 to 3.0
busybox rm data/theme/oppo-framework-res
busybox rm data/theme/com.android.bluetooth
busybox rm data/theme/com.android.contacts
busybox rm data/theme/com.android.dialer
busybox rm data/theme/com.android.mms
busybox rm data/theme/com.android.phone
busybox rm data/theme/com.android.settings
busybox rm data/theme/com.android.systemui
busybox rm data/theme/com.android.wallpaper.livepicker
busybox rm data/theme/com.oppo.filemanager
busybox rm data/theme/com.oppo.gesture
busybox rm data/theme/com.oppo.launcher
busybox rm data/theme/com.oppo.phonenoareainquire
busybox rm data/theme/com.oppo.maxxaudio
busybox rm data/theme/com.oppo.usbselection
busybox rm data/theme/com.oppo.widget.smallweather
busybox rm data/theme/com.oppo.yellowpage
busybox rm data/theme/icons
busybox rm data/theme/wallpaper
busybox rm data/theme/ibimuyu/ibimuyu
busybox rm data/theme/lock/lockstyle
busybox rm data/theme/widget/weather_4x2
#for themespace,add end.

#remove camera libs under /data/app-lib when ota update from 2.1 to 3.0
busybox rm -rf /data/app-lib/FilterCamera
busybox rm -rf /data/app-lib/GifCamera
busybox rm -rf /data/app-lib/FaceBeautyCamera
#for camera,add end.