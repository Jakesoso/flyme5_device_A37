.class public Lcom/android/server/pm/OppoAppDexOptManager;
.super Ljava/lang/Object;
.source "OppoAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;,
        Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;,
        Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field public static final ABNORMAL_NAME:Ljava/lang/String; = "abnormal"

.field private static final ABNORMAL_STATE:I = 0x0

.field private static final APP_DEX_ACTION:Ljava/lang/String; = "oppo.intent.action.APP_DEX"

.field private static final BIG_CORE_NUM:I = 0x4

.field private static final INSTANCE:Lcom/android/server/pm/OppoAppDexOptManager;

.field private static final INVALID_STATE:I = -0x1

.field private static final LITTLE_CORE_NUM:I = 0x4

.field public static final NORMAL_NAME:Ljava/lang/String; = "normal"

.field private static final NORMAL_STATE:I = 0x2

.field private static final NORMAL_TYPE:I = 0x0

.field private static final OPPO_THIRD_APP_DEX_CONFIG:Ljava/lang/String; = "/data/system/config/third_app_dex_list.xml"

.field private static final OPPO_THIRD_APP_DEX_PATH:Ljava/lang/String; = "/data/system/config"

.field private static final READY_DELAY_TIME:I = 0xea60

.field private static final SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final SHOW_TOAST:I = 0x3

.field public static final SKIP_NAME:Ljava/lang/String; = "skip"

.field public static final SLOW_NAME:Ljava/lang/String; = "slow"

.field private static final SLOW_STATE:I = 0x1

.field public static final SWITCH_SCREEN_ON_OFF:Ljava/lang/String; = "switch"

.field private static final TAG:Ljava/lang/String; = "OppoAppDexOptManager"

.field private static final THIRD_APP_DEX:I = 0x1

.field private static final THIRD_APP_DEX_DATA_THRESHOLD:J = 0x3200000L

.field private static final THIRD_APP_DEX_DELAY_TIME:J = 0x3e8L

.field private static final THIRD_APP_DEX_WAIT_TIME:I = 0x1f4

.field private static final UNINSTALL_TYPE:I = 0x1

.field private static final WAKEUP_APP_DEX:I = 0x2


# instance fields
.field private hasAbnormal:Z

.field private isBeginDex:Z

.field public isOTABootMode:Z

.field private isReady:Z

.field private isScreenOff:Z

.field private localAbnormalApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAbnormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/OppoAppDexInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAbnormalNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarm:Landroid/app/AlarmManager;

.field private final mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

.field private mAppDexIntent:Landroid/app/PendingIntent;

.field private mConfigFileObserver:Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;

.field private mContext:Landroid/content/Context;

.field private mDexState:I

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field protected mNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/OppoAppDexInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mNormalNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObjectLock:Ljava/lang/Object;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPerfService:Lcom/mediatek/perfservice/IPerfService;

.field private mPerfServiceHandle:I

.field private mPerfServiceinited:I

.field protected mSkipNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSlowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/OppoAppDexInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSlowNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Z

.field private final mToastHandler:Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;

.field private mToastThread:Lcom/android/server/ServiceThread;

.field protected mUninstallList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/OppoAppDexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private skipDexApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/pm/OppoAppDexOptManager;

    invoke-direct {v0}, Lcom/android/server/pm/OppoAppDexOptManager;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OppoAppDexOptManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mConfigFileObserver:Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;

    .line 79
    iput-boolean v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSwitch:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->hasAbnormal:Z

    .line 81
    iput-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    .line 83
    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    .line 105
    iput v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    .line 106
    iput-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isOTABootMode:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isBeginDex:Z

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mObjectLock:Ljava/lang/Object;

    .line 120
    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 121
    iput v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceinited:I

    .line 122
    iput v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceHandle:I

    .line 260
    new-instance v0, Lcom/android/server/pm/OppoAppDexOptManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OppoAppDexOptManager$1;-><init>(Lcom/android/server/pm/OppoAppDexOptManager;)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 699
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.netease.newsreader.activity"

    aput-object v1, v0, v4

    const-string v1, "com.eg.android.AlipayGphone"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.android.bankabc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.icbc"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    .line 706
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.mobileqq"

    aput-object v1, v0, v4

    const-string v1, "com.sohu.inputmethod.sogou"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.iflytek.inputmethod"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ThirdAppDex"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 131
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ThirdAppToast"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastThread:Lcom/android/server/ServiceThread;

    .line 133
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 135
    new-instance v0, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;-><init>(Lcom/android/server/pm/OppoAppDexOptManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    .line 137
    new-instance v0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;-><init>(Lcom/android/server/pm/OppoAppDexOptManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastHandler:Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    .line 141
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->readConfigFile()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/OppoAppDexOptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->readConfigFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/OppoAppDexOptManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/OppoAppDexOptManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isScreenOff:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/pm/OppoAppDexOptManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isScreenOff:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/pm/OppoAppDexOptManager;)Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/OppoAppDexOptManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->hasListValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OppoAppDexOptManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disablePer()V
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceHandle:I

    invoke-interface {v1, v2}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V

    .line 692
    const-string v1, "OppoAppDexOptManager"

    const-string v2, "enable perfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoAppDexOptManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in perfServiceInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getInstance()Lcom/android/server/pm/OppoAppDexOptManager;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/server/pm/OppoAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OppoAppDexOptManager;

    return-object v0
.end method

.method private hasListValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 186
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/config"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "thirdAppFilePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/config/third_app_dex_list.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "thirdAppConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "OppoAppDexOptManager"

    const-string v4, "init crashClearConfigPath Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;

    const-string v1, "/data/system/config/third_app_dex_list.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;-><init>(Lcom/android/server/pm/OppoAppDexOptManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mConfigFileObserver:Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mConfigFileObserver:Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/pm/OppoAppDexOptManager$FileObserverPolicy;->startWatching()V

    .line 204
    return-void
.end method

.method private initList()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    .line 183
    :cond_2
    return-void
.end method

.method private performThirdAppDexOpt(Ljava/util/ArrayList;I)V
    .locals 9
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/OppoAppDexInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/OppoAppDexInfo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    if-eqz p1, :cond_1

    .line 378
    iget-object v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 379
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 381
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OppoAppDexInfo;

    .line 382
    .local v1, "info":Lcom/android/server/pm/OppoAppDexInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_2

    .line 383
    :cond_0
    const-string v4, "OppoAppDexOptManager"

    const-string v5, "app uninstall, not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->sendOptMessage()V

    .line 385
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    .end local v1    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_1
    :goto_0
    return-void

    .line 388
    .restart local v1    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 389
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 390
    .local v2, "usableSpace":J
    const-wide/32 v4, 0x3200000

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 391
    const-string v4, "OppoAppDexOptManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app not running dexopt on remaining apps due to low space: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 393
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 396
    :cond_3
    const-string v4, "OppoAppDexOptManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run perform dex app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput p2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    .line 398
    iput-boolean v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isBeginDex:Z

    .line 399
    iput-boolean v7, v1, Lcom/android/server/pm/OppoAppDexInfo;->isCompleteDex:Z

    .line 400
    const-string v4, "oppo.dex.thread.count.switch"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService;->performOppoAppDexOpt(Landroid/content/pm/PackageParser$Package;)V

    .line 402
    iput-boolean v8, v1, Lcom/android/server/pm/OppoAppDexInfo;->isCompleteDex:Z

    .line 403
    const-string v4, "OppoAppDexOptManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "perform finish app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->sendOptMessage()V

    goto/16 :goto_0

    .line 406
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    .end local v2    # "usableSpace":J
    :cond_4
    if-nez p2, :cond_5

    .line 407
    iput-boolean v7, p0, Lcom/android/server/pm/OppoAppDexOptManager;->hasAbnormal:Z

    .line 409
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    .line 410
    iget-object v4, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0
.end method

.method private readConfigFile()V
    .locals 11

    .prologue
    .line 448
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/config/third_app_dex_list.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 450
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 451
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const/4 v6, 0x0

    .line 456
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 459
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 460
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    .line 461
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalNameList:Ljava/util/List;

    .line 462
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 463
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 466
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 474
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 475
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_11

    .line 476
    packed-switch v1, :pswitch_data_0

    .line 504
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 467
    .end local v1    # "eventType":I
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "OppoAppDexOptManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open third_app_dex_list file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    :try_start_4
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 513
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 516
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 517
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 520
    :cond_4
    if-eqz v6, :cond_5

    .line 521
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 523
    :cond_5
    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAppDexOptManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "abnormal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 481
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 482
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/OppoAppDexOptManager;->updateListName(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 507
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 508
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    const-string v8, "OppoAppDexOptManager"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 512
    :try_start_7
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 513
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 516
    :cond_6
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 517
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 520
    :cond_7
    if-eqz v6, :cond_8

    .line 521
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 523
    :cond_8
    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 526
    :catch_3
    move-exception v0

    .line 527
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OppoAppDexOptManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "slow"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 485
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 486
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/OppoAppDexOptManager;->updateListName(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 510
    .end local v1    # "eventType":I
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .line 512
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    :try_start_9
    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 513
    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    iput-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 516
    :cond_a
    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 517
    iget-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    iput-object v9, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 520
    :cond_b
    if-eqz v6, :cond_c

    .line 521
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 523
    :cond_c
    if-eqz v3, :cond_d

    .line 524
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 528
    :cond_d
    :goto_5
    throw v8

    .line 488
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :cond_e
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "normal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 489
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 490
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalNameList:Ljava/util/List;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/OppoAppDexOptManager;->updateListName(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 492
    .end local v4    # "value":Ljava/lang/String;
    :cond_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "switch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 493
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 494
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 495
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "skip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 496
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 497
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 498
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/OppoAppDexOptManager;->updateListName(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 512
    .end local v4    # "value":Ljava/lang/String;
    :cond_11
    :try_start_b
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 513
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->localAbnormalApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    .line 516
    :cond_12
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 517
    iget-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->skipDexApp:Ljava/util/List;

    iput-object v8, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    .line 520
    :cond_13
    if-eqz v7, :cond_14

    .line 521
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 523
    :cond_14
    if-eqz v3, :cond_15

    .line 524
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_15
    move-object v6, v7

    .line 528
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 526
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_4
    move-exception v0

    .line 527
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OppoAppDexOptManager"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 529
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 526
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v0

    .line 527
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "OppoAppDexOptManager"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 510
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto/16 :goto_4

    .line 507
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendOptMessage()V
    .locals 4

    .prologue
    .line 351
    iget-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSwitch:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->hasAbnormal:Z

    if-eqz v1, :cond_0

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "mg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updatePer()V
    .locals 9

    .prologue
    .line 671
    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceinited:I

    if-nez v0, :cond_0

    .line 672
    const-string v0, "mtk-perfservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 673
    .local v7, "b":Landroid/os/IBinder;
    if-eqz v7, :cond_0

    .line 675
    :try_start_0
    invoke-static {v7}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 676
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceinited:I

    .line 677
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceHandle:I

    .line 678
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceHandle:I

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V

    .line 679
    const-string v0, "OppoAppDexOptManager"

    const-string v1, "enable perfService"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v7    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 680
    .restart local v7    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    .line 681
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "OppoAppDexOptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in perfServiceInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addUninstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 653
    :cond_0
    monitor-exit v1

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public collectAppDexList(Landroid/content/pm/PackageParser$Package;Z)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "isBooting"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->initList()V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 229
    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSkipNameList:Ljava/util/List;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const-string v2, "OppoAppDexOptManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg.packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    new-instance v0, Lcom/android/server/pm/OppoAppDexInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/OppoAppDexInfo;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 238
    .local v0, "info":Lcom/android/server/pm/OppoAppDexInfo;
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    if-eqz v1, :cond_2

    .line 240
    iput-boolean v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->hasAbnormal:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->sendMessageAtReady()V

    :cond_2
    move v1, v2

    .line 243
    goto :goto_0

    .line 246
    .end local v0    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    new-instance v0, Lcom/android/server/pm/OppoAppDexInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/OppoAppDexInfo;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 249
    .restart local v0    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 250
    goto :goto_0

    .line 253
    .end local v0    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_4
    new-instance v0, Lcom/android/server/pm/OppoAppDexInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/OppoAppDexInfo;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 254
    .restart local v0    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 255
    goto :goto_0
.end method

.method public inFrontRecentTaskList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    if-nez p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v4

    .line 635
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 636
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 638
    .local v3, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v5, :cond_0

    .line 641
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 642
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz p1, :cond_2

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 643
    const-string v4, "OppoAppDexOptManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inFrontRecentTaskList packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 644
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 156
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAlarm:Landroid/app/AlarmManager;

    .line 157
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 158
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ThirdAppDex"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 159
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "oppo.intent.action.APP_DEX"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexIntent:Landroid/app/PendingIntent;

    .line 161
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->initDir()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->initFileObserver()V

    .line 163
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalNameList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 166
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isOTABootMode:Z

    .line 169
    :cond_3
    return-void
.end method

.method public isPerformDex(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromProc"    # Z

    .prologue
    const/4 v6, 0x0

    .line 564
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    if-eqz v5, :cond_1

    .line 565
    iget-object v7, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mObjectLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 567
    new-instance v3, Lcom/android/server/pm/OppoAppDexInfo;

    invoke-direct {v3}, Lcom/android/server/pm/OppoAppDexInfo;-><init>()V

    .line 568
    .local v3, "info":Lcom/android/server/pm/OppoAppDexInfo;
    iput-object p1, v3, Lcom/android/server/pm/OppoAppDexInfo;->mPkgName:Ljava/lang/String;

    .line 569
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, p2}, Lcom/android/server/pm/OppoAppDexOptManager;->showToast(Lcom/android/server/pm/OppoAppDexInfo;IZ)Z

    move-result v5

    monitor-exit v7

    .line 607
    .end local v3    # "info":Lcom/android/server/pm/OppoAppDexInfo;
    :goto_0
    return v5

    .line 571
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v4, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/OppoAppDexInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 578
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/OppoAppDexInfo;

    .line 579
    .local v0, "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    const-string v5, "OppoAppDexOptManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " running abnormal perform dex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, p2}, Lcom/android/server/pm/OppoAppDexOptManager;->showToast(Lcom/android/server/pm/OppoAppDexInfo;IZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto :goto_0

    .line 571
    .end local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/OppoAppDexInfo;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "OppoAppDexOptManager"

    const-string v7, "isPerformDex Exception"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 607
    goto :goto_0

    .line 586
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 587
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/OppoAppDexInfo;

    .line 588
    .restart local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    if-eqz v0, :cond_5

    iget-boolean v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->isCompleteDex:Z

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 590
    const-string v5, "OppoAppDexOptManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " running slow perform dex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, p2}, Lcom/android/server/pm/OppoAppDexOptManager;->showToast(Lcom/android/server/pm/OppoAppDexInfo;IZ)Z

    move-result v5

    goto/16 :goto_0

    .line 595
    .end local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 596
    iget-object v5, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/OppoAppDexInfo;

    .line 597
    .restart local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    if-eqz v0, :cond_3

    iget-boolean v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->isCompleteDex:Z

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 599
    const-string v5, "OppoAppDexOptManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " running normal perform dex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, p2}, Lcom/android/server/pm/OppoAppDexOptManager;->showToast(Lcom/android/server/pm/OppoAppDexInfo;IZ)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    goto/16 :goto_0
.end method

.method public performThirdAppDex()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/android/server/pm/OppoAppDexOptManager;->performThirdAppDexOpt(Ljava/util/ArrayList;I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    if-eq v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/android/server/pm/OppoAppDexOptManager;->performThirdAppDexOpt(Ljava/util/ArrayList;I)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    if-eq v0, v3, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/OppoAppDexOptManager;->performThirdAppDexOpt(Ljava/util/ArrayList;I)V

    .line 429
    :cond_2
    const-string v0, "oppo.dex.thread.count.switch"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mPerfServiceinited:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->disablePer()V

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAbnormalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSlowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->disablePer()V

    .line 435
    iput-boolean v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isOTABootMode:Z

    .line 436
    iput-boolean v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isBeginDex:Z

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 440
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mDexState:I

    .line 441
    iput-boolean v2, p0, Lcom/android/server/pm/OppoAppDexOptManager;->hasAbnormal:Z

    .line 444
    :cond_5
    return-void
.end method

.method public removeUninstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 663
    :cond_0
    monitor-exit v1

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mUninstallList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected sendMessageAtReady()V
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    if-nez v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->hasListValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/android/server/pm/OppoAppDexOptManager;->updatePer()V

    .line 371
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    .line 372
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "mg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public showToast(Lcom/android/server/pm/OppoAppDexInfo;IZ)Z
    .locals 4
    .param p1, "dexInfo"    # Lcom/android/server/pm/OppoAppDexInfo;
    .param p2, "type"    # I
    .param p3, "fromProc"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 611
    iget-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/pm/OppoAppDexOptManager;->isBeginDex:Z

    if-nez v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 615
    :cond_1
    if-eqz p3, :cond_2

    move v1, v2

    .line 616
    goto :goto_0

    .line 619
    :cond_2
    if-eq p2, v2, :cond_3

    iget-object v3, p1, Lcom/android/server/pm/OppoAppDexInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/OppoAppDexOptManager;->inFrontRecentTaskList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastHandler:Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 624
    .local v0, "mg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 626
    iget-object v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mToastHandler:Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 627
    goto :goto_0
.end method

.method public updateListName(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 546
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void
.end method

.method public updateSwitch(Ljava/lang/String;)V
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    .line 553
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/OppoAppDexOptManager;->mSwitch:Z

    .line 557
    const-string v1, "OppoAppDexOptManager"

    const-string v2, "updateSwitch Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
