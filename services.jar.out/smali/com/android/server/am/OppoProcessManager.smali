.class public Lcom/android/server/am/OppoProcessManager;
.super Ljava/lang/Object;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;,
        Lcom/android/server/am/OppoProcessManager$H;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OppoProcessManager"

.field private static mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# instance fields
.field private final APP_WIDGET_PATH:Ljava/lang/String;

.field private final BAD_APPS_PATH:Ljava/lang/String;

.field private final BLACKLIST_PATH:Ljava/lang/String;

.field private final BPM_DIR:Ljava/lang/String;

.field private final BPM_PATH:Ljava/lang/String;

.field private final BPM_STATUS_PATH:Ljava/lang/String;

.field private final BRD_PATH:Ljava/lang/String;

.field public DEBUG_DETAIL:Z

.field DEBUG_SWITCH:Z

.field DynamicDebug:Z

.field private final LOW_POWER_CONFIG_PATH:Ljava/lang/String;

.field private final PKG_PATH:Ljava/lang/String;

.field private final POWER_CONN_STATUS_PATH:Ljava/lang/String;

.field private final SMART_LOW_POWER_PATH:Ljava/lang/String;

.field private final SUSPEND_DELAY:J

.field private final SUSPEND_DELAY_LONG:J

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMStatus:Z

.field private mBPMSwitch:Z

.field private mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mH:Lcom/android/server/am/OppoProcessManager$H;

.field private mIsInOffHook:Z

.field private mLowPower:Z

.field private mLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerConnStatus:Z

.field private mPowerConnStsFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mSmartLowPower:Z

.field private mSmartLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    .line 82
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    .line 84
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/am/OppoProcessManager;->SUSPEND_DELAY:J

    .line 85
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/android/server/am/OppoProcessManager;->SUSPEND_DELAY_LONG:J

    .line 87
    iput-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iput-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 90
    iput-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 91
    iput-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSwitch:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    .line 112
    const-string v0, "/data/data_bpm"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BPM_DIR:Ljava/lang/String;

    .line 113
    const-string v0, "/data/data_bpm/bpm_sts.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BPM_STATUS_PATH:Ljava/lang/String;

    .line 114
    const-string v0, "/data/data_bpm/bpm.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BPM_PATH:Ljava/lang/String;

    .line 115
    const-string v0, "/data/data_bpm/pkg.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->PKG_PATH:Ljava/lang/String;

    .line 116
    const-string v0, "/data/data_bpm/brd.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BRD_PATH:Ljava/lang/String;

    .line 117
    const-string v0, "/data/data_bpm/bad_apps.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BAD_APPS_PATH:Ljava/lang/String;

    .line 118
    const-string v0, "/data/data_bpm/appwidgets.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->APP_WIDGET_PATH:Ljava/lang/String;

    .line 119
    const-string v0, "/data/data_bpm/pure_background_app_blacklist.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->BLACKLIST_PATH:Ljava/lang/String;

    .line 120
    const-string v0, "/data/data_bpm/power_connection_status.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->POWER_CONN_STATUS_PATH:Ljava/lang/String;

    .line 122
    const-string v0, "/data/data_bpm/pure_background_smart_low_power.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->SMART_LOW_POWER_PATH:Ljava/lang/String;

    .line 123
    const-string v0, "/data/data_bpm/low_power_config.xml"

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->LOW_POWER_CONFIG_PATH:Ljava/lang/String;

    .line 505
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    .line 82
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    .line 84
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/am/OppoProcessManager;->SUSPEND_DELAY:J

    .line 85
    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/android/server/am/OppoProcessManager;->SUSPEND_DELAY_LONG:J

    .line 87
    iput-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iput-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 90
    iput-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 91
    iput-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSwitch:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z

    .line 96
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    .line 99
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    .line 112
    const-string v1, "/data/data_bpm"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BPM_DIR:Ljava/lang/String;

    .line 113
    const-string v1, "/data/data_bpm/bpm_sts.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BPM_STATUS_PATH:Ljava/lang/String;

    .line 114
    const-string v1, "/data/data_bpm/bpm.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BPM_PATH:Ljava/lang/String;

    .line 115
    const-string v1, "/data/data_bpm/pkg.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->PKG_PATH:Ljava/lang/String;

    .line 116
    const-string v1, "/data/data_bpm/brd.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BRD_PATH:Ljava/lang/String;

    .line 117
    const-string v1, "/data/data_bpm/bad_apps.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BAD_APPS_PATH:Ljava/lang/String;

    .line 118
    const-string v1, "/data/data_bpm/appwidgets.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->APP_WIDGET_PATH:Ljava/lang/String;

    .line 119
    const-string v1, "/data/data_bpm/pure_background_app_blacklist.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->BLACKLIST_PATH:Ljava/lang/String;

    .line 120
    const-string v1, "/data/data_bpm/power_connection_status.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->POWER_CONN_STATUS_PATH:Ljava/lang/String;

    .line 122
    const-string v1, "/data/data_bpm/pure_background_smart_low_power.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->SMART_LOW_POWER_PATH:Ljava/lang/String;

    .line 123
    const-string v1, "/data/data_bpm/low_power_config.xml"

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->LOW_POWER_CONFIG_PATH:Ljava/lang/String;

    .line 509
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "mThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 511
    new-instance v1, Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$H;-><init>(Lcom/android/server/am/OppoProcessManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 512
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 513
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->initDir()V

    .line 514
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->initData()V

    .line 516
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->initPhoneStateReceiver()V

    .line 518
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessManager;->registerLogModule()V

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OppoProcessManager;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isLocationApplication(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/OppoProcessManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForWidgetChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/server/am/OppoProcessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OppoProcessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/am/OppoProcessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/am/OppoProcessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/am/OppoProcessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInRecentTask(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OppoProcessManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getTouchedWindowsPids()[I

    move-result-object v0

    return-object v0
.end method

.method private cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 794
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 795
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 796
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 797
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/OppoProcessManager$1;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/server/am/OppoProcessManager$1;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private changeMod()V
    .locals 4

    .prologue
    .line 813
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 814
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 815
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 816
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/pkg.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 817
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/brd.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 818
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bad_apps.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 819
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/appwidgets.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 820
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/pure_background_app_blacklist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/power_connection_status.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 822
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/pure_background_smart_low_power.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 823
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/low_power_config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 620
    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 621
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 661
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 627
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 628
    .restart local v2    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 634
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    .restart local v2    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 640
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 642
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 647
    :goto_1
    if-eqz v3, :cond_7

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_8

    .line 648
    :cond_7
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exits!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    .line 653
    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 654
    .restart local v2    # "pkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v4, v5

    .line 655
    goto/16 :goto_0

    .end local v2    # "pkg":Ljava/lang/String;
    :cond_a
    move v4, v5

    .line 661
    goto/16 :goto_0
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 674
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gt v1, v0, :cond_1

    .line 675
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \'s adj is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 563
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 564
    if-nez p1, :cond_0

    .line 565
    :try_start_0
    monitor-exit v4

    .line 614
    :goto_0
    return v2

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 569
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    .line 570
    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v2, :cond_1

    .line 571
    const-string v2, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      uid < 10000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_1
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 578
    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v2, :cond_3

    .line 579
    const-string v2, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   isHomeProcess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_3
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 584
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 586
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 591
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 592
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 593
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 598
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 599
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 600
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 604
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_a
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    .line 606
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 608
    monitor-exit v4

    goto/16 :goto_0

    .line 615
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 611
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_1
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 614
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_d
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private checkProcessToast(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 808
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1450
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "pids":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 695
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-object v0

    .line 699
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "pid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService;

    .line 1191
    .local v0, "imManager":Lcom/android/server/InputMethodManagerService;
    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1194
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 522
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/android/server/am/OppoProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 525
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-object v0
.end method

.method public static getOppoProcessManager()Lcom/android/server/am/OppoProcessManager;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-object v0
.end method

.method private getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 1319
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1320
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1321
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1322
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    monitor-exit v3

    .line 1326
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 1320
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1326
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1

    .line 1327
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1332
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1334
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1335
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p1, :cond_0

    .line 1336
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1339
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 1340
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getTouchedWindowsPids()[I
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->getTouchedWindowPids(Lcom/android/server/wm/WindowManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 710
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 875
    const-string v1, "/data/data_bpm/bpm.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 876
    const-string v1, "/data/data_bpm/pkg.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 877
    const-string v1, "/data/data_bpm/brd.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 878
    const-string v1, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 879
    const-string v1, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 880
    const-string v1, "/data/data_bpm/pure_background_app_blacklist.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    .line 882
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OppoBPMUtils;->init()V

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/data/data_bpm/power_connection_status.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 887
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z

    .line 890
    :cond_0
    const-string v1, "/data/data_bpm/pure_background_smart_low_power.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 892
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    .line 895
    :cond_1
    const-string v1, "/data/data_bpm/low_power_config.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 897
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    .line 903
    :cond_2
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 904
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 906
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 907
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 909
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/brd.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 910
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 912
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/bad_apps.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 913
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 915
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 916
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 918
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/pure_background_app_blacklist.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBlackListFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 919
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBlackListFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 921
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/power_connection_status.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStsFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 922
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStsFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 924
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/pure_background_smart_low_power.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 925
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 927
    new-instance v1, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v2, "/data/data_bpm/low_power_config.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 928
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mLowPowerFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 929
    return-void

    :cond_3
    move v1, v3

    .line 887
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 892
    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 897
    goto/16 :goto_2
.end method

.method private initDir()V
    .locals 9

    .prologue
    .line 831
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/data_bpm"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 833
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 836
    :cond_0
    const-string v6, "/system/bpm/pkg.xml"

    const-string v7, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v6, "/system/bpm/brd.xml"

    const-string v7, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v6, "/system/bpm/bpm_sts.xml"

    const-string v7, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v6, "/system/bpm/bpm.xml"

    const-string v7, "/data/data_bpm/bpm.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v6, "/system/bpm/bad_apps.xml"

    const-string v7, "/data/data_bpm/bad_apps.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v6, "/system/bpm/appwidgets.xml"

    const-string v7, "/data/data_bpm/appwidgets.xml"

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data_bpm/pure_background_app_blacklist.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    .local v1, "blackListFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 845
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 848
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/data_bpm/power_connection_status.xml"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .local v4, "powerConnnStsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 850
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 853
    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data_bpm/pure_background_smart_low_power.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    .local v5, "smartLowPowerFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 855
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 858
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/data_bpm/low_power_config.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, "LowPowerFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 863
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->changeMod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v0    # "LowPowerFile":Ljava/io/File;
    .end local v1    # "blackListFile":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "powerConnnStsFile":Ljava/io/File;
    .end local v5    # "smartLowPowerFile":Ljava/io/File;
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v2

    .line 865
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "OppoProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mkdir failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPhoneStateReceiver()V
    .locals 1

    .prologue
    .line 1499
    new-instance v0, Lcom/android/server/am/OppoProcessManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoProcessManager$2;-><init>(Lcom/android/server/am/OppoProcessManager;)V

    invoke-virtual {v0}, Lcom/android/server/am/OppoProcessManager$2;->start()V

    .line 1516
    return-void
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1149
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHomeProcess(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->queryHomeResolveInfo()Ljava/util/List;

    move-result-object v1

    .line 1154
    .local v1, "mHomeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1155
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    const/4 v3, 0x1

    .line 1159
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInRecentTask(Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_1

    .line 743
    iget-boolean v8, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_0

    .line 744
    const-string v8, "OppoProcessManager"

    const-string v9, "isInRecentTask is not ScreenOn!"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    const/4 v8, 0x0

    .line 789
    :goto_0
    return v8

    .line 749
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/OppoBPMUtils;->getRecentTaskStore()I

    move-result v9

    const/16 v10, 0xf

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Ljava/util/List;

    move-result-object v7

    .line 756
    .local v7, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v6, "recentPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 758
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 759
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_3

    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v8, :cond_3

    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 760
    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, "pkg":Ljava/lang/String;
    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    const/high16 v9, 0x800000

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 763
    .local v2, "isExcluded":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_2

    .line 764
    const-string v8, "OppoProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInRecentTask isExcluded pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_2
    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 767
    const-string v8, "OppoProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInRecentTask pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v2    # "isExcluded":Z
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 761
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 774
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/OppoBPMUtils;->getRecentTaskNum()I

    move-result v4

    .line 775
    .local v4, "num":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v4, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 776
    .local v3, "n":I
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v8, :cond_6

    .line 777
    const-string v8, "OppoProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInRecentTask recentPkgList.size()   == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v8, "OppoProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInRecentTask n   == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v8, "OppoProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recentNum read from file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_a

    .line 782
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 783
    iget-boolean v8, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_7

    .line 784
    const-string v9, "OppoProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInRecentTask include  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v3    # "n":I
    :cond_8
    move v3, v4

    .line 775
    goto/16 :goto_3

    .line 781
    .restart local v3    # "n":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 789
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1371
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v5, v6

    .line 1386
    :cond_1
    :goto_0
    return v5

    .line 1376
    :cond_2
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 1377
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 1376
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1381
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1382
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "OppoProcessManager"

    const-string v7, "isInclude has exception! "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_3
    move v5, v6

    .line 1386
    goto :goto_0
.end method

.method private isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 1171
    if-nez p1, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v4

    .line 1175
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 1176
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_0

    .line 1177
    const/4 v3, 0x0

    .line 1178
    .local v3, "p":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1179
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1180
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1181
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isLocationApplication(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLocationListenersUid()[I

    move-result-object v1

    .line 717
    .local v1, "uids":[I
    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v2

    .line 720
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 721
    aget v3, v1, v0

    if-ne p1, v3, :cond_2

    .line 722
    const/4 v2, 0x1

    goto :goto_0

    .line 720
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isScreenOn()Z
    .locals 5

    .prologue
    .line 729
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 731
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    .line 733
    .local v2, "ret":Z
    :try_start_0
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 738
    :goto_0
    return v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoProcessManager"

    const-string v4, "Error getting screen status"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryHomeResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1141
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1145
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1022
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_0

    .line 1023
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopProcess enter app  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 1027
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1028
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1029
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_1

    .line 1030
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopProcess connections app  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1036
    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1037
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1038
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_3

    .line 1039
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopProcess ContentProviderConnection app  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_3
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1046
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6

    .line 1047
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_5

    .line 1048
    const-string v4, "OppoProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopProcess adjSource app  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1052
    :cond_6
    return-void
.end method

.method private suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 934
    if-nez p1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_2

    .line 939
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendProcess enter app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    if-eqz v1, :cond_3

    .line 943
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_0

    .line 944
    const-string v1, "OppoProcessManager"

    const-string v2, "return for phone!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    :cond_3
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_5

    .line 952
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_4

    .line 953
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_4
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_6

    .line 959
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  curAdj  ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  setAdj  ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_6
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v1, v2, :cond_8

    .line 964
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 972
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V

    goto/16 :goto_0

    .line 966
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_7

    .line 967
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 968
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMessages RESUME_PROCESS  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateProcessStateForChanged(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1071
    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_0

    .line 1072
    const-string v2, "OppoProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStateForChanged ebable == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1077
    if-eqz p1, :cond_3

    .line 1078
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1079
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1080
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 1081
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1078
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1084
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1096
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1089
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1090
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1091
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 1092
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1089
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1096
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    return-void
.end method

.method private updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1126
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1127
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1128
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1130
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 1126
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1134
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1167
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->updateProvider(Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private updateWidgets()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->updateProviders(Ljava/util/List;)V

    .line 1164
    return-void
.end method


# virtual methods
.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1232
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1233
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1234
    const/4 v2, 0x1

    .line 1237
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackageCanStart(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1199
    const-string v1, "OppoProcessManager"

    const-string v2, "isInBlackList! checkPackageCanStart return true"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1204
    goto :goto_0

    .line 1208
    :cond_2
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_3

    move v0, v1

    .line 1209
    goto :goto_0

    .line 1213
    :cond_3
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_4

    move v0, v1

    .line 1214
    goto :goto_0

    .line 1218
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/am/OppoProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1219
    goto :goto_0

    .line 1223
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1224
    goto :goto_0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    const-string v1, "OppoProcessManager"

    const-string v2, "isInBlackList! checkProcessCanRestart return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLivePackageForLiveWallPaper()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "wallpaperPkg":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z

    if-eqz v0, :cond_0

    .line 1474
    const/4 v0, 0x0

    .line 1480
    :goto_0
    return v0

    .line 1477
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z

    if-eqz v0, :cond_1

    .line 1478
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mLowPower:Z

    goto :goto_0

    .line 1480
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSwitch:Z

    goto :goto_0
.end method

.method public isInBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1462
    const/4 v2, 0x0

    .line 1463
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1464
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1465
    const/4 v2, 0x1

    .line 1469
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public isInBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const/4 v0, 0x1

    .line 1458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1344
    if-eqz p1, :cond_0

    .line 1345
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->isProcessSuspend(I)Z

    move-result v0

    .line 1347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUidGroupHasSuspended(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1351
    if-eqz p1, :cond_3

    .line 1352
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_0

    .line 1353
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUidGroupHasSuspended enter app\'uid  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1356
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1357
    .local v0, "appProc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_2

    .line 1358
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUidGroupHasSuspended app ==   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_2
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->isProcessSuspend(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1362
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUidGroupHasSuspended Suspended   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v3, 0x1

    .line 1367
    .end local v0    # "appProc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1393
    const-string v11, "OppoProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1396
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1398
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1400
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1402
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1406
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1407
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 1408
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1409
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1410
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1411
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1412
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1416
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    .line 1417
    const/4 v7, 0x1

    .line 1430
    if-eqz v6, :cond_3

    .line 1431
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v5, v6

    .line 1437
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    if-eqz v7, :cond_6

    move-object v1, v4

    .line 1438
    goto :goto_0

    .line 1433
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1436
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1418
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1430
    if-eqz v5, :cond_4

    .line 1431
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1433
    :catch_2
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1420
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1430
    if-eqz v5, :cond_4

    .line 1431
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1433
    :catch_4
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1422
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1423
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1430
    if-eqz v5, :cond_4

    .line 1431
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 1433
    :catch_6
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1424
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 1425
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1430
    if-eqz v5, :cond_4

    .line 1431
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 1433
    :catch_8
    move-exception v0

    .line 1434
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1426
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_b
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1430
    if-eqz v5, :cond_4

    .line 1431
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_1

    .line 1433
    :catch_a
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1429
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1430
    :goto_7
    if-eqz v5, :cond_5

    .line 1431
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 1435
    :cond_5
    :goto_8
    throw v11

    .line 1433
    :catch_b
    move-exception v0

    .line 1434
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1441
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    const-string v11, "OppoProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1429
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1426
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1424
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1422
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1420
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1418
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public openLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1525
    const-string v0, "OppoProcessManager"

    const-string v1, "#####openlog####"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->getOppoProcessManager()Lcom/android/server/am/OppoProcessManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->getOppoProcessManager()Lcom/android/server/am/OppoProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoProcessManager;->setDynamicDebugSwitch(Z)V

    .line 1528
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->getOppoProcessManager()Lcom/android/server/am/OppoProcessManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void
.end method

.method public registerLogModule()V
    .locals 7

    .prologue
    .line 1533
    :try_start_0
    const-string v3, "OppoProcessManager"

    const-string v4, "invoke com.android.server.OppoDynamicLogManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const-string v3, "com.android.server.OppoDynamicLogManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1535
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string v3, "invokeRegisterLogModule"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1537
    .local v2, "m":Ljava/lang/reflect/Method;
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const-string v3, "OppoProcessManager"

    const-string v4, "invoke end!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1559
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1540
    :catch_0
    move-exception v1

    .line 1542
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1543
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1545
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 1546
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 1548
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1549
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1551
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1552
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1554
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 1555
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1557
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public resumeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 988
    if-nez p1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_2

    .line 993
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeProcess enter app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 998
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v1, :cond_3

    .line 1003
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_3
    const/16 v1, 0x13e

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeProcessByUID(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 1012
    iget-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v3, :cond_0

    .line 1013
    const-string v3, "OppoProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeProcessByUID enter app\'uid  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1016
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1017
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1019
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    return-void
.end method

.method public sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "what"    # I
    .param p3, "delay"    # J

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 535
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 536
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/am/OppoProcessManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    return-void
.end method

.method public setDynamicDebugSwitch(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1520
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    .line 1521
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    .line 1522
    return-void
.end method

.method public setPhoneState(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneState"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1485
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 1486
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneState phoneState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    const-string v0, "IDLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    .line 1496
    :cond_1
    :goto_0
    return-void

    .line 1491
    :cond_2
    const-string v0, "OFFHOOK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1492
    iput-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    goto :goto_0

    .line 1493
    :cond_3
    const-string v0, "RINGING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    iput-boolean v3, p0, Lcom/android/server/am/OppoProcessManager;->mIsInOffHook:Z

    goto :goto_0
.end method

.method public skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1242
    if-nez p1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return v4

    .line 1246
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    .line 1248
    .local v3, "isInBlackList":Z
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_0

    .line 1252
    :cond_2
    if-nez v3, :cond_c

    .line 1255
    if-eqz p3, :cond_4

    .line 1256
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_3

    .line 1257
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not skip order broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_3
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 1263
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1264
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1265
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 1271
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1272
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 1279
    :cond_7
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v6, :cond_9

    .line 1280
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_8

    .line 1281
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip broadcast because uid is the same  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_8
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 1287
    :cond_9
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_b

    .line 1288
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_a

    .line 1289
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip callingUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_a
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 1295
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInRecentTask(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1296
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_0

    .line 1297
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip broadcast because isInRecentTask!  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_c
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1307
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_e

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1308
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_d

    .line 1309
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip top activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_d
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 1315
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public updateProcessState(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1059
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    .line 1060
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1061
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1066
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method
