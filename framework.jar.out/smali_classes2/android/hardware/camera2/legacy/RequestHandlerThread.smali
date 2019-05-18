.class public Landroid/hardware/camera2/legacy/RequestHandlerThread;
.super Landroid/os/HandlerThread;
.source "RequestHandlerThread.java"


# static fields
.field public static final MSG_POKE_IDLE_HANDLER:I = -0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private volatile mHandler:Landroid/os/Handler;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private final mStarted:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    .line 36
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    .line 91
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;-><init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 45
    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    .line 46
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasAnyMessages([I)Z
    .locals 6
    .param p1, "what"    # [I

    .prologue
    .line 72
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v5

    monitor-enter v5

    .line 73
    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 74
    .local v1, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v4, 0x1

    monitor-exit v5

    .line 79
    .end local v1    # "i":I
    :goto_1
    return v4

    .line 73
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    monitor-exit v5

    .line 79
    const/4 v4, 0x0

    goto :goto_1

    .line 78
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 52
    return-void
.end method

.method public removeMessages([I)V
    .locals 6
    .param p1, "what"    # [I

    .prologue
    .line 84
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v5

    monitor-enter v5

    .line 85
    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 86
    .local v1, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    monitor-exit v5

    .line 89
    return-void

    .line 88
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public waitAndGetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    .line 67
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public waitUntilIdle()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 102
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 103
    .local v1, "looper":Landroid/os/Looper;
    invoke-virtual {v1}, Landroid/os/Looper;->isIdling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 109
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    invoke-virtual {v1}, Landroid/os/Looper;->isIdling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0
.end method

.method public waitUntilStarted()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 57
    return-void
.end method
