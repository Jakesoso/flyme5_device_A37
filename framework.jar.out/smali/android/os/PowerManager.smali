.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field private static final DEFAULT_MANUFACTURE:Ljava/lang/String; = "UNKNOWN"

.field private static final DEVICE_PATH:Ljava/lang/String; = "/proc/devinfo"

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_FINGERPRINT:I = 0x63

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x8

.field public static final GO_TO_SLEEP_REASON_SHUTDOWN:I = 0x7

.field public static final GO_TO_SLEEP_REASON_SMARTBOOK:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field private static final INVAILD_SCREEN_DEFAULT_BRIGHTNESS:I = -0x1

.field private static final KEY_DEVICE_MANUFACTURE:Ljava/lang/String; = "Device manufacture:"

.field private static final KEY_DEVICE_VERSION:Ljava/lang/String; = "Device version:"

.field private static final LCD_BACKLIGHT_CONFIG_PROPERTY_BOE:Ljava/lang/String; = "ro.lcd.backlight.config_boe"

.field private static final LCD_BACKLIGHT_CONFIG_PROPERTY_JDI:Ljava/lang/String; = "ro.lcd.backlight.config_jdi"

.field private static final LCD_BACKLIGHT_CONFIG_PROPERTY_SAMSUNG:Ljava/lang/String; = "ro.lcd.backlight.config_samsung"

.field private static final LCD_BACKLIGHT_CONFIG_PROPERTY_TIANMA:Ljava/lang/String; = "ro.lcd.backlight.config_tianma"

.field private static final LCD_BACKLIGHT_CONFIG_PROPERTY_TRULY:Ljava/lang/String; = "ro.lcd.backlight.config_truly"

.field private static final LCD_MANUFACTURE_BOE:Ljava/lang/String; = "BOE"

.field private static final LCD_MANUFACTURE_JDI:Ljava/lang/String; = "jdi"

.field private static final LCD_MANUFACTURE_SAMSUNG:Ljava/lang/String; = "Samsung"

.field private static final LCD_MANUFACTURE_TIANMA:Ljava/lang/String; = "Tianma"

.field private static final LCD_MANUFACTURE_TRULY:Ljava/lang/String; = "TRULY"

.field public static final MTK_ULTRA_DIMMING_SUPPORT:Z

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final POWER_HINT_BALANCE:I = 0x9

.field public static final POWER_HINT_PERFORMANCE_BOOST:I = 0x8

.field public static final POWER_HINT_POWER_SAVING:I = 0x7

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_OFFSET:I = 0x2

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCREEN_DEFAULT_BRIGHTNESS_OFFSET:I = 0x1

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final ULTRA_DIMMING_BRIGHTNESS_MINIMUM:I = 0x1

.field public static final ULTRA_DIMMING_PHYSICAL_CONTROL:I = 0xa

.field public static final ULTRA_DIMMING_PHYSICAL_MININUM:I = 0x8

.field public static final ULTRA_DIMMING_VIRTUAL_CONTROL:I = 0x50

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final WAKE_UP_REASON_FINGERPRINT:I = 0x63

.field public static final WAKE_UP_REASON_SHUTDOWN:I = 0x1

.field public static final WAKE_UP_REASON_SMARTBOOK:I = 0x0

.field public static final WAKE_UP_REASON_WINDOWMANAGER:I = 0x2

.field private static final dimmingGammaHighInv:F


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1482
    const-string/jumbo v0, "ro.mtk_ultra_dimming_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    .line 1508
    const-wide v0, 0x3fd4141420000000L    # 0.3137255012989044

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3fa4141420000000L    # 0.03921568766236305

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/os/PowerManager;->dimmingGammaHighInv:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 482
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 483
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 484
    return-void
.end method

.method public static dimmingPhysicalToVirtual(I)I
    .locals 4
    .param p0, "physicalValue"    # I

    .prologue
    .line 1519
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-nez v0, :cond_0

    .line 1527
    .end local p0    # "physicalValue":I
    :goto_0
    return p0

    .line 1522
    .restart local p0    # "physicalValue":I
    :cond_0
    const/16 v0, 0xa

    if-gt p0, v0, :cond_1

    .line 1523
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p0, v0

    goto :goto_0

    .line 1527
    :cond_1
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    sget v2, Landroid/os/PowerManager;->dimmingGammaHighInv:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0
.end method

.method private getDeviceManufacture(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 575
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/devinfo/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v3, "file":Ljava/io/File;
    const-string v7, "UNKNOWN"

    .line 579
    .local v7, "manufacture":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 580
    const-string v8, "PowerManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not exist..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v8, "UNKNOWN"

    .line 625
    :goto_0
    return-object v8

    .line 584
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_1

    .line 585
    const-string v8, "PowerManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No permission to read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v8, "UNKNOWN"

    goto :goto_0

    .line 589
    :cond_1
    const/4 v0, 0x0

    .line 592
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 596
    const-string v8, "PowerManager"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v8, "Device manufacture:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 599
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "lineSplit":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v8, v6

    if-le v8, v10, :cond_2

    .line 602
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 604
    if-eqz v7, :cond_2

    .line 605
    const-string v8, "PowerManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "manufacture : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    .end local v6    # "lineSplit":[Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_7

    .line 618
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 625
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    if-nez v7, :cond_6

    const-string v8, "UNKNOWN"

    goto :goto_0

    .line 619
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "PowerManager"

    const-string v9, "bufferedReader.close IOException caught"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 621
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 611
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v8, "PowerManager"

    const-string v9, "FileNotFoundException caught"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    if-eqz v0, :cond_4

    .line 618
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 619
    :catch_2
    move-exception v2

    .line 620
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "PowerManager"

    const-string v9, "bufferedReader.close IOException caught"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 613
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 614
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v8, "PowerManager"

    const-string v9, "IOException caught"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 616
    if-eqz v0, :cond_4

    .line 618
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 619
    :catch_4
    move-exception v2

    .line 620
    const-string v8, "PowerManager"

    const-string v9, "bufferedReader.close IOException caught"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_5

    .line 618
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 621
    :cond_5
    :goto_5
    throw v8

    .line 619
    :catch_5
    move-exception v2

    .line 620
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PowerManager"

    const-string v10, "bufferedReader.close IOException caught"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    move-object v8, v7

    .line 625
    goto/16 :goto_0

    .line 616
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 613
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 611
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_7
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getScreenAutoBrightnessConfig(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    const/4 v3, -0x1

    .line 630
    .local v3, "default_brightness":I
    const-string/jumbo v6, "lcd"

    invoke-direct {p0, v6}, Landroid/os/PowerManager;->getDeviceManufacture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "lcd_manufacture":Ljava/lang/String;
    const/4 v2, 0x0

    .line 632
    .local v2, "config_string_from_property":Ljava/lang/String;
    const-string v6, "BOE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 633
    const-string/jumbo v6, "ro.lcd.backlight.config_boe"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    :goto_0
    const-string v6, "PowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config_string_from_property : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "brightness_string_config":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    .line 651
    const/4 v1, -0x1

    .line 653
    .local v1, "config_length":I
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    :goto_1
    add-int/lit8 v6, v1, 0x1

    array-length v7, v0

    if-eq v6, v7, :cond_7

    .line 660
    const/4 v3, -0x1

    .line 673
    .end local v0    # "brightness_string_config":[Ljava/lang/String;
    .end local v1    # "config_length":I
    :cond_0
    :goto_2
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 677
    .end local v3    # "default_brightness":I
    :cond_1
    return v3

    .line 634
    .restart local v3    # "default_brightness":I
    :cond_2
    const-string v6, "TRULY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 635
    const-string/jumbo v6, "ro.lcd.backlight.config_truly"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 636
    :cond_3
    const-string v6, "Tianma"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 637
    const-string/jumbo v6, "ro.lcd.backlight.config_tianma"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 638
    :cond_4
    const-string v6, "Samsung"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 639
    const-string/jumbo v6, "ro.lcd.backlight.config_samsung"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 640
    :cond_5
    const-string/jumbo v6, "jdi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 641
    const-string/jumbo v6, "ro.lcd.backlight.config_jdi"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 643
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 654
    .restart local v0    # "brightness_string_config":[Ljava/lang/String;
    .restart local v1    # "config_length":I
    :catch_0
    move-exception v4

    .line 655
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v6, "PowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config_length NumberFormatException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, -0x1

    goto :goto_1

    .line 663
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 664
    const-string v6, "PowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default_brightness : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 665
    :catch_1
    move-exception v4

    .line 666
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "PowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default_brightness NumberFormatException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v3, -0x1

    goto/16 :goto_2
.end method

.method public static useTwilightAdjustmentFeature()Z
    .locals 2

    .prologue
    .line 688
    const-string/jumbo v0, "persist.power.usetwilightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 752
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :sswitch_0
    if-nez p1, :cond_0

    .line 764
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    return-void

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public boostScreenBrightness(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1020
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDefaultScreenBrightnessSetting()I
    .locals 4

    .prologue
    .line 531
    sget-boolean v2, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 534
    .local v0, "defaultValue":I
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 536
    .local v1, "screenBrightnessVirtualValues":Z
    if-nez v1, :cond_0

    .line 537
    invoke-static {v0}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result v0

    .line 549
    .end local v0    # "defaultValue":I
    .end local v1    # "screenBrightnessVirtualValues":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/os/PowerManager;->getScreenAutoBrightnessConfig(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 4

    .prologue
    const v3, 0x10e0052

    .line 509
    sget-boolean v2, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 512
    .local v1, "settingMaximum":I
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 514
    .local v0, "screenBrightnessVirtualValues":Z
    if-nez v0, :cond_0

    .line 515
    invoke-static {v1}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result v1

    .line 521
    .end local v0    # "screenBrightnessVirtualValues":Z
    .end local v1    # "settingMaximum":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 494
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenState()I
    .locals 2

    .prologue
    .line 1204
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getScreenState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1206
    :goto_0
    return v1

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public goToSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 854
    return-void
.end method

.method public goToSleep(JII)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isInteractive()Z
    .locals 2

    .prologue
    .line 1142
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1144
    :goto_0
    return v1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerSaveMode()Z
    .locals 2

    .prologue
    .line 1174
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isPowerSaveMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1176
    :goto_0
    return v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1080
    :goto_0
    return v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nap(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 998
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 747
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 952
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->powerHint(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1159
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1037
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightOffForWfd(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightOffForWfd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBlNotify()V
    .locals 2

    .prologue
    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->setBlNotify()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 1191
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1193
    :goto_0
    return v1

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSmartBookScreen(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setSmartBookScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public userActivity(JII)V
    .locals 1
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 797
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 799
    return-void

    :cond_0
    move v0, v1

    .line 797
    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 905
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 906
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wakeUpByReason(JI)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 933
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPowerManager;->wakeUpByReason(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :goto_0
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
