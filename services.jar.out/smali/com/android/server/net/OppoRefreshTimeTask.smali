.class public Lcom/android/server/net/OppoRefreshTimeTask;
.super Ljava/lang/Object;
.source "OppoRefreshTimeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_COUNT_TO_WAIT:I = 0x4

.field private static final MIN_FORCE_UPDATE_TIME_INTERVAL:J = 0x2ee0L

.field private static final TAG:Ljava/lang/String; = "NetworkStatsService.OppoRefreshTimeTask"

.field private static final TIME_TO_WAIT_PER_TIME_IN_MILLS:I = 0x64


# instance fields
.field private mLastSysCurTimeForceUpdate:J

.field private mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

.field private final mTime:Landroid/util/TrustedTime;


# direct methods
.method public constructor <init>(Landroid/util/TrustedTime;)V
    .locals 2
    .param p1, "time"    # Landroid/util/TrustedTime;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mLastSysCurTimeForceUpdate:J

    .line 28
    iput-object p1, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mTime:Landroid/util/TrustedTime;

    .line 29
    new-instance v0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    invoke-direct {v0, p0}, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;-><init>(Lcom/android/server/net/OppoRefreshTimeTask;)V

    iput-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    .line 30
    iget-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    invoke-virtual {v0}, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->start()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/OppoRefreshTimeTask;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/OppoRefreshTimeTask;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method


# virtual methods
.method public forceUpdateFreqControl()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, "curTime":J
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mLastSysCurTimeForceUpdate:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 110
    iput-wide v2, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mLastSysCurTimeForceUpdate:J

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-wide v6, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mLastSysCurTimeForceUpdate:J

    sub-long v4, v2, v6

    .line 115
    .local v4, "timeInterval":J
    const-wide/16 v6, 0x2ee0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    .line 116
    .local v0, "allowUpdate":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 117
    iput-wide v2, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mLastSysCurTimeForceUpdate:J

    goto :goto_0

    .line 115
    .end local v0    # "allowUpdate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public triggerRefreshTime()V
    .locals 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    invoke-virtual {v2}, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->notifyToRefreshTime()V

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "queryTimeCount":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/OppoRefreshTimeTask;->mRefreshTimeThread:Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;

    invoke-virtual {v2}, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->getRefreshRes()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 41
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NetworkStatsService.OppoRefreshTimeTask"

    const-string v3, "sleep failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
