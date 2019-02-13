.class public Lcom/oppo/FingerprintHook;
.super Ljava/lang/Object;
.source "FingerprintHook.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FingerprintHook"

.field private static mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

.field private static mInstance:Lcom/oppo/FingerprintHook;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    .line 9
    sput-object v1, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/FingerprintHook;->mLock:Ljava/lang/Object;

    .line 11
    sput-object v1, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xff

    iput v0, p0, Lcom/oppo/FingerprintHook;->mBrightness:I

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/oppo/FingerprintHook;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/oppo/FingerprintHook;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/oppo/FingerprintHook;

    invoke-direct {v0}, Lcom/oppo/FingerprintHook;-><init>()V

    sput-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    .line 23
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/hardware/fingerprint/FingerprintInternal;)Lcom/oppo/FingerprintHook;
    .locals 2
    .param p0, "_FingerprintInternal"    # Landroid/hardware/fingerprint/FingerprintInternal;

    .prologue
    .line 28
    sget-object v1, Lcom/oppo/FingerprintHook;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/oppo/FingerprintHook;

    invoke-direct {v0}, Lcom/oppo/FingerprintHook;-><init>()V

    sput-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    .line 32
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-nez v0, :cond_1

    sput-object p0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    .line 33
    :cond_1
    sget-object v0, Lcom/oppo/FingerprintHook;->mInstance:Lcom/oppo/FingerprintHook;

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onAnimateScreenBrightness(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/FingerprintHook;->mBrightness:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/oppo/FingerprintHook;->onWakeUpFinish()V

    .line 41
    :cond_0
    iput p1, p0, Lcom/oppo/FingerprintHook;->mBrightness:I

    .line 42
    return-void
.end method

.method public onGoToSleep()V
    .locals 2

    .prologue
    .line 64
    sget-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintHook"

    const-string/jumbo v1, "onGoToSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintInternal;->onGoToSleep()V

    .line 68
    :cond_1
    return-void
.end method

.method public onGoToSleepFinish()V
    .locals 2

    .prologue
    .line 71
    sget-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintHook"

    const-string/jumbo v1, "onGoToSleepFinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintInternal;->onGoToSleepFinish()V

    .line 75
    :cond_1
    return-void
.end method

.method public onVerifyDone(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 78
    sget-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGoToSleepFinish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-eqz v0, :cond_1

    .line 82
    :cond_1
    return-void
.end method

.method public onWakeUp(Z)V
    .locals 2
    .param p1, "wakeupReason"    # Z

    .prologue
    .line 56
    sget-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintHook"

    const-string/jumbo v1, "onWakeUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/FingerprintHook;->mBrightness:I

    .line 58
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintInternal;->onWakeUp(Z)V

    .line 61
    :cond_1
    return-void
.end method

.method public onWakeUpFinish()V
    .locals 2

    .prologue
    .line 45
    sget-boolean v0, Lcom/oppo/FingerprintHook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintHook"

    const-string/jumbo v1, "onWakeUpFinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/oppo/FingerprintHook;->mFingerprintInternal:Landroid/hardware/fingerprint/FingerprintInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintInternal;->onWakeUpFinish()V

    .line 49
    :cond_1
    return-void
.end method
