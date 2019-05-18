.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$2600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 962
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 967
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 994
    :cond_0
    :goto_0
    return v5

    .line 969
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 970
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$2700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 972
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiNetworkAvailable$5;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 981
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDisConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 974
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 975
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$2800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$2900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 978
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v2, " "

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$3002(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$900(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$902(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    goto :goto_1

    .line 986
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z
    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Z)Z

    goto/16 :goto_0

    .line 989
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Z)Z

    goto/16 :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 972
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
