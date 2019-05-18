.class public final Landroid/os/OppoManager;
.super Ljava/lang/Object;
.source "OppoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OppoManager$1;,
        Landroid/os/OppoManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field public static final ANDROID_TAG:Ljava/lang/String; = "ANDROID"

.field public static final CONNECT_TAG:Ljava/lang/String; = "CONNECTIVITY"

.field private static DATA_SIZE:I = 0x0

.field private static final DEBUG:Z = true

.field public static DEBUG_GR:Z = false

.field public static DOWN_URL:Ljava/lang/String; = null

.field public static final DO_GR_DOWN_INSTALL:Ljava/lang/String; = "DO_GR_DOWN_INSTALL"

.field public static final DO_GR_EXIT:Ljava/lang/String; = "DO_GR_EXIT"

.field public static final DO_GR_REINSTALL:Ljava/lang/String; = "DO_GR_REINSTALL"

.field public static final DO_GR_SHOW_EXCEPTION:Ljava/lang/String; = "DO_GR_SHOW_EXCEPTION"

.field public static final DO_GR_SUCC:Ljava/lang/String; = "DO_GR_SUCC"

.field public static final ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field public static final EXCEPTION_TYPE_NETWORK:Ljava/lang/String; = "NetworkError"

.field public static GR_APK_NUMBER:Ljava/lang/Integer; = null

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final ISSUE_ANDROID_CRASH:Ljava/lang/String; = "crash"

.field public static final ISSUE_ANDROID_OTA_UPGRADE:Ljava/lang/String; = "ota_upgrade"

.field public static final ISSUE_ANDROID_REBOOT_FROM_BLOCKED:Ljava/lang/String; = "reboot_from_blocked"

.field public static final ISSUE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:Ljava/lang/String; = "system_server_reboot_from_blocked"

.field public static final ISSUE_KERNEL_PANIC:Ljava/lang/String; = "panic"

.field public static final ISSUE_WIFI_CONNECTING_FAILURE:Ljava/lang/String; = "wifi_connecting_failure"

.field public static final ISSUE_WIFI_LOAD_DRIVER_FAILURE:Ljava/lang/String; = "wifi_load_driver_failure"

.field public static final KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final KERNEL_TAG:Ljava/lang/String; = "KERNEL"

.field public static final MULTIMEDIA_TAG:Ljava/lang/String; = "MULTIMEDIA"

.field public static final NETWORK_TAG:Ljava/lang/String; = "NETWORK"

.field public static final PARAM_APP_NAME:Ljava/lang/String; = "appName"

.field public static final PARAM_BASE_CODE_PATH:Ljava/lang/String; = "baseCodePath"

.field public static final PARAM_EXCEPTION_TYPE:Ljava/lang/String; = "exceptionType"

.field public static final PARAM_PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final QE_ENABLE:Z

.field public static SEPERATE_SIZE:Ljava/lang/Integer; = null

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPO"

.field public static final SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final TAG:Ljava/lang/String; = "OppoManager"

.field public static TYEP_Android_VER:I = 0x0

.field public static TYEP_BUILD_VER:I = 0x0

.field public static TYEP_DEVICE:I = 0x0

.field public static TYEP_PHONE_IMEI:I = 0x0

.field public static TYPE_ANDROID_BACK_KEY:I = 0x0

.field public static TYPE_ANDROID_CAMERA:I = 0x0

.field public static TYPE_ANDROID_CRASH:I = 0x0

.field public static TYPE_ANDROID_HOME_KEY:I = 0x0

.field public static TYPE_ANDROID_MENU_KEY:I = 0x0

.field public static TYPE_ANDROID_OTA_UPGRADE:I = 0x0

.field public static TYPE_ANDROID_POWER_KEY:I = 0x0

.field public static TYPE_ANDROID_SPMI:I = 0x0

.field public static TYPE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:I = 0x0

.field public static TYPE_ANDROID_USB:I = 0x0

.field public static TYPE_ANDROID_VOLDOWN_KEY:I = 0x0

.field public static TYPE_ANDROID_VOLUP_KEY:I = 0x0

.field public static TYPE_CRITICAL_DATA_SIZE:I = 0x0

.field public static TYPE_HW_SHUTDOWN:I = 0x0

.field public static TYPE_LOGSIZE:I = 0x0

.field public static TYPE_LOGVER:I = 0x0

.field public static TYPE_MODERN:I = 0x0

.field public static TYPE_OTA_FLAG:I = 0x0

.field public static TYPE_PANIC:I = 0x0

.field public static TYPE_REBOOT:I = 0x0

.field public static TYPE_REBOOT_FROM_BLOCKED:I = 0x0

.field public static TYPE_RESMON:I = 0x0

.field public static TYPE_SHUTDOWN:I = 0x0

.field public static final TYPE_SYMBOL_VERSION_DISAGREE:I = 0x323

.field public static final TYPE_WDI_EXCEPTION:I = 0x324

.field public static TYPE_WIFI_ASSOC_REJECT:I

.field public static TYPE_WIFI_DHCP_FAILURE:I

.field public static TYPE_WIFI_PSK_INCORRECT:I

.field public static canCreateDialog:Ljava/lang/Boolean;

.field public static canReinstall:Ljava/lang/Boolean;

.field private static cannotExit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static grList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static hasExited:Ljava/lang/Boolean;

.field public static queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/os/IOppoService;

.field public static willUseGrLeader:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    const/16 v0, 0x10

    sput v0, Landroid/os/OppoManager;->DATA_SIZE:I

    .line 78
    const/16 v0, 0x3fe

    sput v0, Landroid/os/OppoManager;->TYPE_LOGSIZE:I

    .line 80
    const/16 v0, 0x200

    sput v0, Landroid/os/OppoManager;->TYPE_CRITICAL_DATA_SIZE:I

    .line 83
    sput v4, Landroid/os/OppoManager;->TYPE_LOGVER:I

    .line 84
    sput v3, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    .line 85
    sput v2, Landroid/os/OppoManager;->TYEP_Android_VER:I

    .line 86
    sput v5, Landroid/os/OppoManager;->TYEP_BUILD_VER:I

    .line 87
    const/4 v0, 0x4

    sput v0, Landroid/os/OppoManager;->TYEP_DEVICE:I

    .line 90
    sput v1, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    .line 92
    const/4 v0, 0x6

    sput v0, Landroid/os/OppoManager;->TYPE_OTA_FLAG:I

    .line 94
    const/16 v0, 0x14

    sput v0, Landroid/os/OppoManager;->TYPE_SHUTDOWN:I

    .line 95
    const/16 v0, 0x15

    sput v0, Landroid/os/OppoManager;->TYPE_REBOOT:I

    .line 96
    const/16 v0, 0x16

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_CRASH:I

    .line 97
    const/16 v0, 0x1d

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_OTA_UPGRADE:I

    .line 98
    const/16 v0, 0x1c

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_CAMERA:I

    .line 99
    const/16 v0, 0x1e

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_USB:I

    .line 100
    const/16 v0, 0x1f

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_HOME_KEY:I

    .line 101
    const/16 v0, 0x20

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_MENU_KEY:I

    .line 102
    const/16 v0, 0x21

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_BACK_KEY:I

    .line 103
    const/16 v0, 0x22

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_VOLUP_KEY:I

    .line 104
    const/16 v0, 0x23

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_VOLDOWN_KEY:I

    .line 105
    const/16 v0, 0x24

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_POWER_KEY:I

    .line 108
    const/16 v0, 0x17

    sput v0, Landroid/os/OppoManager;->TYPE_MODERN:I

    .line 110
    const/16 v0, 0x18

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_SPMI:I

    .line 111
    const/16 v0, 0x19

    sput v0, Landroid/os/OppoManager;->TYPE_RESMON:I

    .line 112
    const/16 v0, 0x1a

    sput v0, Landroid/os/OppoManager;->TYPE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:I

    .line 113
    const/16 v0, 0x1b

    sput v0, Landroid/os/OppoManager;->TYPE_REBOOT_FROM_BLOCKED:I

    .line 115
    const/16 v0, 0x258

    sput v0, Landroid/os/OppoManager;->TYPE_PANIC:I

    .line 117
    const/16 v0, 0x320

    sput v0, Landroid/os/OppoManager;->TYPE_WIFI_ASSOC_REJECT:I

    .line 118
    const/16 v0, 0x321

    sput v0, Landroid/os/OppoManager;->TYPE_WIFI_PSK_INCORRECT:I

    .line 119
    const/16 v0, 0x322

    sput v0, Landroid/os/OppoManager;->TYPE_WIFI_DHCP_FAILURE:I

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    .line 147
    const-string/jumbo v0, "persist.sys.assert.panic"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OppoManager;->QE_ENABLE:Z

    .line 148
    sget-boolean v0, Landroid/os/OppoManager;->QE_ENABLE:Z

    sput-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    .line 172
    const v0, 0x3b329

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->SEPERATE_SIZE:Ljava/lang/Integer;

    .line 175
    const-string/jumbo v0, "http://otafs.coloros.com/googles/23dec9b52fa383563b162ef9b5abf389"

    sput-object v0, Landroid/os/OppoManager;->DOWN_URL:Ljava/lang/String;

    .line 178
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    .line 181
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->hasExited:Ljava/lang/Boolean;

    .line 184
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gsf"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gsf.login"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.syncadapters.calendar"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "com.google.android.syncadapters.contacts"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->grList:Ljava/util/List;

    .line 191
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->cannotExit:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/OppoManager;->queue:Ljava/util/List;

    .line 293
    invoke-static {}, Landroid/os/OppoManager;->initGr()V

    .line 294
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public static canShowDialog(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v0, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "OppoManager"

    const-string v1, "Geloin: We are installing GR so not leader to install."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static cleanItem(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 675
    invoke-static {p0}, Landroid/os/OppoManager;->native_oppoManager_cleanItem(I)I

    move-result v0

    return v0
.end method

.method public static doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "baseCodePath"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 266
    sget-object v1, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    sget-boolean v1, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "OppoManager"

    const-string v2, "Geloin: Didn\'t init Service for GR."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    :try_start_0
    sget-object v1, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/os/IOppoService;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "OppoManager"

    const-string v2, "Geloin: doGr exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static exit(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->hasExited:Ljava/lang/Boolean;

    .line 255
    if-eqz p0, :cond_1

    sget-object v0, Landroid/os/OppoManager;->cannotExit:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "OppoManager"

    const-string v1, "Geloin: Some application can\'t be killed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v0, "DO_GR_EXIT"

    invoke-static {v1, v1, p0, v0}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBuildVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    const-string/jumbo v1, "ro.build.display.id"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "ver":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    :cond_0
    const-string/jumbo v0, "null"

    .line 508
    .end local v0    # "ver":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getIMEINums(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 464
    const-string v1, ""

    .line 465
    .local v1, "imei":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v2

    .line 467
    .local v2, "telephonyManager":Landroid/telephony/ColorOSTelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oppo.qualcomm.gemini.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/telephony/ColorOSTelephonyManager;->colorGetQcomImeiGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    const-string v3, "OppoManager"

    const-string v4, "get imei in qcom"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    if-nez v1, :cond_0

    .line 479
    const-string/jumbo v1, "null"

    .line 482
    :cond_0
    const-string v3, "OppoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoManager"

    const-string v4, "Exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/telephony/ColorOSTelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    const-string v3, "OppoManager"

    const-string v4, "get imei in MTK or sim1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOppoRomVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    const-string/jumbo v1, "ro.build.version.opporom"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "ver":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    :cond_0
    const-string/jumbo v0, "null"

    .line 499
    .end local v0    # "ver":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 451
    const-string v2, ""

    .line 453
    .local v2, "strTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 454
    .local v4, "time":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 456
    .local v0, "d1":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getVersionFOrAndroid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string/jumbo v0, "null"

    .line 490
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static grExists()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 226
    sget-object v3, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 237
    .local v0, "dataPath":Ljava/lang/String;
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 229
    .end local v0    # "dataPath":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v0, "/data/data/"

    .line 231
    .restart local v0    # "dataPath":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->grList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 237
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static incrementCriticalData(ILjava/lang/String;)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 588
    invoke-static {p0, v0, v0, v0, p1}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final init()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    const-string/jumbo v3, "gr.use.leader"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    .line 51
    sget-object v3, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string/jumbo v3, "gr.apk.number"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    .line 53
    const-string/jumbo v3, "gr.download.url"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/os/OppoManager;->DOWN_URL:Ljava/lang/String;

    .line 57
    :cond_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-eqz v3, :cond_2

    .line 68
    .local v0, "times":I
    :cond_1
    :goto_0
    return v1

    .line 60
    .end local v0    # "times":I
    :cond_2
    const/4 v0, 0x3

    .line 62
    .restart local v0    # "times":I
    :cond_3
    const-string v3, "OppoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to OppoService Instance! times = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v3, "OPPO"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOppoService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoService;

    move-result-object v3

    sput-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    .line 64
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_1

    .line 67
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method private static initGr()V
    .locals 2

    .prologue
    .line 285
    const-string/jumbo v0, "gr.use.leader"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    .line 286
    sget-object v0, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "gr.apk.number"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->GR_APK_NUMBER:Ljava/lang/Integer;

    .line 288
    const-string/jumbo v0, "gr.download.url"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->DOWN_URL:Ljava/lang/String;

    .line 290
    :cond_0
    return-void
.end method

.method private static native native_oppoManager_cleanItem(I)I
.end method

.method private static native native_oppoManager_readCriticalData(II)Ljava/lang/String;
.end method

.method private static native native_oppoManager_readRawPartition(II)Ljava/lang/String;
.end method

.method private static native native_oppoManager_testFunc(II)Ljava/lang/String;
.end method

.method private static native native_oppoManager_writeCriticalData(ILjava/lang/String;)I
.end method

.method private static native native_oppoManager_writeRawPartition(Ljava/lang/String;)I
.end method

.method public static readCriticalData(I)I
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 330
    .local v2, "res":I
    sget v4, Landroid/os/OppoManager;->DATA_SIZE:I

    invoke-static {p0, v4}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "dataString":Ljava/lang/String;
    if-nez v0, :cond_0

    move v3, v2

    .line 345
    .end local v2    # "res":I
    .local v3, "res":I
    :goto_0
    return v3

    .line 334
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v3, v2

    .line 336
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 339
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v2, v4

    :goto_1
    move v3, v2

    .line 345
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 340
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OppoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read critical data failed!! e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static readCriticalData(II)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "size"    # I

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 384
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OppoManager;->native_oppoManager_readCriticalData(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoManager"

    const-string/jumbo v3, "read Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I
    .param p1, "size"    # I

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 301
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OppoManager;->native_oppoManager_readRawPartition(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 307
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoManager"

    const-string/jumbo v3, "read Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopLeader()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method public static testFunc(II)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "size"    # I

    .prologue
    .line 678
    invoke-static {p0, p1}, Landroid/os/OppoManager;->native_oppoManager_testFunc(II)Ljava/lang/String;

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public static uninstallGrs(Landroid/content/Context;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 212
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v0, Landroid/os/OppoManager;->grList:Ljava/util/List;

    .line 214
    .local v0, "grList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "pkgName":Ljava/lang/String;
    sget-object v4, Landroid/os/OppoManager;->queue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    sget-object v4, Landroid/os/OppoManager;->queue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v4, Landroid/os/OppoManager$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/OppoManager$PackageDeleteObserver;-><init>(Landroid/os/OppoManager$1;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static updateLogReference(ILjava/lang/String;Z)I
    .locals 13
    .param p0, "type"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "isBackup"    # Z

    .prologue
    const/16 v6, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 629
    const/4 v4, -0x1

    .line 631
    .local v4, "res":I
    if-eqz p2, :cond_1

    .line 632
    add-int/lit16 v5, p0, 0x400

    invoke-static {v5, v6}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "ref":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    :cond_0
    const-string v5, "%d:%s:%d"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object p1, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 662
    :goto_1
    if-eqz p2, :cond_5

    .line 663
    add-int/lit16 v5, p0, 0x400

    invoke-static {v5}, Landroid/os/OppoManager;->cleanItem(I)I

    .line 664
    add-int/lit16 v5, p0, 0x400

    invoke-static {v5, v2}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v4

    .line 669
    :goto_2
    return v4

    .line 634
    .end local v2    # "ref":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v6}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "ref":Ljava/lang/String;
    goto :goto_0

    .line 640
    :cond_2
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "refSplit":[Ljava/lang/String;
    if-eqz v3, :cond_4

    array-length v5, v3

    if-lt v5, v10, :cond_4

    .line 643
    const/4 v5, 0x2

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 644
    .local v0, "count":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 645
    const-string v5, "%d:%s:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 647
    :cond_3
    invoke-static {p0}, Landroid/os/OppoManager;->cleanItem(I)I

    .line 648
    const-string v5, "%d:%s:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 651
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "OppoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {p0}, Landroid/os/OppoManager;->cleanItem(I)I

    .line 654
    const-string v5, "%d:%s:%d"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object p1, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 655
    goto/16 :goto_1

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v5, "OppoManager"

    const-string/jumbo v6, "update can not get any keyword"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v5, "%d:%s:%d"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object p1, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 666
    .end local v3    # "refSplit":[Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Landroid/os/OppoManager;->cleanItem(I)I

    .line 667
    invoke-static {p0, v2}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_2
.end method

.method public static writeCriticalData(ILjava/lang/String;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v1, -0x1

    .line 394
    .local v1, "res":I
    invoke-static {p0}, Landroid/os/OppoManager;->cleanItem(I)I

    .line 396
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Landroid/os/OppoManager;->TYPE_CRITICAL_DATA_SIZE:I

    add-int/lit8 v3, v3, -0xa

    if-le v2, v3, :cond_0

    .line 397
    const/4 v2, 0x0

    sget v3, Landroid/os/OppoManager;->TYPE_CRITICAL_DATA_SIZE:I

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 399
    :cond_0
    invoke-static {p0, p1}, Landroid/os/OppoManager;->native_oppoManager_writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 404
    :goto_0
    return v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoManager"

    const-string/jumbo v3, "write Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "type"    # I
    .param p1, "logstring"    # Ljava/lang/String;
    .param p2, "tagString"    # Ljava/lang/String;
    .param p3, "issue"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v4, -0x1

    .line 544
    .local v4, "res":I
    if-nez p1, :cond_0

    .line 585
    .end local v4    # "res":I
    :goto_0
    return v4

    .line 547
    .restart local v4    # "res":I
    :cond_0
    const-string v5, ""

    .line 548
    .local v5, "tagbegin":Ljava/lang/String;
    const-string v6, ""

    .line 549
    .local v6, "tagend":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "log-time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/OppoManager;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "time":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "log-buildTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ro.build.display.id"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "buildTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "log-colorOS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ro.build.version.opporom"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "colorOS":Ljava/lang/String;
    const-string v8, "LOGTYPE: %d\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "logType":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 554
    :cond_1
    move-object p3, p2

    .line 556
    :cond_2
    const-string v8, "ANDROID"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 557
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<android-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-begin>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n<android-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-end>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "log":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 559
    .end local v2    # "log":Ljava/lang/String;
    :cond_3
    const-string v8, "MULTIMEDIA"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<multimedia-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-begin>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n<multimedia-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-end>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 563
    :cond_4
    const-string v8, "NETWORK"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<network-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-begin>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 565
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n<network-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-end>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 567
    :cond_5
    const-string v8, "KERNEL"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<kernel-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-begin>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 569
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n<kernel-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-end>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 570
    :cond_6
    const-string v8, "CONNECTIVITY"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 571
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<connectivity-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-begin>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n<connectivity-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-end>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 575
    :cond_7
    const-string v8, "OppoManager"

    const-string/jumbo v9, "the invalid tag"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "logstring"    # Ljava/lang/String;
    .param p2, "tagString"    # Ljava/lang/String;
    .param p3, "issue"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 597
    const/4 v0, -0x1

    .line 598
    .local v0, "res":I
    if-nez p1, :cond_2

    .line 599
    const/4 v0, 0x0

    .line 609
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p4, v4}, Landroid/os/OppoManager;->updateLogReference(ILjava/lang/String;Z)I

    move-result v1

    .line 611
    .local v1, "upRes":I
    const/16 v4, 0x13

    if-le p0, v4, :cond_0

    .line 612
    invoke-static {p0, p4, v3}, Landroid/os/OppoManager;->updateLogReference(ILjava/lang/String;Z)I

    .line 616
    :cond_0
    if-ne v1, v2, :cond_4

    if-ne v0, v2, :cond_4

    .line 617
    const/4 v2, -0x3

    .line 623
    :cond_1
    :goto_1
    return v2

    .line 601
    .end local v1    # "upRes":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 602
    invoke-static {p0, p1, p2, p3}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 604
    :cond_3
    const-string v4, "OppoManager"

    const-string/jumbo v5, "log is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x0

    goto :goto_0

    .line 618
    .restart local v1    # "upRes":I
    :cond_4
    if-ne v1, v2, :cond_5

    if-eq v0, v2, :cond_5

    .line 619
    const/4 v2, -0x2

    goto :goto_1

    .line 620
    :cond_5
    if-eq v1, v2, :cond_6

    if-eq v0, v2, :cond_1

    :cond_6
    move v2, v3

    .line 623
    goto :goto_1
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v1, -0x1

    .line 350
    .local v1, "res":I
    if-nez p0, :cond_0

    .line 371
    .end local v1    # "res":I
    :goto_0
    return v1

    .line 353
    .restart local v1    # "res":I
    :cond_0
    const-string v2, ""

    .line 354
    .local v2, "tagbegin":Ljava/lang/String;
    const-string v3, ""

    .line 355
    .local v3, "tagend":Ljava/lang/String;
    invoke-static {}, Landroid/os/OppoManager;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "time":Ljava/lang/String;
    const-string v5, "SYSTEM_SHUTDOWN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    const-string v2, "<shutdown-begin>\n"

    .line 358
    const-string v3, "<shutdown-end>\n"

    .line 370
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "log":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 359
    .end local v0    # "log":Ljava/lang/String;
    :cond_1
    const-string v5, "SYSTEM_LAST_KMSG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    const-string v2, "<kernel-panic-begin>\n"

    .line 361
    const-string v3, "<kernel-panic-end>\n"

    goto :goto_1

    .line 362
    :cond_2
    const-string v5, "SYSTEM_SERVER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 363
    const-string v2, "<android-panic-begin>\n"

    .line 364
    const-string v3, "<android-panic-end>\n"

    goto :goto_1

    .line 366
    :cond_3
    const-string v5, "OppoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is the invalid tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;
    .param p2, "issue"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string v0, "OppoManager"

    const-string/jumbo v1, "this is the old api"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, -0x1

    return v0
.end method

.method public static writeModernCriticalData()I
    .locals 6

    .prologue
    .line 412
    const/4 v1, -0x1

    .line 413
    .local v1, "res":I
    const/4 v2, 0x0

    .line 415
    .local v2, "times":I
    sget v3, Landroid/os/OppoManager;->TYPE_MODERN:I

    invoke-static {v3}, Landroid/os/OppoManager;->readCriticalData(I)I

    move-result v2

    .line 416
    const-string v3, "OppoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modern reboot times write to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from poweroff or system reboot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_0
    sget v3, Landroid/os/OppoManager;->TYPE_MODERN:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 423
    :goto_0
    return v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "increment critical data failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeRawPartition(Ljava/lang/String;)I
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v1, -0x1

    .line 314
    .local v1, "res":I
    :try_start_0
    invoke-static {p0}, Landroid/os/OppoManager;->native_oppoManager_writeRawPartition(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoManager"

    const-string/jumbo v3, "write Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
