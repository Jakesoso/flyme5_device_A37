.class public Lcom/android/server/fingerprint/ScreenOffUnlocker;
.super Ljava/lang/Object;
.source "ScreenOffUnlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;,
        Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;,
        Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final MAX_HOMEKEY_DETECTED_DURATION:I = 0x1f4

.field public static final PROP_NAME_OPEN_ALL_FRAMES:Ljava/lang/String; = "debug.screenoff.unlock"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDuration:J

.field private mCurrentVerifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field private mDurationLock:Ljava/lang/Object;

.field private mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

.field private mFingerprintServiceTest:Lcom/android/server/fingerprint/FingerprintServiceTest;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

.field public mIsWakeUpByFingerprintSensor:Z

.field private mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

.field private mName:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenStateChangeReciver:Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    .line 46
    const-string v0, "ScreenOffUnlocker"

    sput-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/fingerprint/FingerprintService;Landroid/os/PowerManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fingerprintService"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p4, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentVerifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mDurationLock:Ljava/lang/Object;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mIsWakeUpByFingerprintSensor:Z

    .line 65
    iput-object p1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    .line 68
    iput-object p4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    new-instance v0, Lcom/android/server/fingerprint/FingerprintServiceTest;

    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintServiceTest;-><init>(Landroid/content/Context;Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintServiceTest:Lcom/android/server/fingerprint/FingerprintServiceTest;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;-><init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    .line 73
    invoke-direct {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->registerBroadcast()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/ScreenOffUnlocker;)Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ScreenOffUnlocker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/ScreenOffUnlocker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ScreenOffUnlocker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hasKeyguard()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 361
    :try_start_0
    const-string v6, "SurfaceFlinger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 362
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 365
    .local v2, "reply":Landroid/os/Parcel;
    const-string v6, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    const/16 v6, 0x13

    const/4 v7, 0x0

    invoke-interface {v1, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 368
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .local v3, "result":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    if-ne v3, v4, :cond_0

    .line 378
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":I
    :goto_0
    return v4

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v1    # "flinger":Landroid/os/IBinder;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local v3    # "result":I
    :cond_0
    move v4, v5

    .line 373
    goto :goto_0

    .line 375
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":I
    :catch_0
    move-exception v4

    :cond_1
    move v4, v5

    .line 378
    goto :goto_0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 78
    new-instance v1, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;-><init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mScreenStateChangeReciver:Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mScreenStateChangeReciver:Lcom/android/server/fingerprint/ScreenOffUnlocker$ScreenStateChangeReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method private triggerHomeKeyValidTimeout()V
    .locals 10

    .prologue
    const/4 v7, 0x7

    .line 191
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->getCurrentDuration()J

    move-result-wide v2

    .line 192
    .local v2, "currenDuration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 193
    .local v4, "updateTime":J
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 194
    new-instance v0, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;-><init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;JJ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    .line 195
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 196
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " mark valid homeKeyData, and begin invalid timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public beginTimeoutForWaitingKeyguardFinished()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 350
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginTimeoutForWaitingKeyguardFinished isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " Screen is on ,skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public cleanUpBeforeWakeup()V
    .locals 2

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpBeforeWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 323
    return-void
.end method

.method public clearAllFramesDrawForKeyguard()V
    .locals 4

    .prologue
    .line 425
    const-string v0, "debug.screenoff.unlock"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " clearAllFramesDrawForKeyguard, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "debug.screenoff.unlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    return-void
.end method

.method public clearTimeoutForWaitingKeyguardFinished()V
    .locals 4

    .prologue
    .line 387
    sget-boolean v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v2, "clearTimeoutForWaitingKeyguardFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 391
    const/16 v0, 0xa

    .line 393
    .local v0, "retry":I
    :goto_0
    if-lez v0, :cond_2

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->hasKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->hasKeyguardProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 397
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    :cond_1
    sget-object v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v2, " hasKeyguard disappeared."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-wide/16 v2, 0x19

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_2
    return-void

    .line 403
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dispatchHomeKeyDown()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 256
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHomeKeyDown, isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 259
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method public dispatchTouchDown()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 264
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchDown, isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " Screen is on ,skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->allowWakeupSpeed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFusing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->fusingCurrentOperation()V

    .line 276
    :cond_3
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " wakeup Speed time extends to fusing limit, just reject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->wakeupScreen(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->updateWakupSpeedTime(Z)V

    goto :goto_0
.end method

.method public dispatchTouchUp()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x7

    .line 285
    sget-boolean v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchUp, isBlack = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v5}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v3}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    sget-boolean v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v4, " Screen is on ,skip"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    iget-object v4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 294
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleHomeKeyValidTimeout(Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->getCurrentDuration()J

    move-result-wide v0

    .line 298
    .local v0, "currenDuration":J
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 299
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    long-to-int v4, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 300
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHomeKeyData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method getCurrentDuration()J
    .locals 4

    .prologue
    .line 431
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mDurationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 432
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    .line 433
    .local v0, "currenDuration":J
    monitor-exit v3

    .line 434
    return-wide v0

    .line 433
    .end local v0    # "currenDuration":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method handleGotoSleep()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 214
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleGotoSleep, mHomeKeyData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mDurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    .line 217
    iget-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 218
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    .line 220
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleGotoSleepFinished()V
    .locals 2

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "handleGotoSleepFinished "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void
.end method

.method handleHomeKeyValidTimeout(Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;)V
    .locals 5
    .param p1, "homeKeyData"    # Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->getCurrentDuration()J

    move-result-wide v0

    .line 241
    .local v0, "currenDuration":J
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHomeKeyValidTimeout, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currenDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHomeKeyData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->wakeupScreen(Landroid/content/Context;Z)V

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    .line 248
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v3, "wakeupScreen(mContext, true) in handleHomeKeyValidTimeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v3, " homekeyData is invalid , skip this "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleOnHomeKeyDown()V
    .locals 3

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleOnHomeKeyDown, mHomeKeyData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFingerDown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->triggerHomeKeyValidTimeout()V

    .line 172
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->wakeupScreen(Landroid/content/Context;Z)V

    .line 173
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "no finger touch down, just wakupScreen normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->hasValidAuthenticatedResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getCurrentAuthenticatedResult()Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleVerifyResult(Lcom/android/server/fingerprint/FingerprintService$VerifyResult;)V

    .line 179
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " hasValidAuthenticatedResult, just  handleVerifyResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    goto :goto_0

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->resetWakeupSpeedTime()V

    .line 184
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->wakeupScreen(Landroid/content/Context;Z)V

    .line 186
    :cond_5
    invoke-direct {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->triggerHomeKeyValidTimeout()V

    goto :goto_0
.end method

.method public handleOnTouchUp(II)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "updateTime"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->getCurrentDuration()J

    move-result-wide v0

    .line 305
    .local v0, "currentDuration":J
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnTouchUp, isBlack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v4}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 307
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v3, " Screen is on ,skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 313
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v3, "duration do not match, skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->gotoSleepImmediately(Z)V

    goto :goto_0
.end method

.method handlePowerKeyPressed()V
    .locals 2

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " handlePowerKeyPressed(333)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFingerDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->hasSuccessAuthenticatedResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->handleOnHomeKeyDown()V

    .line 211
    :cond_1
    return-void
.end method

.method public handleScreenOn()V
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "handleScreenOn(2134)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->resetWakeupSpeedTime()V

    .line 166
    return-void
.end method

.method handleTimeoutForWaitingKeyguardFinished()V
    .locals 3

    .prologue
    .line 410
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimeoutForWaitingKeyguardFinished isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " Screen is on ,skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->wakeupScreenImmediately(I)V

    goto :goto_0
.end method

.method public handleTouchdownTimeout()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method handleWakeup()V
    .locals 2

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "handleWakeup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-void
.end method

.method handleWakeupFinished()V
    .locals 2

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "handleWakeupFinished "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->dealUnsentAuthenticated()V

    .line 232
    return-void
.end method

.method public hasKeyguardProcess()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "com.android.keyguard"

    aput-object v4, v3, v2

    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 383
    .local v0, "pids":[I
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyAuthenticated(I)V
    .locals 5
    .param p1, "success"    # I

    .prologue
    .line 495
    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mDurationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 496
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mCurrentDuration:J

    .line 497
    .local v0, "currenDuration":J
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAuthenticated success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHomeKeyData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintService;->hasValidAuthenticatedResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v3, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService;->getCurrentAuthenticatedResult()Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->handleVerifyResult(Lcom/android/server/fingerprint/FingerprintService$VerifyResult;)V

    .line 501
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mHomeKeyData:Lcom/android/server/fingerprint/ScreenOffUnlocker$HomeKeyData;

    .line 503
    :cond_1
    sget-boolean v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v3, "notifyAuthenticated finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    return-void

    .line 497
    .end local v0    # "currenDuration":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public notifyGotoSleep()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 438
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " notifyGotoSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 440
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 441
    return-void
.end method

.method public notifyPowerKeyPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 338
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " notifyPowerKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->clearAllFramesDrawForKeyguard()V

    .line 340
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mIsWakeUpByFingerprintSensor:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->userActivity()V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFingerDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 345
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 347
    :cond_2
    return-void
.end method

.method public onGoToSleep()V
    .locals 2

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " onGoToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mIsWakeUpByFingerprintSensor:Z

    .line 458
    return-void
.end method

.method public onGoToSleepFinish()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 469
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " onGoToSleepFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 472
    return-void
.end method

.method public onWakeUp(Z)V
    .locals 4
    .param p1, "wakeupReason"    # Z

    .prologue
    const/16 v3, 0x11

    .line 444
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onWakeUp( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 447
    return-void
.end method

.method public onWakeUpFinish()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 450
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, " onWakeUpFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->removeMessages(I)V

    .line 452
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method

.method public openAllFramesDrawForKeyguard()V
    .locals 4

    .prologue
    .line 420
    const-string v0, "debug.screenoff.unlock"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " openAllFramesDrawForKeyguard, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "debug.screenoff.unlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    return-void
.end method

.method resetWakeupSpeedTime()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateWakupSpeedTime(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->isAuthClientFusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->resumeCurrentOperation()V

    .line 465
    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v1, "resetWakeupSpeedTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mMessageHandler:Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;

    new-instance v1, Lcom/android/server/fingerprint/ScreenOffUnlocker$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker$1;-><init>(Lcom/android/server/fingerprint/ScreenOffUnlocker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ScreenOffUnlocker$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public wakeupScreen(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "normal"    # Z

    .prologue
    .line 477
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 478
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->cleanUpBeforeWakeup()V

    .line 479
    if-eqz v0, :cond_0

    .line 481
    if-eqz p2, :cond_1

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 483
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->resetWakeupSpeedTime()V

    .line 484
    sget-boolean v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v2, "wakeUp finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/ScreenOffUnlocker;->mIsWakeUpByFingerprintSensor:Z

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x63

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 488
    sget-boolean v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/ScreenOffUnlocker;->TAG:Ljava/lang/String;

    const-string v2, "wakeUpByReason finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
