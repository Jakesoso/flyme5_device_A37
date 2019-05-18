.class Lcom/android/server/power/OppoWakeLockCheck;
.super Ljava/lang/Object;
.source "OppoWakeLockCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ADBG:Z

.field private static final ATAG:Ljava/lang/String; = "OppoWakeLockCheck"

.field private static final MSG_PARTIAL_WAKELOCK_CHECK:I = 0x1

.field private static final MSG_PARTIAL_WAKELOCK_REPORT:I = 0x2

.field private static final MSG_PARTIAL_WAKELOCK_RESTAMP:I = 0x3

.field private static final MSG_SCREEN_ON_WAKELOCK_CHECK:I = 0x4

.field public static final PARTIAL_WAKELOCK_CHECK_INTERVAL:J = 0xafc80L

.field public static final PARTIAL_WAKELOCK_TIMEOUT_THRESHOLD:J = 0x493e0L

.field private static final SCREEN_ON_WAKELOCK_CHECK_DELAY:J = 0x7530L

.field public static intervalScreenoff:J


# instance fields
.field private final mCommonUtil:Lcom/android/server/power/CommonUtil;

.field private mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

.field private final mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

.field private final mScreenOnWakeLock:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private msgPartialWakelockSent:Z

.field private msgScreenOnWakelockSent:Z

.field private timeStampScreenoff:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OppoWakeLockCheck;->ADBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;)V
    .locals 9
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "pms"    # Lcom/android/server/power/PowerManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/android/server/power/PowerManagerService;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgScreenOnWakelockSent:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgPartialWakelockSent:Z

    .line 81
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "OppoWakeLockCheck"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v7, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;-><init>(Lcom/android/server/power/OppoWakeLockCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    .line 85
    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 86
    .local v8, "pm":Landroid/os/PowerManager;
    const/4 v0, 0x1

    const-string v1, "OppoWakeLockCheck"

    invoke-virtual {v8, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 89
    new-instance v0, Lcom/android/server/power/CommonUtil;

    invoke-direct {v0, p3}, Lcom/android/server/power/CommonUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mCommonUtil:Lcom/android/server/power/CommonUtil;

    .line 90
    new-instance v0, Lcom/android/server/power/OppoPartialWakeLockCheck;

    iget-object v5, p0, Lcom/android/server/power/OppoWakeLockCheck;->mCommonUtil:Lcom/android/server/power/CommonUtil;

    sget-boolean v6, Lcom/android/server/power/OppoWakeLockCheck;->ADBG:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/OppoPartialWakeLockCheck;-><init>(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/CommonUtil;Z)V

    iput-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

    .line 91
    new-instance v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    iget-object v5, p0, Lcom/android/server/power/OppoWakeLockCheck;->mCommonUtil:Lcom/android/server/power/CommonUtil;

    sget-boolean v6, Lcom/android/server/power/OppoWakeLockCheck;->ADBG:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;-><init>(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/CommonUtil;Z)V

    iput-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mScreenOnWakeLock:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/OppoWakeLockCheck;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoWakeLockCheck;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoPartialWakeLockCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoWakeLockCheck;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoWakeLockCheck;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoScreenOnWakeLockCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoWakeLockCheck;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mScreenOnWakeLock:Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    return-object v0
.end method


# virtual methods
.method public PartialWakelockCheckStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgPartialWakelockSent:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->timeStampScreenoff:J

    .line 104
    iput-boolean v4, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgPartialWakelockSent:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

    invoke-virtual {v0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->clearSyncWakelock()V

    .line 107
    :cond_0
    return-void
.end method

.method public PartialWakelockCheckStop()V
    .locals 4

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgPartialWakelockSent:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OppoWakeLockCheck;->timeStampScreenoff:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/OppoWakeLockCheck;->intervalScreenoff:J

    .line 112
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgPartialWakelockSent:Z

    .line 115
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

    invoke-virtual {v0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->clearSyncWakelock()V

    .line 117
    :cond_0
    return-void
.end method

.method public canSyncWakeLockAcq(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/OppoPartialWakeLockCheck;->canSyncWakeLockAcq(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public screenOnWakelockCheckStart()V
    .locals 4

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgScreenOnWakelockSent:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgScreenOnWakelockSent:Z

    .line 124
    :cond_0
    return-void
.end method

.method public screenOnWakelockCheckStop()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgScreenOnWakelockSent:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->removeMessages(I)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OppoWakeLockCheck;->msgScreenOnWakelockSent:Z

    .line 131
    :cond_0
    return-void
.end method
