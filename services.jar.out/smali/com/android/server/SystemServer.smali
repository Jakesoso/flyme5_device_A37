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
    .locals 2

    .prologue
    .line 278
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 420
    :try_start_0
    sget-boolean v2, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 421
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 423
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 424
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 453
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 460
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0xc030002

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 462
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 290
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 435
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 438
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 441
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 442
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 449
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 444
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 413
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
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

    .line 415
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 303
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 308
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 312
    const-string v0, "1"

    const-string v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 313
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 323
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 328
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 329
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 338
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 342
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 346
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 350
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 353
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 356
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 358
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 359
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 362
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 367
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 381
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 382
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 386
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 387
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 388
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 409
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :catch_0
    move-exception v6

    .line 369
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

    goto :goto_0

    .line 389
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 390
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_2

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v8}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 475
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 478
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    .line 480
    const/4 v4, 0x0

    .line 481
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string v6, "SystemServer"

    const-string v8, "Create message monitor service successfully ."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v6, "msgmonitorservice"

    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 493
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 495
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 496
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 502
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 506
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 510
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 513
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 516
    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "cryptState":Ljava/lang/String;
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 518
    const-string v6, "SystemServer"

    const-string v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 526
    :cond_1
    :goto_1
    const-string v6, "0"

    const-string v8, "ro.mtk_antibricking_level"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 527
    .local v1, "disabled":Z
    if-nez v1, :cond_2

    .line 529
    :try_start_2
    const-string v6, "SystemServer"

    const-string v8, "Recovery Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 531
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_2

    .line 532
    const-string v6, "recovery"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v8}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 533
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 542
    :cond_2
    :goto_2
    const-string v6, "SystemServer"

    const-string v8, "Package Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 545
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 546
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 548
    const-string v6, "SystemServer"

    const-string v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 552
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 555
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 556
    return-void

    .line 486
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string v6, "SystemServer"

    const-string v8, "Starting message monitor service exception "

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 520
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 521
    const-string v6, "SystemServer"

    const-string v8, "Device encrypted - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 535
    .restart local v1    # "disabled":Z
    :catch_1
    move-exception v2

    .line 536
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 543
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 486
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/OppoLightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/OppoLightsService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    .line 572
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 575
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 576
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 582
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 583
    return-void
.end method

.method private startOtherServices()V
    .locals 126

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 591
    .local v3, "context":Landroid/content/Context;
    const/16 v36, 0x0

    .line 592
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v54, 0x0

    .line 593
    .local v54, "contentService":Lcom/android/server/content/ContentService;
    const/16 v119, 0x0

    .line 594
    .local v119, "vibrator":Lcom/android/server/VibratorService;
    const/16 v38, 0x0

    .line 595
    .local v38, "alarm":Landroid/app/IAlarmManager;
    const/16 v87, 0x0

    .line 596
    .local v87, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 597
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 598
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v89, 0x0

    .line 599
    .local v89, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v50, 0x0

    .line 600
    .local v50, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 601
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v109, 0x0

    .line 602
    .local v109, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v125, 0x0

    .line 603
    .local v125, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v43, 0x0

    .line 604
    .local v43, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v118, 0x0

    .line 605
    .local v118, "usb":Lcom/android/server/usb/UsbService;
    const/16 v107, 0x0

    .line 606
    .local v107, "serial":Lcom/android/server/SerialService;
    const/16 v93, 0x0

    .line 607
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v47, 0x0

    .line 608
    .local v47, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v73, 0x0

    .line 609
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v112, 0x0

    .line 610
    .local v112, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v52, 0x0

    .line 611
    .local v52, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v41, 0x0

    .line 613
    .local v41, "audioService":Landroid/media/AudioService;
    const/16 v84, 0x0

    .line 616
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v85, 0x0

    .line 618
    .local v85, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v67, 0x0

    .line 620
    .local v67, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 621
    .local v63, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 622
    .local v59, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 623
    .local v57, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 624
    .local v65, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 625
    .local v58, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 626
    .local v64, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 627
    .local v62, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 628
    .local v60, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 629
    .local v61, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v76

    .line 633
    .local v76, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 636
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 641
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v113, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v113

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_57

    .line 643
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v113, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v113

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 645
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 648
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 653
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v37, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 655
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_58

    move-object/from16 v36, v37

    .line 660
    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v54

    .line 665
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v86, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 669
    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v86, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_6
    const-string v4, "mobile"

    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_59

    move-object/from16 v85, v86

    .line 676
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 679
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v120, Lcom/android/server/VibratorService;

    move-object/from16 v0, v120

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 681
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .local v120, "vibrator":Lcom/android/server/VibratorService;
    :try_start_8
    const-string v4, "vibrator"

    move-object/from16 v0, v120

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 683
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v53, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5a

    .line 685
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_9
    const-string v4, "consumer_ir"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 688
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v38

    .line 691
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v124

    .line 693
    .local v124, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v124

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 695
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v74, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5b

    .line 698
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_32

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v74

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v125

    .line 702
    const-string v4, "window"

    move-object/from16 v0, v125

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 703
    const-string v4, "input"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v125

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 707
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 708
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/input/InputManagerService;->start()V

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 716
    if-eqz v76, :cond_33

    .line 717
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_5
    invoke-static {v3}, Lcom/android/server/ColorInjector$SystemServer;->addService(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .line 748
    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .end local v124    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1
    :goto_6
    const/16 v110, 0x0

    .line 749
    .local v110, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v95, 0x0

    .line 750
    .local v95, "notification":Landroid/app/INotificationManager;
    const/16 v71, 0x0

    .line 754
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v116, 0x0

    .line 758
    .local v116, "usageService":Lcom/android/server/oppo/OppoUsageService;
    const/16 v69, 0x0

    .line 763
    .local v69, "hypnusService":Lcom/android/server/oppo/HypnusService;
    const/16 v45, 0x0

    .line 766
    .local v45, "cabcService":Lcom/android/server/oppo/CabcService;
    const/16 v122, 0x0

    .line 767
    .local v122, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v77, 0x0

    .line 768
    .local v77, "location":Lcom/android/server/LocationManagerService;
    const/16 v55, 0x0

    .line 769
    .local v55, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v114, 0x0

    .line 770
    .local v114, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v79, 0x0

    .line 771
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v98, 0x0

    .line 772
    .local v98, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v101, 0x0

    .line 773
    .local v101, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v39, 0x0

    .line 774
    .local v39, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v81, 0x0

    .line 776
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v104, 0x0

    .line 779
    .local v104, "pps":Lcom/android/server/pps/PPS;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 783
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/ColorInputMethodManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v125

    invoke-direct {v0, v3, v1}, Lcom/android/server/ColorInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 792
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v72, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v4, "input_method"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_56

    move-object/from16 v71, v72

    .line 798
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 808
    :cond_2
    :goto_8
    :try_start_e
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 813
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 814
    if-nez v63, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 821
    :try_start_f
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v88, Lcom/android/server/MountService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 823
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .local v88, "mountService":Lcom/android/server/MountService;
    :try_start_10
    const-string v4, "mount"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_55

    move-object/from16 v87, v88

    .line 831
    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 837
    :goto_b
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_54

    .line 844
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3a

    .line 845
    if-nez v62, :cond_5

    .line 847
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v80, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 849
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_14
    const-string v4, "lock_settings"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_53

    move-object/from16 v79, v80

    .line 854
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 863
    :cond_5
    if-nez v64, :cond_6

    .line 865
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v111, Lcom/android/server/ColorStatusBarManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v125

    invoke-direct {v0, v3, v1}, Lcom/android/server/ColorStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 874
    .end local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v111, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_16
    const-string v4, "statusbar"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_52

    move-object/from16 v110, v111

    .line 880
    .end local v111    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v62, :cond_7

    .line 882
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 890
    :cond_7
    :goto_f
    if-nez v60, :cond_8

    .line 892
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    :cond_8
    :goto_10
    if-nez v62, :cond_9

    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v115, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 904
    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v115, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1a
    const-string v4, "textservices"

    move-object/from16 v0, v115

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_51

    move-object/from16 v114, v115

    .line 910
    .end local v115    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v60, :cond_39

    .line 912
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    new-instance v91, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 914
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v91, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1c
    const-string v4, "network_score"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_50

    move-object/from16 v90, v91

    .line 920
    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v92, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v92

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 922
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v92, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v4, "netstats"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4f

    move-object/from16 v6, v92

    .line 928
    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 933
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4e

    .line 938
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 950
    :cond_a
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v51, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 953
    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v51, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v4, "connectivity"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 954
    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 955
    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4d

    move-object/from16 v50, v51

    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v109

    const-string v4, "servicediscovery"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    :goto_16
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "EPDG Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.epdg.EpdgService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    :cond_b
    :goto_17
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :try_start_25
    const-string v4, "SystemServer"

    const-string v5, "RNS Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.rns.RnsService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    :cond_c
    :goto_18
    const-string v4, "SystemServer"

    const-string v5, "RNS Service_END"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1"

    const-string v5, "persist.mtk.datashaping.support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Start DataShaping Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.datashaping.DataShapingService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    :cond_d
    :goto_19
    if-nez v62, :cond_e

    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    :cond_e
    :goto_1a
    if-eqz v87, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_f

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_f
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Oppo Expand Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v97, Lcom/android/server/oppo/OppoExService;

    move-object/from16 v0, v97

    move-object/from16 v1, v125

    invoke-direct {v0, v3, v1}, Lcom/android/server/oppo/OppoExService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .local v97, "oppoExService":Lcom/android/server/oppo/OppoExService;
    const-string v4, "OPPOExService"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .end local v97    # "oppoExService":Lcom/android/server/oppo/OppoExService;
    :goto_1b
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mOppoLightsService:Lcom/android/server/lights/OppoLightsService;

    invoke-virtual {v4}, Lcom/android/server/lights/OppoLightsService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    :cond_10
    :goto_1c
    if-eqz v36, :cond_11

    :try_start_2a
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19

    :cond_11
    :goto_1d
    if-eqz v54, :cond_12

    :try_start_2b
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    :cond_12
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v95

    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.support.single.partition"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "SystemServer"

    const-string v5, "single partition, add OppoDeviceStorageMonitorService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    if-nez v58, :cond_13

    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1b

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    :try_start_2d
    const-string v4, "location"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_4c

    move-object/from16 v77, v78

    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :goto_20
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v56, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1c

    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2f
    const-string v4, "country_detector"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_4b

    move-object/from16 v55, v56

    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_13
    :goto_21
    if-nez v62, :cond_14

    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1d

    :goto_22
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "search_engine"

    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1e

    :cond_14
    :goto_23
    :try_start_32
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
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    :goto_24
    if-nez v62, :cond_15

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_15

    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v123, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_20

    .end local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v123, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_34
    const-string v4, "wallpaper"

    move-object/from16 v0, v123

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_4a

    move-object/from16 v122, v123

    .end local v123    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_15
    :goto_25
    if-nez v59, :cond_16

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v103

    .local v103, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "oppo.cmcc.test"

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v75

    .local v75, "isCmccTest":Z
    if-eqz v75, :cond_38

    new-instance v42, Landroid/media/AudioService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_21

    .end local v41    # "audioService":Landroid/media/AudioService;
    .local v42, "audioService":Landroid/media/AudioService;
    :try_start_36
    const-string v4, "audio"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_49

    move-object/from16 v41, v42

    .end local v42    # "audioService":Landroid/media/AudioService;
    .end local v75    # "isCmccTest":Z
    .end local v103    # "pm":Landroid/content/pm/PackageManager;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    :cond_16
    :goto_26
    if-nez v59, :cond_17

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x1

    const-string v5, "ro.mtk_audio_profiles"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_17

    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "audioprofile"

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_22

    :cond_17
    :goto_27
    const-string v4, "1"

    const-string v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sensorhubservice"

    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_23

    :cond_18
    :goto_28
    if-nez v62, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_19
    if-nez v59, :cond_1a

    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v73

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_24

    :cond_1a
    :goto_29
    if-nez v62, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1c
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Lcom/android/server/SerialService;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_25

    .end local v107    # "serial":Lcom/android/server/SerialService;
    .local v108, "serial":Lcom/android/server/SerialService;
    :try_start_3b
    const-string v4, "serial"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_48

    move-object/from16 v107, v108

    .end local v108    # "serial":Lcom/android/server/SerialService;
    .restart local v107    # "serial":Lcom/android/server/SerialService;
    :cond_1d
    :goto_2a
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

    if-nez v62, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_20
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_26

    :goto_2b
    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Hypnus Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/oppo/HypnusService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/oppo/HypnusService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_27

    .end local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .local v70, "hypnusService":Lcom/android/server/oppo/HypnusService;
    :try_start_3e
    const-string v4, "hypnus"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_47

    move-object/from16 v69, v70

    .end local v70    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .restart local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    :goto_2c
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Oppo Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/android/server/oppo/OppoService;

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Lcom/android/server/oppo/OppoService;-><init>(Landroid/content/Context;)V

    .local v96, "oppo":Lcom/android/server/oppo/OppoService;
    const-string v4, "OPPO"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_28

    .end local v96    # "oppo":Lcom/android/server/oppo/OppoService;
    :goto_2d
    :try_start_40
    const-string v4, "SystemServer"

    const-string v5, "Cabc Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/oppo/CabcService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/oppo/CabcService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_29

    .end local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .local v46, "cabcService":Lcom/android/server/oppo/CabcService;
    :try_start_41
    const-string v4, "cabc"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_46

    move-object/from16 v45, v46

    .end local v46    # "cabcService":Lcom/android/server/oppo/CabcService;
    .restart local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    :goto_2e
    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "OPPO Usage Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/oppo/OppoUsageService;

    move-object/from16 v0, v117

    invoke-direct {v0, v3}, Lcom/android/server/oppo/OppoUsageService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2a

    .end local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .local v117, "usageService":Lcom/android/server/oppo/OppoUsageService;
    :try_start_43
    const-string v4, "usage"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_45

    move-object/from16 v116, v117

    .end local v117    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    :goto_2f
    :try_start_44
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    :goto_30
    if-nez v60, :cond_21

    if-nez v61, :cond_21

    :try_start_45
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v94, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v94, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v93, v94

    .end local v94    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_21
    :goto_31
    if-nez v59, :cond_22

    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v48, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_47
    const-string v4, "commontime_management"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_44

    move-object/from16 v47, v48

    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_22
    :goto_32
    if-nez v60, :cond_23

    :try_start_48
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    :cond_23
    :goto_33
    if-nez v62, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_24
    if-nez v62, :cond_25

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_25

    :try_start_49
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2f

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v40, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_4a
    const-string v4, "assetatlas"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_43

    move-object/from16 v39, v40

    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_25
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_26
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

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_28
    if-nez v62, :cond_29

    :try_start_4b
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_30

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_4c
    const-string v4, "media_router"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_42

    move-object/from16 v81, v82

    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_35
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

    :try_start_4d
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    :cond_29
    :goto_36
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

    if-eqz v4, :cond_2b

    :try_start_4e
    const-string v4, "SystemServer"

    const-string v5, "PerfMgr state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v99 .. v99}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .end local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v99, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v99

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_41

    move-object/from16 v98, v99

    .end local v99    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_37
    :try_start_50
    new-instance v102, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_33

    .end local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v102, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v100, 0x0

    .local v100, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_51
    new-instance v100, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v100    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v100

    move-object/from16 v1, v102

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .restart local v100    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v100

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v100, :cond_2a

    const-string v4, "mtk-perfservice"

    invoke-interface/range {v100 .. v100}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_40

    :cond_2a
    move-object/from16 v101, v102

    .end local v100    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v102    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_2b
    :goto_38
    :try_start_52
    const-string v4, "SystemServer"

    const-string v5, "PPS state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/pps/PPS;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/pps/PPS;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    .end local v104    # "pps":Lcom/android/server/pps/PPS;
    .local v105, "pps":Lcom/android/server/pps/PPS;
    :try_start_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_3f

    move-object/from16 v104, v105

    .end local v105    # "pps":Lcom/android/server/pps/PPS;
    .restart local v104    # "pps":Lcom/android/server/pps/PPS;
    :goto_39
    if-nez v62, :cond_2c

    const-string v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :try_start_54
    const-string v4, "SystemServer"

    const-string v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_35

    .end local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v68, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_55
    const-string v4, "mtkhdmi"

    invoke-virtual/range {v68 .. v68}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_3e

    move-object/from16 v67, v68

    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :cond_2c
    :goto_3a
    if-nez v62, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_2d
    const/16 v106, 0x0

    .local v106, "safeMode":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v84

    .end local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v84, Lcom/android/server/MmsServiceBroker;

    .restart local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_56
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    :goto_3b
    if-eqz v79, :cond_2e

    :try_start_57
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_37

    :cond_2e
    :goto_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_58
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_38

    :goto_3d
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    .local v49, "config":Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .local v83, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/view/WindowManager;

    .local v121, "w":Landroid/view/WindowManager;
    invoke-interface/range {v121 .. v121}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v49

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_39

    :goto_3e
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/FingerprintService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_3a

    :goto_3f
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3b

    :goto_40
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v4, v5, v8}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3c

    :goto_41
    move-object/from16 v12, v87

    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v7

    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v6

    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v2

    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v50

    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v90

    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v122

    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v71

    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v77

    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v55

    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v93

    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v47

    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v114

    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v110

    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v39

    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v73

    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v112

    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v81

    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v41

    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v34, v104

    .local v34, "PPSF":Lcom/android/server/pps/PPS;
    move-object/from16 v32, v84

    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v31, v116

    .local v31, "usageServiceF":Lcom/android/server/oppo/OppoUsageService;
    move-object/from16 v10, v85

    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v35, v0

    .local v35, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v33, v101

    .local v33, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/oppo/OppoUsageService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/android/server/pps/PPS;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    :try_start_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3d

    :cond_2f
    :goto_42
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
    .end local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .end local v49    # "config":Landroid/content/res/Configuration;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v104    # "pps":Lcom/android/server/pps/PPS;
    .end local v106    # "safeMode":Z
    .end local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .end local v121    # "w":Landroid/view/WindowManager;
    .end local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v66

    .local v66, "e":Ljava/lang/Throwable;
    :goto_43
    :try_start_5e
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_1

    goto/16 :goto_0

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v66

    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v66, "e":Ljava/lang/RuntimeException;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_44
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v66

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_30
    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v66

    .local v66, "e":Ljava/lang/Throwable;
    :goto_45
    :try_start_5f
    const-string v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_1

    goto/16 :goto_2

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "e":Ljava/lang/Throwable;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v124    # "watchdog":Lcom/android/server/Watchdog;
    :cond_31
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    :cond_32
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_33
    :try_start_60
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v66

    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_44

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :cond_34
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_35
    if-eqz v57, :cond_36

    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_36
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_3

    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v44, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_61
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_5c

    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .end local v124    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v104    # "pps":Lcom/android/server/pps/PPS;
    .restart local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v66

    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t start EPDG service:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting RNS Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure to start DataShaping Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Oppo Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making OppoLightsService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v66    # "e":Ljava/lang/Throwable;
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "SystemServer"

    const-string v5, "not single partition, add DeviceStorageMonitorService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :catch_1b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v66    # "e":Ljava/lang/Throwable;
    .restart local v75    # "isCmccTest":Z
    .restart local v103    # "pm":Landroid/content/pm/PackageManager;
    :cond_38
    :try_start_62
    new-instance v42, Lcom/oppo/media/OppoAudioService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/oppo/media/OppoAudioService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_21

    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v42    # "audioService":Landroid/media/AudioService;
    :try_start_63
    const-string v4, "audio"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_49

    move-object/from16 v41, v42

    .end local v42    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_26

    .end local v75    # "isCmccTest":Z
    .end local v103    # "pm":Landroid/content/pm/PackageManager;
    :catch_21
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting AudioProfile Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting SensorHub Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v4, "starting Hypnus Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Oppo Service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v4, "starting Cabc Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v4, "SystemServer"

    const-string v5, "Start OppoUsageService failed for:"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v4, "SystemServer"

    const-string v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PPSStateNotifier"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v4, "SystemServer"

    const-string v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .end local v66    # "e":Ljava/lang/Throwable;
    .restart local v106    # "safeMode":Z
    :catch_36
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .end local v66    # "e":Ljava/lang/Throwable;
    .restart local v49    # "config":Landroid/content/res/Configuration;
    .restart local v83    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v121    # "w":Landroid/view/WindowManager;
    :catch_39
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Fingerprint Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v66    # "e":Ljava/lang/Throwable;
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
    :catch_3d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

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
    .end local v49    # "config":Landroid/content/res/Configuration;
    .end local v66    # "e":Ljava/lang/Throwable;
    .end local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v106    # "safeMode":Z
    .end local v121    # "w":Landroid/view/WindowManager;
    .restart local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :catch_3e
    move-exception v66

    move-object/from16 v67, v68

    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto :goto_5d

    .end local v104    # "pps":Lcom/android/server/pps/PPS;
    .restart local v105    # "pps":Lcom/android/server/pps/PPS;
    :catch_3f
    move-exception v66

    move-object/from16 v104, v105

    .end local v105    # "pps":Lcom/android/server/pps/PPS;
    .restart local v104    # "pps":Lcom/android/server/pps/PPS;
    goto :goto_5c

    .end local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v102    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_40
    move-exception v66

    move-object/from16 v101, v102

    .end local v102    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_5b

    .end local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v99    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :catch_41
    move-exception v66

    move-object/from16 v98, v99

    .end local v99    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_5a

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_42
    move-exception v66

    move-object/from16 v81, v82

    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_59

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_43
    move-exception v66

    move-object/from16 v39, v40

    .end local v40    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_58

    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_44
    move-exception v66

    move-object/from16 v47, v48

    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_57

    .end local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v117    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    :catch_45
    move-exception v66

    move-object/from16 v116, v117

    .end local v117    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    goto/16 :goto_56

    .end local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .restart local v46    # "cabcService":Lcom/android/server/oppo/CabcService;
    :catch_46
    move-exception v66

    move-object/from16 v45, v46

    .end local v46    # "cabcService":Lcom/android/server/oppo/CabcService;
    .restart local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    goto/16 :goto_55

    .end local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .restart local v70    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    :catch_47
    move-exception v66

    move-object/from16 v69, v70

    .end local v70    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .restart local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    goto/16 :goto_54

    .end local v107    # "serial":Lcom/android/server/SerialService;
    .restart local v108    # "serial":Lcom/android/server/SerialService;
    :catch_48
    move-exception v66

    move-object/from16 v107, v108

    .end local v108    # "serial":Lcom/android/server/SerialService;
    .restart local v107    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_53

    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v42    # "audioService":Landroid/media/AudioService;
    .restart local v75    # "isCmccTest":Z
    .restart local v103    # "pm":Landroid/content/pm/PackageManager;
    :catch_49
    move-exception v66

    move-object/from16 v41, v42

    .end local v42    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_52

    .end local v75    # "isCmccTest":Z
    .end local v103    # "pm":Landroid/content/pm/PackageManager;
    .end local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v123    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4a
    move-exception v66

    move-object/from16 v122, v123

    .end local v123    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_51

    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_4b
    move-exception v66

    move-object/from16 v55, v56

    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_50

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    :catch_4c
    move-exception v66

    move-object/from16 v77, v78

    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_4f

    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_4d
    move-exception v66

    move-object/from16 v50, v51

    .line 961
    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_4e

    :catch_4e
    move-exception v66

    goto/16 :goto_4d

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_4f
    move-exception v66

    move-object/from16 v6, v92

    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4c

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_50
    move-exception v66

    move-object/from16 v90, v91

    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_4b

    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v115    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_51
    move-exception v66

    move-object/from16 v114, v115

    .end local v115    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4a

    .end local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v111    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_52
    move-exception v66

    move-object/from16 v110, v111

    .end local v111    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_49

    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_53
    move-exception v66

    move-object/from16 v79, v80

    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_48

    :catch_54
    move-exception v4

    goto/16 :goto_c

    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v88    # "mountService":Lcom/android/server/MountService;
    :catch_55
    move-exception v66

    move-object/from16 v87, v88

    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_47

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_56
    move-exception v66

    move-object/from16 v71, v72

    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_46

    .line 1337
    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v104    # "pps":Lcom/android/server/pps/PPS;
    .end local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .end local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_57
    move-exception v66

    goto/16 :goto_44

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_58
    move-exception v66

    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_44

    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_59
    move-exception v66

    move-object/from16 v85, v86

    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_44

    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v66

    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_44

    .line 699
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v66

    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_44

    .line 728
    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v124    # "watchdog":Lcom/android/server/Watchdog;
    :catch_5c
    move-exception v66

    move-object/from16 v52, v53

    .line 793
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v112, v113

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_44

    .line 670
    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v124    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v66

    move-object/from16 v85, v86

    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_45

    .line 656
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_5e
    move-exception v66

    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_43

    .end local v113    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "cabcService":Lcom/android/server/oppo/CabcService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "hypnusService":Lcom/android/server/oppo/HypnusService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v98    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v101    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v104    # "pps":Lcom/android/server/pps/PPS;
    .restart local v110    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v112    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "usageService":Lcom/android/server/oppo/OppoUsageService;
    .restart local v122    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_39
    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_19

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3a
    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3a
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1788
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1791
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1792
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1771
    const/4 v1, 0x0

    .line 1772
    .local v1, "ret":Landroid/content/ComponentName;
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1777
    if-eqz v1, :cond_0

    .line 1778
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

    .line 1782
    :goto_0
    return-object v1

    .line 1780
    :cond_0
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
