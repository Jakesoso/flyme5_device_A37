.class public abstract Lcom/android/server/StateWatch;
.super Ljava/lang/Object;
.source "StateWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StateWatch$StateWatchHandler;
    }
.end annotation


# static fields
.field static final CHECK_STATE_MSG:I = 0x1

.field static final TAG:Ljava/lang/String; = "StateWatchTag"


# instance fields
.field mChecking:Z

.field final mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

.field mStateFailCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/android/server/StateWatch;->mStateFailCount:I

    .line 18
    iput-boolean v0, p0, Lcom/android/server/StateWatch;->mChecking:Z

    .line 26
    new-instance v0, Lcom/android/server/StateWatch$StateWatchHandler;

    invoke-static {}, Lcom/android/server/CheckBlockedException;->getInstance()Lcom/android/server/CheckBlockedException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/CheckBlockedException;->getCheckLoop()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/StateWatch$StateWatchHandler;-><init>(Lcom/android/server/StateWatch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    .line 27
    return-void
.end method


# virtual methods
.method abstract dealAction()V
.end method

.method abstract getCheckCount()I
.end method

.method abstract getCheckInterval()I
.end method

.method isCheckEnable()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method isDCSSendEnable()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method abstract isStateOk()Z
.end method

.method triggerDetect()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StateWatch;->isCheckEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/StateWatch;->mChecking:Z

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/StateWatch;->mChecking:Z

    .line 71
    iget-object v1, p0, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/StateWatch$StateWatchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/StateWatch$StateWatchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
