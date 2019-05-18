.class Lcom/android/internal/telephony/ProxyController$2;
.super Landroid/os/Handler;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 607
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 631
    :goto_0
    :pswitch_0
    return-void

    .line 609
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->access$300(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->access$400(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 617
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 621
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 625
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$2;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->access$600(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
