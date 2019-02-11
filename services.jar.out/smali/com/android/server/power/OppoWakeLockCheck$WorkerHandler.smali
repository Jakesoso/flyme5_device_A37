.class Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;
.super Landroid/os/Handler;
.source "OppoWakeLockCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OppoWakeLockCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/OppoWakeLockCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OppoWakeLockCheck;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$000(Lcom/android/server/power/OppoWakeLockCheck;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$000(Lcom/android/server/power/OppoWakeLockCheck;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 160
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$100(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoPartialWakeLockCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->check()V

    .line 144
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$200(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mHandler:Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/power/OppoWakeLockCheck;->access$200(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xafc80

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$100(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoPartialWakeLockCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->reportTimeoutWakeLock()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mPartialWakeLock:Lcom/android/server/power/OppoPartialWakeLockCheck;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$100(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoPartialWakeLockCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->restampWakeLock()V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/OppoWakeLockCheck$WorkerHandler;->this$0:Lcom/android/server/power/OppoWakeLockCheck;

    # getter for: Lcom/android/server/power/OppoWakeLockCheck;->mScreenOnWakeLock:Lcom/android/server/power/OppoScreenOnWakeLockCheck;
    invoke-static {v0}, Lcom/android/server/power/OppoWakeLockCheck;->access$300(Lcom/android/server/power/OppoWakeLockCheck;)Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->check()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
