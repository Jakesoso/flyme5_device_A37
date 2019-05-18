.class Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;
.super Landroid/os/Handler;
.source "OppoAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OppoAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDexHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OppoAppDexOptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OppoAppDexOptManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    .line 292
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 293
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    invoke-virtual {v0}, Lcom/android/server/pm/OppoAppDexOptManager;->performThirdAppDex()V

    goto :goto_0

    .line 308
    :pswitch_1
    const-string v0, "OppoAppDexOptManager"

    const-string v1, "wakeup run Perform Dex app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    invoke-virtual {v0}, Lcom/android/server/pm/OppoAppDexOptManager;->performThirdAppDex()V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x13

    .line 296
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OppoAppDexOptManager$AppDexHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
