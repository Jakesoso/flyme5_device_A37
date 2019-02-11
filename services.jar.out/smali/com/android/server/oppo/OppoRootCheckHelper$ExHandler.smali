.class Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;
.super Landroid/os/Handler;
.source "OppoRootCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoRootCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoRootCheckHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/oppo/OppoRootCheckHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    .line 63
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->OppoRUtilsCompareSystemMD5()I

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    # invokes: Lcom/android/server/oppo/OppoRootCheckHelper;->notifyRootTips()V
    invoke-static {v1}, Lcom/android/server/oppo/OppoRootCheckHelper;->access$000(Lcom/android/server/oppo/OppoRootCheckHelper;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/oppo/OppoRootCheckHelper$ExHandler;->this$0:Lcom/android/server/oppo/OppoRootCheckHelper;

    # getter for: Lcom/android/server/oppo/OppoRootCheckHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/oppo/OppoRootCheckHelper;->access$100(Lcom/android/server/oppo/OppoRootCheckHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 76
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
