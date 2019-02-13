.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$FlymeInjector;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME_FOR_OPPO:I = 0xbb8

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final SETUP_FILE:Ljava/lang/String; = "/system/bin/setup.sh"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static bConfirmForAnimation:Z = false

.field private static bIsAnimationtimeForOppo:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static final changeToNormalMessage:Ljava/lang/String; = "change shutdown flow from ipo to normal"

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static pd:Landroid/app/ProgressDialog;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static screen_turn_off_time:I


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownManager:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 119
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 121
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 134
    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 137
    sput-object v3, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 153
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bIsAnimationtimeForOppo:Z

    .line 156
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 157
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 158
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 159
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 162
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 173
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/ShutdownThread;->screen_turn_off_time:I

    .line 178
    sput-object v3, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 382
    new-instance v0, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    .line 186
    return-void
.end method

.method private static CheckSetupFile()Z
    .registers 2

    .prologue
    .line 1255
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/setup.sh"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1257
    const/4 v1, 0x0

    .line 1259
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private static DeleteSetupFile()V
    .registers 4

    .prologue
    .line 1263
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->CheckSetupFile()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1264
    const-string v0, "rm -rf /system/bin/setup.sh"

    .line 1265
    .local v0, "cmdSetup":Ljava/lang/String;
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip cmd rm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-static {v0}, Lcom/oppo/rutils/RUtils;->RUtilsCmd(Ljava/lang/String;)I

    .line 1268
    const-wide/16 v2, 0x3e8

    :try_start_25
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_31

    .line 1274
    .end local v0    # "cmdSetup":Ljava/lang/String;
    :goto_28
    return-void

    .line 1272
    :cond_29
    const-string v1, "ShutdownThread"

    const-string v2, "zip set up file is not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1269
    .restart local v0    # "cmdSetup":Ljava/lang/String;
    :catch_31
    move-exception v1

    goto :goto_28
.end method

.method public static EnableAnimating(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 189
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_3
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 92
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 92
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 92
    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 435
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 436
    :try_start_6
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_13

    .line 437
    const-string v5, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v6

    .line 569
    :goto_12
    return-void

    .line 440
    :cond_13
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 441
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_11b

    .line 444
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v5, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 445
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 446
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v6, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v6}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 452
    .local v2, "mPackageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_48

    const-string v5, "oppo.cmcc.client"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "oppo.allnet.cttest"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    :cond_46
    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->bIsAnimationtimeForOppo:Z

    :cond_48
    sput-boolean v11, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v5, :cond_5a

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 462
    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 468
    :cond_5a
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, "mShutOffAnimation":Z
    const/4 v4, 0x0

    .line 473
    .local v4, "screenTurnOffTime":I
    :try_start_60
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v5, :cond_72

    .line 474
    const-class v5, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 475
    :cond_72
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v5, :cond_11e

    .line 476
    const-string v5, "ShutdownThread"

    const-string v6, "Fail to create mIBootAnim"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7d} :catch_144

    .line 486
    :goto_7d
    const-string v5, "ro.operator.optr"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "cust":Ljava/lang/String;
    if-eqz v0, :cond_8e

    .line 489
    const-string v5, "CUST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 490
    const/4 v3, 0x1

    .line 495
    :cond_8e
    const/4 v3, 0x1

    .line 498
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v6

    .line 500
    :try_start_92
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    if-nez v5, :cond_14a

    .line 519
    :goto_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_162

    .line 522
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    :try_start_9b
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 526
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 527
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_b9
    .catch Ljava/lang/SecurityException; {:try_start_9b .. :try_end_b9} :catch_1ab

    .line 532
    :goto_b9
    const-string v5, "ShutdownThread"

    const-string v6, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 536
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 538
    :try_start_ce
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 540
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 541
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_ed
    .catch Ljava/lang/SecurityException; {:try_start_ce .. :try_end_ed} :catch_1b9

    .line 549
    :cond_ed
    :goto_ed
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v5, v6, :cond_ff

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 550
    :cond_ff
    sget v5, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v5, v11, :cond_1c7

    .line 551
    const-string v5, "ShutdownThread"

    const-string v6, "ShutdownThread exists already"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 553
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v6

    .line 554
    :try_start_110
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 555
    monitor-exit v6

    goto/16 :goto_12

    :catchall_118
    move-exception v5

    monitor-exit v6
    :try_end_11a
    .catchall {:try_start_110 .. :try_end_11a} :catchall_118

    throw v5

    .line 441
    .end local v0    # "cust":Ljava/lang/String;
    .end local v2    # "mPackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "mShutOffAnimation":Z
    .end local v4    # "screenTurnOffTime":I
    :catchall_11b
    move-exception v5

    :try_start_11c
    monitor-exit v6
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    throw v5

    .line 478
    .restart local v2    # "mPackageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "mShutOffAnimation":Z
    .restart local v4    # "screenTurnOffTime":I
    :cond_11e
    :try_start_11e
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v5}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v4

    .line 479
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v5}, Lcom/mediatek/common/bootanim/IBootAnimExt;->isCustBootAnim()Z

    move-result v3

    .line 480
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIBootAnim get screenTurnOffTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_142} :catch_144

    goto/16 :goto_7d

    .line 482
    :catch_144
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7d

    .line 503
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cust":Ljava/lang/String;
    :cond_14a
    if-eqz v3, :cond_165

    .line 504
    :try_start_14c
    const-string v5, "ShutdownThread"

    const-string v7, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->bootanimCust()V

    .line 517
    :goto_156
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    int-to-long v8, v4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_96

    .line 519
    :catchall_162
    move-exception v5

    monitor-exit v6
    :try_end_164
    .catchall {:try_start_14c .. :try_end_164} :catchall_162

    throw v5

    .line 507
    :cond_165
    :try_start_165
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 508
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v7, 0x10400f6

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v7, 0x10400fa

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 510
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 511
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 512
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    .line 514
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    .line 515
    sget-object v5, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread$FlymeInjector;->showShutDownAnimation(Landroid/content/Context;)V
    :try_end_1aa
    .catchall {:try_start_165 .. :try_end_1aa} :catchall_162

    goto :goto_156

    .line 528
    :catch_1ab
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_b9

    .line 542
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1b9
    move-exception v1

    .line 543
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_ed

    .line 557
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1c7
    const-string v5, "ShutdownThread"

    const-string v6, "Thread state is not normal! froce to shutdown!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 561
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x7

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 563
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto/16 :goto_12

    .line 567
    :cond_1e2
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_12
.end method

.method private static bootanimCust()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 574
    const-string v6, "service.shutanim.running"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v6, "ShutdownThread"

    const-string v7, "set service.shutanim.running to 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v2, 0x0

    .line 579
    .local v2, "isRotaionEnabled":Z
    :try_start_11
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_72

    move v2, v4

    .line 581
    :goto_23
    if-eqz v2, :cond_51

    .line 582
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 584
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_35

    .line 585
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 587
    :cond_35
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 589
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation_restore"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_51
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_51} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_51} :catch_7d

    .line 601
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_51
    :goto_51
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bIsAnimationtimeForOppo:Z

    if-eqz v4, :cond_82

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 610
    :goto_5e
    :try_start_5e
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 612
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_6e

    .line 613
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_6e} :catch_8c

    .line 619
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_6e
    :goto_6e
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 620
    return-void

    :cond_72
    move v2, v5

    .line 579
    goto :goto_23

    .line 592
    :catch_74
    move-exception v1

    .line 593
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v4, "ShutdownThread"

    const-string v5, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 594
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_7d
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    goto :goto_5e

    .line 615
    :catch_8c
    move-exception v0

    .line 616
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6e
.end method

.method private static checkEncryptionCondition()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1230
    const-string v6, "vold.encrypt_progress"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, "encryptionProgress":Ljava/lang/String;
    const-string v6, "100"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1232
    const-string v4, "ShutdownThread"

    const-string v6, "encryption in progress"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_1f
    :goto_1f
    return v5

    .line 1236
    :cond_20
    const-string v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "encrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    move v5, v4

    .line 1237
    goto :goto_1f

    .line 1239
    :cond_30
    :try_start_30
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1241
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_1f

    .line 1242
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v3

    .line 1243
    .local v3, "type":I
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone encrypted type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_58} :catch_5e

    .line 1244
    if-ne v3, v4, :cond_5c

    :goto_5a
    move v5, v4

    goto :goto_1f

    :cond_5c
    move v4, v5

    goto :goto_5a

    .line 1246
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :catch_5e
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private static checkShutdownFlow()V
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 663
    const-string v13, "sys.ipo.disable"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "IPODisableProp":Ljava/lang/String;
    const-string v13, "1"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ae

    move v4, v11

    .line 665
    .local v4, "isIPOEnabled":Z
    :goto_11
    const-string v13, "ro.mtk_ipo_support"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 666
    .local v5, "isIPOsupport":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkEncryptionCondition()Z

    move-result v9

    .line 667
    .local v9, "passIPOEncryptionCondition":Z
    const/4 v6, 0x0

    .line 668
    .local v6, "isSafeMode":Z
    const-string v13, "ro.mtk_smartbook_support"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 669
    .local v8, "isSmartBookSupport":Z
    const/4 v7, 0x0

    .line 671
    .local v7, "isSmartBookPluggedIn":Z
    if-eqz v8, :cond_41

    .line 672
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v13, v13, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v14, "display"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 674
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v7

    .line 678
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_41
    :try_start_41
    const-string v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 680
    .local v10, "wm":Landroid/view/IWindowManager;
    if-eqz v10, :cond_51

    .line 681
    invoke-interface {v10}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_b1

    move-result v6

    .line 686
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_51
    :goto_51
    const-string v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkShutdownFlow: IPO_Support="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mReboot="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sys.ipo.disable="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isSafeMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " passEncryptionCondition="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Smartbook MHL PluggedIn="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v5, :cond_ab

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eq v13, v11, :cond_ab

    if-eqz v4, :cond_ab

    if-eq v6, v11, :cond_ab

    if-eqz v9, :cond_ab

    if-ne v7, v11, :cond_b6

    .line 696
    :cond_ab
    sput v12, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 721
    :goto_ad
    return-void

    .end local v4    # "isIPOEnabled":Z
    .end local v5    # "isIPOsupport":Z
    .end local v6    # "isSafeMode":Z
    .end local v7    # "isSmartBookPluggedIn":Z
    .end local v8    # "isSmartBookSupport":Z
    .end local v9    # "passIPOEncryptionCondition":Z
    :cond_ae
    move v4, v12

    .line 664
    goto/16 :goto_11

    .line 682
    .restart local v4    # "isIPOEnabled":Z
    .restart local v5    # "isIPOsupport":Z
    .restart local v6    # "isSafeMode":Z
    .restart local v7    # "isSmartBookPluggedIn":Z
    .restart local v8    # "isSmartBookSupport":Z
    .restart local v9    # "passIPOEncryptionCondition":Z
    :catch_b1
    move-exception v2

    .line 683
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    .line 701
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b6
    :try_start_b6
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v13, v13, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "ipo_setting"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c4
    .catch Ljava/lang/NullPointerException; {:try_start_b6 .. :try_end_c4} :catch_101

    move-result v13

    if-ne v13, v11, :cond_ff

    move v4, v11

    .line 709
    :goto_c8
    if-ne v4, v11, :cond_10f

    .line 710
    const-string v13, "1"

    const-string v14, "sys.ipo.battlow"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10c

    .line 711
    sput v12, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 719
    :goto_da
    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mShutdownFlow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_ff
    move v4, v12

    .line 701
    goto :goto_c8

    .line 703
    :catch_101
    move-exception v3

    .line 704
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string v11, "ShutdownThread"

    const-string v13, "checkShutdownFlow: fail to get IPO setting"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sput v12, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_ad

    .line 713
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_10c
    sput v11, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_da

    .line 715
    :cond_10f
    sput v12, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_da
.end method

.method private static delayForPlayAnimation()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    .line 643
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_9

    .line 654
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_8
    return-void

    .line 646
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 647
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_8

    .line 649
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_8

    .line 650
    :catch_21
    move-exception v0

    .line 651
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 302
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a2

    .line 303
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 305
    const-string v3, "ShutdownThread"

    const-string v4, "SmartBook: Re-sraw power off dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 311
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_a3

    const v2, 0x10400fe

    .line 317
    .local v2, "resourceId":I
    :goto_28
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_ae

    const v3, 0x10400fd

    :goto_4c
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 345
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 346
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 349
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 351
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 352
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 354
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 355
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 358
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :cond_a2
    return-void

    .line 311
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v1    # "longPressBehavior":I
    :cond_a3
    if-ne v1, v6, :cond_a9

    const v2, 0x10400fc

    goto :goto_28

    :cond_a9
    const v2, 0x10400fb

    goto/16 :goto_28

    .line 319
    .restart local v2    # "resourceId":I
    :cond_ae
    const v3, 0x10400f6

    goto :goto_4c
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 403
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 404
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 405
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 406
    const-string v5, "ShutdownThread"

    const-string v6, "reboot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 410
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v3, :cond_3e

    aget-object v1, v0, v2

    .line 412
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 416
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_3e
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 417
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1187
    if-eqz p0, :cond_38

    .line 1188
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 1190
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_24
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1217
    :try_start_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_37} :catch_55

    .line 1221
    :goto_37
    return-void

    .line 1193
    :cond_38
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 1195
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_3f
    sget-object v4, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_4c

    .line 1203
    :goto_44
    const-wide/16 v2, 0x1f4

    :try_start_46
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_24

    .line 1204
    :catch_4a
    move-exception v2

    goto :goto_24

    .line 1196
    :catch_4c
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 1218
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :catch_55
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 427
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 428
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 429
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 430
    const-string v0, "ShutdownThread"

    const-string v1, "rebootSafeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 432
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v8, 0x0

    .line 203
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 204
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 206
    const-string v5, "ShutdownThread"

    const-string v6, "!!! Request to shutdown !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->startFtraceCapture()V

    .line 211
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 212
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v3, :cond_3e

    aget-object v1, v0, v2

    .line 214
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 218
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_3e
    const-string v5, "ro.monkey"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 219
    const-string v5, "ShutdownThread"

    const-string v6, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_4d
    return-void

    .line 223
    :cond_4e
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_4d
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v6, 0x2

    .line 229
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :try_start_4
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_11

    .line 231
    const-string v3, "ShutdownThread"

    const-string v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v4

    .line 296
    :cond_10
    :goto_10
    return-void

    .line 234
    :cond_11
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_c0

    .line 236
    const-string v3, "ShutdownThread"

    const-string v4, "Notifying thread to start radio shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 240
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_c3

    const v2, 0x10400fe

    .line 246
    .local v2, "resourceId":I
    :goto_2d
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p1, :cond_d3

    .line 249
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_55

    .line 251
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    :cond_55
    const-string v3, "ShutdownThread"

    const-string v4, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_cf

    const v3, 0x10400fd

    :goto_68
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 281
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 282
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 285
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 287
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 288
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    .line 291
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_10

    .line 234
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :catchall_c0
    move-exception v3

    :try_start_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v3

    .line 240
    .restart local v1    # "longPressBehavior":I
    :cond_c3
    if-ne v1, v6, :cond_ca

    const v2, 0x10400fc

    goto/16 :goto_2d

    :cond_ca
    const v2, 0x10400fb

    goto/16 :goto_2d

    .line 255
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v2    # "resourceId":I
    :cond_cf
    const v3, 0x10400f6

    goto :goto_68

    .line 294
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_d3
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_10
.end method

.method private shutdownRadios(I)V
    .registers 16
    .param p1, "timeout"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1044
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1046
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_7a

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    :cond_2a
    move v3, v8

    .line 1051
    .local v3, "bypassRadioOff":Z
    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v4, v10, v12

    .line 1053
    .local v4, "endTime":J
    const/4 v1, 0x2

    new-array v2, v1, [Z

    .line 1054
    .local v2, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;[ZZJ)V

    .line 1160
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1162
    int-to-long v10, p1

    :try_start_3f
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_7c

    .line 1165
    :goto_42
    aget-boolean v1, v2, v7

    if-nez v1, :cond_79

    .line 1166
    const-string v1, "ShutdownThread"

    const-string v9, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_5a

    .line 1168
    const-string v1, "ShutdownThread"

    const-string v9, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    sput v7, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1171
    :cond_5a
    aget-boolean v1, v2, v8

    if-nez v1, :cond_79

    const-string v1, "debug.mdlogger.Running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1172
    const-string v1, "ShutdownThread"

    const-string v7, "mdlogger is running now, so wait for memory dump"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-wide/32 v8, 0xea60

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1177
    :cond_79
    return-void

    .end local v0    # "t":Ljava/lang/Thread;
    .end local v2    # "done":[Z
    .end local v3    # "bypassRadioOff":Z
    .end local v4    # "endTime":J
    :cond_7a
    move v3, v7

    .line 1046
    goto :goto_2b

    .line 1163
    .restart local v0    # "t":Ljava/lang/Thread;
    .restart local v2    # "done":[Z
    .restart local v3    # "bypassRadioOff":Z
    .restart local v4    # "endTime":J
    :catch_7c
    move-exception v1

    goto :goto_42
.end method

.method private static startBootAnimation()V
    .registers 2

    .prologue
    .line 623
    const-string v0, "ShutdownThread"

    const-string v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_21

    .line 627
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_20
    return-void

    .line 630
    :cond_21
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private switchToLauncher()V
    .registers 4

    .prologue
    .line 728
    const-string v1, "ShutdownThread"

    const-string v2, "IPO switch to launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 638
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 740
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 741
    :goto_4
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_1d

    .line 742
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 744
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 745
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    goto :goto_4

    .line 747
    :cond_1d
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_2e

    .line 748
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 749
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 750
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    .line 752
    :cond_2e
    return-void
.end method

.method public running()V
    .registers 39

    .prologue
    .line 755
    const-string v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    .line 757
    new-instance v6, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 770
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_25e

    const-string v2, "1"

    :goto_1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_262

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 771
    .local v29, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_3e

    .line 779
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_3e
    const-string v2, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 789
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, "intent":Landroid/content/Intent;
    const-string v2, "_mode"

    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v22, v4, v8

    .line 796
    .local v22, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 797
    :goto_89
    :try_start_89
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_b1

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v22, v8

    .line 799
    .local v16, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_266

    .line 800
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b1

    .line 802
    const-string v2, "ShutdownThread"

    const-string v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 812
    .end local v16    # "delay":J
    :cond_b1
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_89 .. :try_end_b2} :catchall_274

    .line 816
    const-string v2, "ShutdownThread"

    const-string v4, "sau shutting down..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v2, "oppo.sau.install.zip"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 818
    .local v34, "sauSetupFinish":I
    if-nez v34, :cond_2a2

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v32, v4, v8

    .line 820
    .local v32, "sauEndTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 822
    :goto_cf
    :try_start_cf
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v30, v32, v8

    .line 823
    .local v30, "sauDelay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v30, v8

    if-gtz v2, :cond_277

    .line 824
    const-string v2, "ShutdownThread"

    const-string v5, "sau setup timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_cf .. :try_end_e3} :catchall_28c

    .line 848
    .end local v30    # "sauDelay":J
    .end local v32    # "sauEndTime":J
    :cond_e3
    :goto_e3
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_140

    .line 849
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v6

    invoke-virtual/range {v7 .. v14}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v24, v4, v8

    .line 855
    .local v24, "endTimeIPO":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 856
    :goto_117
    :try_start_117
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_13f

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v24, v8

    .line 858
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_2ac

    .line 859
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_13f

    .line 861
    const-string v2, "ShutdownThread"

    const-string v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 871
    .end local v16    # "delay":J
    :cond_13f
    monitor-exit v4
    :try_end_140
    .catchall {:try_start_117 .. :try_end_140} :catchall_2ba

    .line 874
    .end local v24    # "endTimeIPO":J
    :cond_140
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_15d

    .line 876
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 880
    .local v15, "am":Landroid/app/IActivityManager;
    if-eqz v15, :cond_15d

    .line 882
    const/16 v2, 0x2710

    :try_start_15a
    invoke-interface {v15, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_15a .. :try_end_15d} :catch_3af

    .line 889
    .end local v15    # "am":Landroid/app/IActivityManager;
    :cond_15d
    :goto_15d
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    check-cast v28, Lcom/android/server/pm/PackageManagerService;

    .line 893
    .local v28, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v28, :cond_171

    .line 894
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 898
    :cond_171
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down radios..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 904
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down OppoUsageService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :try_start_186
    const-string v2, "usage"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    .line 907
    .local v36, "usageServiceBinder":Landroid/os/IBinder;
    invoke-static/range {v36 .. v36}, Landroid/os/IOppoUsageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoUsageService;

    move-result-object v35

    .line 908
    .local v35, "usageService":Landroid/os/IOppoUsageService;
    if-eqz v35, :cond_195

    .line 909
    invoke-interface/range {v35 .. v35}, Landroid/os/IOppoUsageService;->shutDown()V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_195} :catch_2bd

    .line 917
    .end local v35    # "usageService":Landroid/os/IOppoUsageService;
    .end local v36    # "usageServiceBinder":Landroid/os/IBinder;
    :cond_195
    :goto_195
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down MountService..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 919
    :cond_1b5
    const-string v2, "ShutdownThread"

    const-string v4, "bypass MountService!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_1bc
    const-string v2, "ShutdownThread"

    const-string v4, "MountService shut done..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v2, "ShutdownThread"

    const-string v4, "set service.shutanim.running to 1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v2, "service.shutanim.running"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_379

    .line 975
    new-instance v37, Landroid/os/SystemVibrator;

    invoke-direct/range {v37 .. v37}, Landroid/os/SystemVibrator;-><init>()V

    .line 977
    .local v37, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_1dd
    sget-object v2, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1e4} :catch_343

    .line 985
    :goto_1e4
    const-wide/16 v4, 0x1f4

    :try_start_1e6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e9
    .catch Ljava/lang/InterruptedException; {:try_start_1e6 .. :try_end_1e9} :catch_34f

    .line 993
    :goto_1e9
    const-string v2, "ShutdownThread"

    const-string v4, "Performing ipo low-level shutdown..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 997
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_20a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_20a

    .line 998
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1001
    :cond_20a
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1004
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->stopFtraceCapture()V

    .line 1007
    sget-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_355

    .line 1008
    sget-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1009
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 1015
    :cond_238
    :goto_238
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 1016
    const/4 v2, 0x0

    :try_start_23c
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1017
    monitor-exit v4
    :try_end_23f
    .catchall {:try_start_23c .. :try_end_23f} :catchall_36d

    .line 1019
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v5, v7}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 1021
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1023
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1025
    :try_start_257
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_25c
    .catch Ljava/lang/InterruptedException; {:try_start_257 .. :try_end_25c} :catch_370
    .catchall {:try_start_257 .. :try_end_25c} :catchall_376

    .line 1029
    :goto_25c
    :try_start_25c
    monitor-exit v4
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_376

    .line 1041
    .end local v37    # "vibrator":Landroid/os/Vibrator;
    :goto_25d
    return-void

    .line 770
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v22    # "endTime":J
    .end local v28    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v29    # "reason":Ljava/lang/String;
    .end local v34    # "sauSetupFinish":I
    :cond_25e
    const-string v2, "0"

    goto/16 :goto_1a

    :cond_262
    const-string v2, ""

    goto/16 :goto_24

    .line 808
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "delay":J
    .restart local v22    # "endTime":J
    .restart local v29    # "reason":Ljava/lang/String;
    :cond_266
    :try_start_266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_26f
    .catch Ljava/lang/InterruptedException; {:try_start_266 .. :try_end_26f} :catch_271
    .catchall {:try_start_266 .. :try_end_26f} :catchall_274

    goto/16 :goto_89

    .line 809
    :catch_271
    move-exception v2

    goto/16 :goto_89

    .line 812
    .end local v16    # "delay":J
    :catchall_274
    move-exception v2

    :try_start_275
    monitor-exit v4
    :try_end_276
    .catchall {:try_start_275 .. :try_end_276} :catchall_274

    throw v2

    .line 827
    .restart local v30    # "sauDelay":J
    .restart local v32    # "sauEndTime":J
    .restart local v34    # "sauSetupFinish":I
    :cond_277
    :try_start_277
    const-string v2, "oppo.sau.install.zip"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 828
    .local v19, "finish":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_28f

    .line 829
    const-string v2, "ShutdownThread"

    const-string v5, "zip set up successfull!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e2

    .line 841
    .end local v19    # "finish":I
    .end local v30    # "sauDelay":J
    :catchall_28c
    move-exception v2

    monitor-exit v4
    :try_end_28e
    .catchall {:try_start_277 .. :try_end_28e} :catchall_28c

    throw v2

    .line 833
    .restart local v19    # "finish":I
    .restart local v30    # "sauDelay":J
    :cond_28f
    const-wide/16 v8, 0x3e8

    :try_start_291
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_294
    .catch Ljava/lang/InterruptedException; {:try_start_291 .. :try_end_294} :catch_3ac
    .catchall {:try_start_291 .. :try_end_294} :catchall_28c

    .line 837
    :goto_294
    :try_start_294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_29d
    .catch Ljava/lang/InterruptedException; {:try_start_294 .. :try_end_29d} :catch_29f
    .catchall {:try_start_294 .. :try_end_29d} :catchall_28c

    goto/16 :goto_cf

    .line 838
    :catch_29f
    move-exception v2

    goto/16 :goto_cf

    .line 842
    .end local v19    # "finish":I
    .end local v30    # "sauDelay":J
    .end local v32    # "sauEndTime":J
    :cond_2a2
    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v2, v0, :cond_e3

    .line 843
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->DeleteSetupFile()V

    goto/16 :goto_e3

    .line 867
    .restart local v16    # "delay":J
    .restart local v24    # "endTimeIPO":J
    :cond_2ac
    :try_start_2ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2b5
    .catch Ljava/lang/InterruptedException; {:try_start_2ac .. :try_end_2b5} :catch_2b7
    .catchall {:try_start_2ac .. :try_end_2b5} :catchall_2ba

    goto/16 :goto_117

    .line 868
    :catch_2b7
    move-exception v2

    goto/16 :goto_117

    .line 871
    .end local v16    # "delay":J
    :catchall_2ba
    move-exception v2

    :try_start_2bb
    monitor-exit v4
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ba

    throw v2

    .line 911
    .end local v24    # "endTimeIPO":J
    .restart local v28    # "pm":Lcom/android/server/pm/PackageManagerService;
    :catch_2bd
    move-exception v18

    .line 912
    .local v18, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down OppoUsageService failed!"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_195

    .line 922
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_2c9
    new-instance v27, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 933
    .local v27, "observer":Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v20, v4, v8

    .line 935
    .local v20, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 937
    :try_start_2e4
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v26

    .line 939
    .local v26, "mount":Landroid/os/storage/IMountService;
    if-eqz v26, :cond_321

    .line 940
    invoke-interface/range {v26 .. v27}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_2f3} :catch_329
    .catchall {:try_start_2e4 .. :try_end_2f3} :catchall_31e

    .line 947
    .end local v26    # "mount":Landroid/os/storage/IMountService;
    :goto_2f3
    :try_start_2f3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_31b

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v20, v8

    .line 949
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_334

    .line 950
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_31b

    .line 952
    const-string v2, "ShutdownThread"

    const-string v5, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 963
    .end local v16    # "delay":J
    :cond_31b
    monitor-exit v4

    goto/16 :goto_1bc

    :catchall_31e
    move-exception v2

    monitor-exit v4
    :try_end_320
    .catchall {:try_start_2f3 .. :try_end_320} :catchall_31e

    throw v2

    .line 942
    .restart local v26    # "mount":Landroid/os/storage/IMountService;
    :cond_321
    :try_start_321
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_328} :catch_329
    .catchall {:try_start_321 .. :try_end_328} :catchall_31e

    goto :goto_2f3

    .line 944
    .end local v26    # "mount":Landroid/os/storage/IMountService;
    :catch_329
    move-exception v18

    .line 945
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_32a
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object/from16 v0, v18

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_333
    .catchall {:try_start_32a .. :try_end_333} :catchall_31e

    goto :goto_2f3

    .line 958
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v16    # "delay":J
    :cond_334
    :try_start_334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_33d
    .catch Ljava/lang/InterruptedException; {:try_start_334 .. :try_end_33d} :catch_33e
    .catchall {:try_start_334 .. :try_end_33d} :catchall_31e

    goto :goto_2f3

    .line 959
    :catch_33e
    move-exception v18

    .line 960
    .local v18, "e":Ljava/lang/InterruptedException;
    :try_start_33f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_342
    .catchall {:try_start_33f .. :try_end_342} :catchall_31e

    goto :goto_2f3

    .line 978
    .end local v16    # "delay":J
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .end local v20    # "endShutTime":J
    .end local v27    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v37    # "vibrator":Landroid/os/Vibrator;
    :catch_343
    move-exception v18

    .line 980
    .local v18, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v4, "Failed to vibrate during shutdown."

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e4

    .line 986
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_34f
    move-exception v18

    .line 987
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1e9

    .line 1010
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_355
    sget-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_238

    .line 1011
    const-string v2, "ShutdownThread"

    const-string v4, "set \'service.bootanim.exit\' = 1)."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v2, "service.bootanim.exit"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_238

    .line 1017
    :catchall_36d
    move-exception v2

    :try_start_36e
    monitor-exit v4
    :try_end_36f
    .catchall {:try_start_36e .. :try_end_36f} :catchall_36d

    throw v2

    .line 1026
    :catch_370
    move-exception v18

    .line 1027
    .restart local v18    # "e":Ljava/lang/InterruptedException;
    :try_start_371
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_25c

    .line 1029
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :catchall_376
    move-exception v2

    monitor-exit v4
    :try_end_378
    .catchall {:try_start_371 .. :try_end_378} :catchall_376

    throw v2

    .line 1032
    .end local v37    # "vibrator":Landroid/os/Vibrator;
    :cond_379
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_38c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_38c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_390

    :cond_38c
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_393

    .line 1034
    :cond_390
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1036
    :cond_393
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v5, v7, v8}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1038
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->stopFtraceCapture()V

    .line 1039
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_25d

    .line 834
    .end local v28    # "pm":Lcom/android/server/pm/PackageManagerService;
    .restart local v19    # "finish":I
    .restart local v30    # "sauDelay":J
    .restart local v32    # "sauEndTime":J
    :catch_3ac
    move-exception v2

    goto/16 :goto_294

    .line 883
    .end local v19    # "finish":I
    .end local v30    # "sauDelay":J
    .end local v32    # "sauEndTime":J
    .restart local v15    # "am":Landroid/app/IActivityManager;
    :catch_3af
    move-exception v2

    goto/16 :goto_15d
.end method
