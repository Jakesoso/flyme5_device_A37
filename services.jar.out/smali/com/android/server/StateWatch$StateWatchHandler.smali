.class final Lcom/android/server/StateWatch$StateWatchHandler;
.super Landroid/os/Handler;
.source "StateWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StateWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateWatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StateWatch;


# direct methods
.method public constructor <init>(Lcom/android/server/StateWatch;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 42
    :pswitch_0
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    invoke-virtual {v1}, Lcom/android/server/StateWatch;->isStateOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/StateWatch;->mStateFailCount:I

    .line 45
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/StateWatch;->mChecking:Z

    .line 60
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    iget v2, v1, Lcom/android/server/StateWatch;->mStateFailCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/StateWatch;->mStateFailCount:I

    .line 49
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    iget v1, v1, Lcom/android/server/StateWatch;->mStateFailCount:I

    iget-object v2, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    invoke-virtual {v2}, Lcom/android/server/StateWatch;->getCheckCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    invoke-virtual {v1}, Lcom/android/server/StateWatch;->dealAction()V

    .line 52
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/StateWatch;->mStateFailCount:I

    goto :goto_1

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    iget-object v1, v1, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/StateWatch$StateWatchHandler;->removeMessages(I)V

    .line 56
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    iget-object v1, v1, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/StateWatch$StateWatchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, "msgDealy":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    iget-object v1, v1, Lcom/android/server/StateWatch;->mHandler:Lcom/android/server/StateWatch$StateWatchHandler;

    iget-object v2, p0, Lcom/android/server/StateWatch$StateWatchHandler;->this$0:Lcom/android/server/StateWatch;

    invoke-virtual {v2}, Lcom/android/server/StateWatch;->getCheckInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/StateWatch$StateWatchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
