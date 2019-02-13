.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DATASHPAING_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.datashaping.DataShapingService"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final EPDG_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.epdg.EpdgService"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final RNS_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.rns.RnsService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 269
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .registers 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 411
    :try_start_0
    sget-boolean v2, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v2, :cond_18

    .line 412
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 414
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 415
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_22

    .line 422
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_18
    :goto_18
    return-void

    .line 417
    :catch_19
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 419
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 443
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 444
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 451
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0xc030002

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 453
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 281
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 426
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 429
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1b

    move v1, v3

    .line 432
    .local v1, "reboot":Z
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2d

    .line 433
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "reason":Ljava/lang/String;
    :goto_29
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 440
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_2c
    return-void

    .line 435
    .restart local v1    # "reboot":Z
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_29
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 404
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    return-void
.end method

.method private run()V
    .registers 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 294
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 299
    :cond_19
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 303
    const-string v0, "1"

    const-string v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 304
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 314
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 318
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 319
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 320
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 329
    :cond_69
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 333
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 337
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 341
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 344
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 347
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 350
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 353
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 358
    :try_start_96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_e0

    .line 366
    :goto_9f
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 369
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 372
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 373
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 377
    :try_start_b5
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 379
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_be} :catch_fa

    .line 391
    :cond_be
    :goto_be
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 392
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_cb
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 400
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_e0
    move-exception v6

    .line 360
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 380
    .end local v6    # "e":Ljava/io/IOException;
    :catch_fa
    move-exception v7

    .line 381
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_be

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_be

    .line 385
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v8}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_be
.end method

.method private startBootstrapServices()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 466
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 469
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_25

    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_10
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_ef

    .line 473
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_15
    const-string v6, "SystemServer"

    const-string v8, "Create message monitor service successfully ."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v6, "msgmonitorservice"

    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_25} :catch_115

    .line 484
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_25
    :goto_25
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 486
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 487
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 493
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 497
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 501
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 504
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 507
    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "cryptState":Ljava/lang/String;
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 509
    const-string v6, "SystemServer"

    const-string v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 517
    :cond_7c
    :goto_7c
    const-string v6, "0"

    const-string v8, "ro.mtk_antibricking_level"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 518
    .local v1, "disabled":Z
    if-nez v1, :cond_ae

    .line 520
    :try_start_8a
    const-string v6, "SystemServer"

    const-string v8, "Recovery Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 522
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_ae

    .line 523
    const-string v6, "recovery"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v8}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_ae} :catch_10c

    .line 533
    :cond_ae
    :goto_ae
    const-string v6, "SystemServer"

    const-string v8, "Package Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_113

    move v6, v7

    :goto_bc
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 536
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 537
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 539
    const-string v6, "SystemServer"

    const-string v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 543
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 546
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 547
    return-void

    .line 477
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_ef
    move-exception v2

    .line 478
    .local v2, "e":Ljava/lang/Throwable;
    :goto_f0
    const-string v6, "SystemServer"

    const-string v8, "Starting message monitor service exception "

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 511
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_f9
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 512
    const-string v6, "SystemServer"

    const-string v8, "Device encrypted - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_7c

    .line 526
    .restart local v1    # "disabled":Z
    :catch_10c
    move-exception v2

    .line 527
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ae

    .line 534
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_113
    const/4 v6, 0x0

    goto :goto_bc

    .line 477
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_115
    move-exception v2

    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_f0
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/OppoLightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/OppoLightsService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    .line 563
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 566
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 567
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 573
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 574
    return-void
.end method

.method private startOtherServices()V
    .registers 123

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 582
    .local v3, "context":Landroid/content/Context;
    const/16 v36, 0x0

    .line 583
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v52, 0x0

    .line 584
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    const/16 v115, 0x0

    .line 585
    .local v115, "vibrator":Lcom/android/server/VibratorService;
    const/16 v38, 0x0

    .line 586
    .local v38, "alarm":Landroid/app/IAlarmManager;
    const/16 v83, 0x0

    .line 587
    .local v83, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 588
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 589
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v85, 0x0

    .line 590
    .local v85, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .line 591
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v86, 0x0

    .line 592
    .local v86, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v105, 0x0

    .line 593
    .local v105, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v121, 0x0

    .line 594
    .local v121, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v43, 0x0

    .line 595
    .local v43, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v114, 0x0

    .line 596
    .local v114, "usb":Lcom/android/server/usb/UsbService;
    const/16 v103, 0x0

    .line 597
    .local v103, "serial":Lcom/android/server/SerialService;
    const/16 v89, 0x0

    .line 598
    .local v89, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v45, 0x0

    .line 599
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v69, 0x0

    .line 600
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v108, 0x0

    .line 601
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v50, 0x0

    .line 602
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v41, 0x0

    .line 604
    .local v41, "audioService":Landroid/media/AudioService;
    const/16 v80, 0x0

    .line 607
    .local v80, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v81, 0x0

    .line 609
    .local v81, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v65, 0x0

    .line 611
    .local v65, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 612
    .local v61, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 613
    .local v57, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 614
    .local v55, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 615
    .local v63, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 616
    .local v56, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 617
    .local v62, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 618
    .local v60, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 619
    .local v58, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 620
    .local v59, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    .line 624
    .local v72, "isEmulator":Z
    :try_start_7d
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 627
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 632
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v109, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_af
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_af} :catch_d31

    .line 634
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v109, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_af
    const-string v4, "telephony.registry"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 636
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 639
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_af .. :try_end_cf} :catch_95f

    .line 644
    :try_start_cf
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v37, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_dd} :catch_953
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_dd} :catch_95f

    .line 646
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_dd
    const-string v4, "account"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e4} :catch_d64
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_e4} :catch_d34

    move-object/from16 v36, v37

    .line 651
    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_e6
    :try_start_e6
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_984

    const/4 v4, 0x1

    :goto_f5
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v52

    .line 656
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_fc
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_fc} :catch_95f

    move-result v4

    if-eqz v4, :cond_118

    .line 658
    :try_start_ff
    const-string v4, "SystemServer"

    const-string v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v82, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_10d} :catch_987
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_10d} :catch_95f

    .line 660
    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v82, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_10d
    const-string v4, "mobile"

    invoke-virtual/range {v82 .. v82}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_116} :catch_d5f
    .catch Ljava/lang/RuntimeException; {:try_start_10d .. :try_end_116} :catch_d3b

    move-object/from16 v81, v82

    .line 667
    .end local v82    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_118
    :goto_118
    :try_start_118
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 670
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v116, Lcom/android/server/VibratorService;

    move-object/from16 v0, v116

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_118 .. :try_end_134} :catch_95f

    .line 672
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .local v116, "vibrator":Lcom/android/server/VibratorService;
    :try_start_134
    const-string v4, "vibrator"

    move-object/from16 v0, v116

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 674
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v51, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_149
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_149} :catch_d42

    .line 676
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v51, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_149
    const-string v4, "consumer_ir"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 679
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v38

    .line 682
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v120

    .line 684
    .local v120, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v120

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 686
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v70, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_185
    .catch Ljava/lang/RuntimeException; {:try_start_149 .. :try_end_185} :catch_d49

    .line 689
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v70, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_185
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_993

    const/4 v4, 0x1

    move v5, v4

    :goto_195
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_997

    const/4 v4, 0x1

    :goto_19c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v70

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v121

    .line 693
    const-string v4, "window"

    move-object/from16 v0, v121

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 694
    const-string v4, "input"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v121

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 698
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 699
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/input/InputManagerService;->start()V

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 707
    if-eqz v72, :cond_99a

    .line 708
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_1d9
    invoke-static {v3}, Lcom/android/server/ColorInjector$SystemServer;->addService(Landroid/content/Context;)V
    :try_end_1dc
    .catch Ljava/lang/RuntimeException; {:try_start_185 .. :try_end_1dc} :catch_9aa

    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v115, v116

    .line 739
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .end local v120    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1e4
    :goto_1e4
    const/16 v106, 0x0

    .line 740
    .local v106, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v91, 0x0

    .line 741
    .local v91, "notification":Landroid/app/INotificationManager;
    const/16 v67, 0x0

    .line 745
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v112, 0x0

    .line 747
    .local v112, "usageService":Lcom/android/server/oppo/OppoUsageService;
    const/16 v118, 0x0

    .line 748
    .local v118, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v73, 0x0

    .line 749
    .local v73, "location":Lcom/android/server/LocationManagerService;
    const/16 v53, 0x0

    .line 750
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v110, 0x0

    .line 751
    .local v110, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v75, 0x0

    .line 752
    .local v75, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v94, 0x0

    .line 753
    .local v94, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v97, 0x0

    .line 754
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v39, 0x0

    .line 755
    .local v39, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v77, 0x0

    .line 757
    .local v77, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v100, 0x0

    .line 760
    .local v100, "pps":Lcom/android/server/pps/PPS;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_231

    .line 764
    :try_start_207
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v68

    move-object/from16 v1, v121

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_217
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_217} :catch_9ed

    .line 773
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v68, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_217
    const-string v4, "input_method"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21e
    .catch Ljava/lang/Throwable; {:try_start_217 .. :try_end_21e} :catch_d2c

    move-object/from16 v67, v68

    .line 779
    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_220
    :try_start_220
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_231
    .catch Ljava/lang/Throwable; {:try_start_220 .. :try_end_231} :catch_9f9

    .line 789
    :cond_231
    :goto_231
    :try_start_231
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_234
    .catch Ljava/lang/Throwable; {:try_start_231 .. :try_end_234} :catch_a05

    .line 794
    :goto_234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_262

    .line 795
    if-nez v61, :cond_262

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_262

    .line 802
    :try_start_24b
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v84, Lcom/android/server/MountService;

    move-object/from16 v0, v84

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_259
    .catch Ljava/lang/Throwable; {:try_start_24b .. :try_end_259} :catch_a11

    .line 804
    .end local v83    # "mountService":Lcom/android/server/MountService;
    .local v84, "mountService":Lcom/android/server/MountService;
    :try_start_259
    const-string v4, "mount"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_260
    .catch Ljava/lang/Throwable; {:try_start_259 .. :try_end_260} :catch_d27

    move-object/from16 v83, v84

    .line 812
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v83    # "mountService":Lcom/android/server/MountService;
    :cond_262
    :goto_262
    :try_start_262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_269
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_269} :catch_a1d

    .line 818
    :goto_269
    :try_start_269
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10404b1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_27c
    .catch Landroid/os/RemoteException; {:try_start_269 .. :try_end_27c} :catch_d24

    .line 825
    :goto_27c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d6d

    .line 826
    if-nez v60, :cond_2bc

    .line 828
    :try_start_285
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v76, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_293
    .catch Ljava/lang/Throwable; {:try_start_285 .. :try_end_293} :catch_a29

    .line 830
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_293
    const-string v4, "lock_settings"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29a
    .catch Ljava/lang/Throwable; {:try_start_293 .. :try_end_29a} :catch_d1f

    move-object/from16 v75, v76

    .line 835
    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_29c
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b3

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 841
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 844
    :cond_2bc
    if-nez v62, :cond_2da

    .line 846
    :try_start_2be
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v107, Lcom/android/server/ColorStatusBarManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-direct {v0, v3, v1}, Lcom/android/server/ColorStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2ce
    .catch Ljava/lang/Throwable; {:try_start_2be .. :try_end_2ce} :catch_a35

    .line 855
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v107, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_2ce
    const-string v4, "statusbar"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V
    :try_end_2d8
    .catch Ljava/lang/Throwable; {:try_start_2ce .. :try_end_2d8} :catch_d1a

    move-object/from16 v106, v107

    .line 861
    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_2da
    :goto_2da
    if-nez v60, :cond_2ed

    .line 863
    :try_start_2dc
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2dc .. :try_end_2ed} :catch_a41

    .line 871
    :cond_2ed
    :goto_2ed
    if-nez v58, :cond_302

    .line 873
    :try_start_2ef
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    :try_end_302
    .catch Ljava/lang/Throwable; {:try_start_2ef .. :try_end_302} :catch_a4d

    :cond_302
    :goto_302
    if-nez v60, :cond_31b

    :try_start_304
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v111, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_312
    .catch Ljava/lang/Throwable; {:try_start_304 .. :try_end_312} :catch_a59

    .line 885
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v111, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_312
    const-string v4, "textservices"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_319
    .catch Ljava/lang/Throwable; {:try_start_312 .. :try_end_319} :catch_d15

    move-object/from16 v110, v111

    .line 891
    .end local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_31b
    :goto_31b
    if-nez v58, :cond_d69

    .line 893
    :try_start_31d
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v87, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_31d .. :try_end_32b} :catch_a65

    .line 895
    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_32b
    const-string v4, "network_score"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_332
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_332} :catch_d10

    move-object/from16 v86, v87

    .line 901
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_334
    :try_start_334
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v88, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v88

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_344
    .catch Ljava/lang/Throwable; {:try_start_334 .. :try_end_344} :catch_a71

    .line 903
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v88, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_344
    const-string v4, "netstats"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34b
    .catch Ljava/lang/Throwable; {:try_start_344 .. :try_end_34b} :catch_d0b

    move-object/from16 v6, v88

    .line 909
    .end local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_34d
    :try_start_34d
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_365
    .catch Ljava/lang/Throwable; {:try_start_34d .. :try_end_365} :catch_a7d

    .line 914
    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_365
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36a
    .catch Ljava/lang/Throwable; {:try_start_365 .. :try_end_36a} :catch_d08

    .line 919
    :goto_36a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a3

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 931
    :cond_3a3
    :try_start_3a3
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_3b1
    .catch Ljava/lang/Throwable; {:try_start_3a3 .. :try_end_3b1} :catch_a8b

    .line 934
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v49, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_3b1
    const-string v4, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 935
    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 936
    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_3c2
    .catch Ljava/lang/Throwable; {:try_start_3b1 .. :try_end_3c2} :catch_d03

    move-object/from16 v48, v49

    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_3c4
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addSambaService(Lcom/android/server/SystemServer;)V

    :try_start_3c7
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v105

    const-string v4, "servicediscovery"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d9
    .catch Ljava/lang/Throwable; {:try_start_3c7 .. :try_end_3d9} :catch_a97

    :goto_3d9
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f7

    :try_start_3e7
    const-string v4, "SystemServer"

    const-string v5, "EPDG Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.epdg.EpdgService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3f7
    .catch Ljava/lang/Throwable; {:try_start_3e7 .. :try_end_3f7} :catch_aa3

    :cond_3f7
    :goto_3f7
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_415

    :try_start_405
    const-string v4, "SystemServer"

    const-string v5, "RNS Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.rns.RnsService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_415
    .catch Ljava/lang/Throwable; {:try_start_405 .. :try_end_415} :catch_ac0

    :cond_415
    :goto_415
    const-string v4, "SystemServer"

    const-string v5, "RNS Service_END"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1"

    const-string v5, "persist.mtk.datashaping.support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43a

    :try_start_42a
    const-string v4, "SystemServer"

    const-string v5, "Start DataShaping Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.datashaping.DataShapingService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_43a
    .catch Ljava/lang/Throwable; {:try_start_42a .. :try_end_43a} :catch_acc

    :cond_43a
    :goto_43a
    if-nez v60, :cond_44d

    :try_start_43c
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44d
    .catch Ljava/lang/Throwable; {:try_start_43c .. :try_end_44d} :catch_ad8

    :cond_44d
    :goto_44d
    if-eqz v83, :cond_458

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_458

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_458
    :try_start_458
    const-string v4, "SystemServer"

    const-string v5, "Oppo Expand Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v93, Lcom/android/server/oppo/OppoExService;

    move-object/from16 v0, v93

    move-object/from16 v1, v121

    invoke-direct {v0, v3, v1}, Lcom/android/server/oppo/OppoExService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .local v93, "oppoExService":Lcom/android/server/oppo/OppoExService;
    const-string v4, "OPPOExService"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46f
    .catch Ljava/lang/Throwable; {:try_start_458 .. :try_end_46f} :catch_ae4

    .end local v93    # "oppoExService":Lcom/android/server/oppo/OppoExService;
    :goto_46f
    :try_start_46f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    if-eqz v4, :cond_47c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    invoke-virtual {v4}, Lcom/android/server/lights/OppoLightsService;->systemReady()V
    :try_end_47c
    .catch Ljava/lang/Throwable; {:try_start_46f .. :try_end_47c} :catch_af0

    :cond_47c
    :goto_47c
    if-eqz v36, :cond_481

    :try_start_47e
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_481
    .catch Ljava/lang/Throwable; {:try_start_47e .. :try_end_481} :catch_afc

    :cond_481
    :goto_481
    if-eqz v52, :cond_486

    :try_start_483
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_486
    .catch Ljava/lang/Throwable; {:try_start_483 .. :try_end_486} :catch_b08

    :cond_486
    :goto_486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v91

    move-object/from16 v0, v91

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.support.single.partition"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "SystemServer"

    const-string v5, "single partition, add OppoDeviceStorageMonitorService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4ba
    if-nez v56, :cond_4ea

    :try_start_4bc
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4ca
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4ca} :catch_b26

    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .local v74, "location":Lcom/android/server/LocationManagerService;
    :try_start_4ca
    const-string v4, "location"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d1
    .catch Ljava/lang/Throwable; {:try_start_4ca .. :try_end_4d1} :catch_cfe

    move-object/from16 v73, v74

    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    :goto_4d3
    :try_start_4d3
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v54, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_4e1
    .catch Ljava/lang/Throwable; {:try_start_4d3 .. :try_end_4e1} :catch_b32

    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v54, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_4e1
    const-string v4, "country_detector"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e8
    .catch Ljava/lang/Throwable; {:try_start_4e1 .. :try_end_4e8} :catch_cf9

    move-object/from16 v53, v54

    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_4ea
    :goto_4ea
    if-nez v60, :cond_50e

    :try_start_4ec
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4fd
    .catch Ljava/lang/Throwable; {:try_start_4ec .. :try_end_4fd} :catch_b3e

    :goto_4fd
    :try_start_4fd
    const-string v4, "SystemServer"

    const-string v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "search_engine"

    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50e
    .catch Ljava/lang/Throwable; {:try_start_4fd .. :try_end_50e} :catch_b4a

    :cond_50e
    :goto_50e
    :try_start_50e
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_526
    .catch Ljava/lang/Throwable; {:try_start_50e .. :try_end_526} :catch_b56

    :goto_526
    if-nez v60, :cond_54c

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_54c

    :try_start_535
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v119, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v119

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_543
    .catch Ljava/lang/Throwable; {:try_start_535 .. :try_end_543} :catch_b62

    .end local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v119, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_543
    const-string v4, "wallpaper"

    move-object/from16 v0, v119

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54a
    .catch Ljava/lang/Throwable; {:try_start_543 .. :try_end_54a} :catch_cf4

    move-object/from16 v118, v119

    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_54c
    :goto_54c
    if-nez v57, :cond_57b

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57b

    :try_start_55c
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v99

    .local v99, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "oppo.cmcc.test"

    move-object/from16 v0, v99

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v71

    .local v71, "isCmccTest":Z
    if-eqz v71, :cond_b6e

    const-string v4, "audio"

    new-instance v5, Landroid/media/AudioService;

    invoke-direct {v5, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57b
    .catch Ljava/lang/Throwable; {:try_start_55c .. :try_end_57b} :catch_b80

    .end local v71    # "isCmccTest":Z
    .end local v99    # "pm":Landroid/content/pm/PackageManager;
    :cond_57b
    :goto_57b
    if-nez v57, :cond_5ab

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5ab

    const/4 v4, 0x1

    const-string v5, "ro.mtk_audio_profiles"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_5ab

    :try_start_59a
    const-string v4, "SystemServer"

    const-string v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "audioprofile"

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5ab
    .catch Ljava/lang/Throwable; {:try_start_59a .. :try_end_5ab} :catch_b8c

    :cond_5ab
    :goto_5ab
    const-string v4, "1"

    const-string v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ca

    :try_start_5b9
    const-string v4, "SystemServer"

    const-string v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sensorhubservice"

    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5ca
    .catch Ljava/lang/Throwable; {:try_start_5b9 .. :try_end_5ca} :catch_b98

    :cond_5ca
    :goto_5ca
    if-nez v60, :cond_5d5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_5d5
    if-nez v57, :cond_5ea

    :try_start_5d7
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v69

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_5ea
    .catch Ljava/lang/Throwable; {:try_start_5d7 .. :try_end_5ea} :catch_ba4

    :cond_5ea
    :goto_5ea
    if-nez v60, :cond_624

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_604

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60d

    :cond_604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_60d
    :try_start_60d
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v104, Lcom/android/server/SerialService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_61b
    .catch Ljava/lang/Throwable; {:try_start_60d .. :try_end_61b} :catch_bb0

    .end local v103    # "serial":Lcom/android/server/SerialService;
    .local v104, "serial":Lcom/android/server/SerialService;
    :try_start_61b
    const-string v4, "serial"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_622
    .catch Ljava/lang/Throwable; {:try_start_61b .. :try_end_622} :catch_cea

    move-object/from16 v103, v104

    .end local v104    # "serial":Lcom/android/server/SerialService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    :cond_624
    :goto_624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v60, :cond_680

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_656

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_66b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_680

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_680
    :try_start_680
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_691
    .catch Ljava/lang/Throwable; {:try_start_680 .. :try_end_691} :catch_bbc

    :goto_691
    :try_start_691
    const-string v4, "SystemServer"

    const-string v5, "Oppo Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v92, Lcom/android/server/oppo/OppoService;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/oppo/OppoService;-><init>(Landroid/content/Context;)V

    .local v92, "oppo":Lcom/android/server/oppo/OppoService;
    const-string v4, "OPPO"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a6
    .catch Ljava/lang/Throwable; {:try_start_691 .. :try_end_6a6} :catch_bc8

    .end local v92    # "oppo":Lcom/android/server/oppo/OppoService;
    :goto_6a6
    :try_start_6a6
    const-string v4, "SystemServer"

    const-string v5, "OPPO Usage Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/oppo/OppoUsageService;

    move-object/from16 v0, v113

    invoke-direct {v0, v3}, Lcom/android/server/oppo/OppoUsageService;-><init>(Landroid/content/Context;)V
    :try_end_6b4
    .catch Ljava/lang/Throwable; {:try_start_6a6 .. :try_end_6b4} :catch_bd4

    .end local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .local v113, "usageService":Lcom/android/server/oppo/OppoUsageService;
    :try_start_6b4
    const-string v4, "usage"

    move-object/from16 v0, v113

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6bb
    .catch Ljava/lang/Throwable; {:try_start_6b4 .. :try_end_6bb} :catch_ce5

    move-object/from16 v112, v113

    .end local v113    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    :goto_6bd
    :try_start_6bd
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ce
    .catch Ljava/lang/Throwable; {:try_start_6bd .. :try_end_6ce} :catch_be0

    :goto_6ce
    if-nez v58, :cond_6e2

    if-nez v59, :cond_6e2

    :try_start_6d2
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v90, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_6e0
    .catch Ljava/lang/Throwable; {:try_start_6d2 .. :try_end_6e0} :catch_bec

    .end local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v89, v90

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_6e2
    :goto_6e2
    if-nez v57, :cond_6fb

    :try_start_6e4
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_6f2
    .catch Ljava/lang/Throwable; {:try_start_6e4 .. :try_end_6f2} :catch_bf8

    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v46, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_6f2
    const-string v4, "commontime_management"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f9
    .catch Ljava/lang/Throwable; {:try_start_6f2 .. :try_end_6f9} :catch_ce0

    move-object/from16 v45, v46

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_6fb
    :goto_6fb
    if-nez v58, :cond_709

    :try_start_6fd
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_709
    .catch Ljava/lang/Throwable; {:try_start_6fd .. :try_end_709} :catch_c04

    :cond_709
    :goto_709
    if-nez v60, :cond_714

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_714
    if-nez v60, :cond_738

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_738

    if-nez v4, :cond_738

    :try_start_721
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_72f
    .catch Ljava/lang/Throwable; {:try_start_721 .. :try_end_72f} :catch_c10

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v40, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_72f
    const-string v4, "assetatlas"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_736
    .catch Ljava/lang/Throwable; {:try_start_72f .. :try_end_736} :catch_cdb

    move-object/from16 v39, v40

    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_738
    :goto_738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_74d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_774

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_789

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_789
    if-nez v60, :cond_7c5

    :try_start_78b
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_799
    .catch Ljava/lang/Throwable; {:try_start_78b .. :try_end_799} :catch_c1c

    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_799
    const-string v4, "media_router"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a0
    .catch Ljava/lang/Throwable; {:try_start_799 .. :try_end_7a0} :catch_cd6

    move-object/from16 v77, v78

    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_7a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    :try_start_7bb
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_7c5
    .catch Ljava/lang/Throwable; {:try_start_7bb .. :try_end_7c5} :catch_c28

    :cond_7c5
    :goto_7c5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82c

    :try_start_7dc
    const-string v4, "SystemServer"

    const-string v5, "PerfMgr state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v95, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v95 .. v95}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_7e8
    .catch Ljava/lang/Throwable; {:try_start_7dc .. :try_end_7e8} :catch_c34

    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v95, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_7e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v95

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_7f1
    .catch Ljava/lang/Throwable; {:try_start_7e8 .. :try_end_7f1} :catch_cd1

    move-object/from16 v94, v95

    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_7f3
    :try_start_7f3
    new-instance v98, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_7fa
    .catch Ljava/lang/Throwable; {:try_start_7f3 .. :try_end_7fa} :catch_c40

    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v98, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v96, 0x0

    .local v96, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_7fc
    new-instance v96, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v96

    move-object/from16 v1, v98

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .restart local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v96, :cond_82a

    const-string v4, "mtk-perfservice"

    invoke-interface/range {v96 .. v96}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82a
    .catch Ljava/lang/Throwable; {:try_start_7fc .. :try_end_82a} :catch_ccc

    :cond_82a
    move-object/from16 v97, v98

    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_82c
    :goto_82c
    :try_start_82c
    const-string v4, "SystemServer"

    const-string v5, "PPS state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v101, Lcom/android/server/pps/PPS;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/pps/PPS;-><init>(Landroid/content/Context;)V
    :try_end_83a
    .catch Ljava/lang/Throwable; {:try_start_82c .. :try_end_83a} :catch_c4c

    .end local v100    # "pps":Lcom/android/server/pps/PPS;
    .local v101, "pps":Lcom/android/server/pps/PPS;
    :try_start_83a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v101

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_843
    .catch Ljava/lang/Throwable; {:try_start_83a .. :try_end_843} :catch_cc8

    move-object/from16 v100, v101

    .end local v101    # "pps":Lcom/android/server/pps/PPS;
    .restart local v100    # "pps":Lcom/android/server/pps/PPS;
    :goto_845
    if-nez v60, :cond_86e

    const-string v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86e

    :try_start_855
    const-string v4, "SystemServer"

    const-string v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v66, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_863
    .catch Ljava/lang/Throwable; {:try_start_855 .. :try_end_863} :catch_c58

    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v66, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_863
    const-string v4, "mtkhdmi"

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86c
    .catch Ljava/lang/Throwable; {:try_start_863 .. :try_end_86c} :catch_cc4

    move-object/from16 v65, v66

    .end local v66    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :cond_86e
    :goto_86e
    if-nez v60, :cond_879

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_879
    const/16 v102, 0x0

    .local v102, "safeMode":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v80

    .end local v80    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v80, Lcom/android/server/MmsServiceBroker;

    .restart local v80    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v121

    move-object/from16 v5, v118

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_897
    invoke-virtual/range {v115 .. v115}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_89a
    .catch Ljava/lang/Throwable; {:try_start_897 .. :try_end_89a} :catch_c64

    :goto_89a
    if-eqz v75, :cond_89f

    :try_start_89c
    invoke-virtual/range {v75 .. v75}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_89f
    .catch Ljava/lang/Throwable; {:try_start_89c .. :try_end_89f} :catch_c70

    :cond_89f
    :goto_89f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_8b1
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_8b4
    .catch Ljava/lang/Throwable; {:try_start_8b1 .. :try_end_8b4} :catch_c7c

    :goto_8b4
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .local v47, "config":Landroid/content/res/Configuration;
    new-instance v79, Landroid/util/DisplayMetrics;

    invoke-direct/range {v79 .. v79}, Landroid/util/DisplayMetrics;-><init>()V

    .local v79, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/view/WindowManager;

    .local v117, "w":Landroid/view/WindowManager;
    invoke-interface/range {v117 .. v117}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v79

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_8d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_8e8
    .catch Ljava/lang/Throwable; {:try_start_8d9 .. :try_end_8e8} :catch_c88

    :goto_8e8
    :try_start_8e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/FingerprintService;->systemReady()V
    :try_end_8ef
    .catch Ljava/lang/Throwable; {:try_start_8e8 .. :try_end_8ef} :catch_c94

    :goto_8ef
    :try_start_8ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_8f6
    .catch Ljava/lang/Throwable; {:try_start_8ef .. :try_end_8f6} :catch_ca0

    :goto_8f6
    :try_start_8f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v4, v5, v8}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_902
    .catch Ljava/lang/Throwable; {:try_start_8f6 .. :try_end_902} :catch_cac

    :goto_902
    move-object/from16 v12, v83

    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v7

    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v6

    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v2

    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v48

    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v86

    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v118

    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v67

    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v73

    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v53

    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v89

    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v45

    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v110

    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v106

    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v39

    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v69

    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v108

    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v77

    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v41

    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v34, v100

    .local v34, "PPSF":Lcom/android/server/pps/PPS;
    move-object/from16 v32, v80

    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v31, v112

    .local v31, "usageServiceF":Lcom/android/server/oppo/OppoUsageService;
    move-object/from16 v10, v81

    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v35, v0

    .local v35, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v33, v97

    .local v33, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/oppo/OppoUsageService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/android/server/pps/PPS;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    :try_start_945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_952

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_952
    .catch Ljava/lang/Throwable; {:try_start_945 .. :try_end_952} :catch_cb8

    :cond_952
    :goto_952
    return-void

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "usageServiceF":Lcom/android/server/oppo/OppoUsageService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v34    # "PPSF":Lcom/android/server/pps/PPS;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v79    # "metrics":Landroid/util/DisplayMetrics;
    .end local v91    # "notification":Landroid/app/INotificationManager;
    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v100    # "pps":Lcom/android/server/pps/PPS;
    .end local v102    # "safeMode":Z
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .end local v117    # "w":Landroid/view/WindowManager;
    .end local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_953
    move-exception v64

    .local v64, "e":Ljava/lang/Throwable;
    :goto_954
    :try_start_954
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95d
    .catch Ljava/lang/RuntimeException; {:try_start_954 .. :try_end_95d} :catch_95f

    goto/16 :goto_e6

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_95f
    move-exception v64

    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v64, "e":Ljava/lang/RuntimeException;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_962
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1e4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_1e4

    .end local v64    # "e":Ljava/lang/RuntimeException;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_984
    const/4 v4, 0x0

    goto/16 :goto_f5

    :catch_987
    move-exception v64

    .local v64, "e":Ljava/lang/Throwable;
    :goto_988
    :try_start_988
    const-string v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_991
    .catch Ljava/lang/RuntimeException; {:try_start_988 .. :try_end_991} :catch_95f

    goto/16 :goto_118

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v120    # "watchdog":Lcom/android/server/Watchdog;
    :cond_993
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_195

    :cond_997
    const/4 v4, 0x0

    goto/16 :goto_19c

    :cond_99a
    :try_start_99a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9b4

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    :catch_9aa
    move-exception v64

    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v115, v116

    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_962

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    :cond_9b4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9c9

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    :cond_9c9
    if-eqz v55, :cond_9d4

    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    :cond_9d4
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9e2
    .catch Ljava/lang/RuntimeException; {:try_start_99a .. :try_end_9e2} :catch_9aa

    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v44, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_9e2
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e9
    .catch Ljava/lang/RuntimeException; {:try_start_9e2 .. :try_end_9e9} :catch_d52

    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_1d9

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .end local v120    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v91    # "notification":Landroid/app/INotificationManager;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v100    # "pps":Lcom/android/server/pps/PPS;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_9ed
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_9ee
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_220

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_9f9
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_231

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a05
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_234

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a11
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a12
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_262

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a1d
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_269

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a29
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a2a
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29c

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a35
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a36
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2da

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a41
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2ed

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a4d
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_302

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a59
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a5a
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31b

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a65
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a66
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_334

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a71
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a72
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34d

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a7d
    move-exception v64

    move-object/from16 v2, v85

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a80
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36a

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a8b
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_a8c
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c4

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_a97
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d9

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_aa3
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t start EPDG service:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f7

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_ac0
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting RNS Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_415

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_acc
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure to start DataShaping Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43a

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_ad8
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44d

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_ae4
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Oppo Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46f

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_af0
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making OppoLightsService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47c

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_afc
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_481

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b08
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_486

    .end local v64    # "e":Ljava/lang/Throwable;
    :cond_b14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "SystemServer"

    const-string v5, "not single partition, add DeviceStorageMonitorService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ba

    :catch_b26
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_b27
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d3

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b32
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_b33
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ea

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b3e
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4fd

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b4a
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50e

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b56
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_526

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b62
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_b63
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54c

    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v71    # "isCmccTest":Z
    .restart local v99    # "pm":Landroid/content/pm/PackageManager;
    :cond_b6e
    :try_start_b6e
    new-instance v42, Lcom/oppo/media/OppoAudioService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/oppo/media/OppoAudioService;-><init>(Landroid/content/Context;)V
    :try_end_b75
    .catch Ljava/lang/Throwable; {:try_start_b6e .. :try_end_b75} :catch_b80

    .end local v41    # "audioService":Landroid/media/AudioService;
    .local v42, "audioService":Landroid/media/AudioService;
    :try_start_b75
    const-string v4, "audio"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b7c
    .catch Ljava/lang/Throwable; {:try_start_b75 .. :try_end_b7c} :catch_cef

    move-object/from16 v41, v42

    .end local v42    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_57b

    .end local v71    # "isCmccTest":Z
    .end local v99    # "pm":Landroid/content/pm/PackageManager;
    :catch_b80
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_b81
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57b

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b8c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting AudioProfile Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5ab

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b98
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting SensorHub Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5ca

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_ba4
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5ea

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bb0
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_bb1
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_624

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bbc
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_691

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bc8
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Oppo Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6a6

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bd4
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_bd5
    const-string v4, "SystemServer"

    const-string v5, "Start OppoUsageService failed for:"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6bd

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_be0
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6ce

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bec
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e2

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_bf8
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_bf9
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6fb

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c04
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_709

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c10
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c11
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_738

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c1c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c1d
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a2

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c28
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c5

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c34
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c35
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7f3

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c40
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c41
    const-string v4, "SystemServer"

    const-string v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_82c

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c4c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c4d
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PPSStateNotifier"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_845

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c58
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_c59
    const-string v4, "SystemServer"

    const-string v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_86e

    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v102    # "safeMode":Z
    :catch_c64
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_89a

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c70
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_89f

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c7c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8b4

    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v47    # "config":Landroid/content/res/Configuration;
    .restart local v79    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v117    # "w":Landroid/view/WindowManager;
    :catch_c88
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e8

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c94
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Fingerprint Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ef

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_ca0
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f6

    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_cac
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_902

    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v18    # "audioServiceF":Landroid/media/AudioService;
    .restart local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "usageServiceF":Lcom/android/server/oppo/OppoUsageService;
    .restart local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v34    # "PPSF":Lcom/android/server/pps/PPS;
    .restart local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_cb8
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_952

    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "usageServiceF":Lcom/android/server/oppo/OppoUsageService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v34    # "PPSF":Lcom/android/server/pps/PPS;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v79    # "metrics":Landroid/util/DisplayMetrics;
    .end local v102    # "safeMode":Z
    .end local v117    # "w":Landroid/view/WindowManager;
    .restart local v66    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :catch_cc4
    move-exception v64

    move-object/from16 v65, v66

    .end local v66    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto :goto_c59

    .end local v100    # "pps":Lcom/android/server/pps/PPS;
    .restart local v101    # "pps":Lcom/android/server/pps/PPS;
    :catch_cc8
    move-exception v64

    move-object/from16 v100, v101

    .end local v101    # "pps":Lcom/android/server/pps/PPS;
    .restart local v100    # "pps":Lcom/android/server/pps/PPS;
    goto :goto_c4d

    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_ccc
    move-exception v64

    move-object/from16 v97, v98

    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_c41

    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :catch_cd1
    move-exception v64

    move-object/from16 v94, v95

    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_c35

    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_cd6
    move-exception v64

    move-object/from16 v77, v78

    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_c1d

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_cdb
    move-exception v64

    move-object/from16 v39, v40

    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_c11

    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_ce0
    move-exception v64

    move-object/from16 v45, v46

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_bf9

    .end local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v113    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    :catch_ce5
    move-exception v64

    move-object/from16 v112, v113

    .end local v113    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    goto/16 :goto_bd5

    .end local v103    # "serial":Lcom/android/server/SerialService;
    .restart local v104    # "serial":Lcom/android/server/SerialService;
    :catch_cea
    move-exception v64

    move-object/from16 v103, v104

    .end local v104    # "serial":Lcom/android/server/SerialService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_bb1

    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v42    # "audioService":Landroid/media/AudioService;
    .restart local v71    # "isCmccTest":Z
    .restart local v99    # "pm":Landroid/content/pm/PackageManager;
    :catch_cef
    move-exception v64

    move-object/from16 v41, v42

    .end local v42    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_b81

    .end local v71    # "isCmccTest":Z
    .end local v99    # "pm":Landroid/content/pm/PackageManager;
    .end local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_cf4
    move-exception v64

    move-object/from16 v118, v119

    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_b63

    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_cf9
    move-exception v64

    move-object/from16 v53, v54

    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_b33

    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .restart local v74    # "location":Lcom/android/server/LocationManagerService;
    :catch_cfe
    move-exception v64

    move-object/from16 v73, v74

    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_b27

    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_d03
    move-exception v64

    move-object/from16 v48, v49

    .line 942
    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_a8c

    :catch_d08
    move-exception v64

    goto/16 :goto_a80

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_d0b
    move-exception v64

    move-object/from16 v6, v88

    .end local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_a72

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_d10
    move-exception v64

    move-object/from16 v86, v87

    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_a66

    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_d15
    move-exception v64

    move-object/from16 v110, v111

    .end local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_a5a

    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_d1a
    move-exception v64

    move-object/from16 v106, v107

    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_a36

    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_d1f
    move-exception v64

    move-object/from16 v75, v76

    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_a2a

    :catch_d24
    move-exception v4

    goto/16 :goto_27c

    .end local v83    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    :catch_d27
    move-exception v64

    move-object/from16 v83, v84

    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v83    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_a12

    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_d2c
    move-exception v64

    move-object/from16 v67, v68

    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_9ee

    .line 1295
    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v91    # "notification":Landroid/app/INotificationManager;
    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v100    # "pps":Lcom/android/server/pps/PPS;
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .end local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_d31
    move-exception v64

    goto/16 :goto_962

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_d34
    move-exception v64

    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_962

    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_d3b
    move-exception v64

    move-object/from16 v81, v82

    .end local v82    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_962

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d42
    move-exception v64

    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v115, v116

    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_962

    .line 690
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d49
    move-exception v64

    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v115, v116

    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_962

    .line 719
    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v115    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v120    # "watchdog":Lcom/android/server/Watchdog;
    :catch_d52
    move-exception v64

    move-object/from16 v50, v51

    .line 774
    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v115, v116

    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_962

    .line 661
    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v120    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v82    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_d5f
    move-exception v64

    move-object/from16 v81, v82

    .end local v82    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_988

    .line 647
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_d64
    move-exception v64

    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_954

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v91    # "notification":Landroid/app/INotificationManager;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v100    # "pps":Lcom/android/server/pps/PPS;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v112    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v118    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_d69
    move-object/from16 v2, v85

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_43a

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_d6d
    move-object/from16 v2, v85

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_86e
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1746
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1749
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1750
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1729
    const/4 v1, 0x0

    .line 1730
    .local v1, "ret":Landroid/content/ComponentName;
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1733
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1735
    if-eqz v1, :cond_37

    .line 1736
    const-string v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :goto_36
    return-object v1

    .line 1738
    :cond_37
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method


# virtual methods
.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
