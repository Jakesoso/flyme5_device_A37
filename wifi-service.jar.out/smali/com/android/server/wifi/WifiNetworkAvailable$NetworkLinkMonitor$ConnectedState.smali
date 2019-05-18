.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3500(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1009
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 1013
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1019
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1015
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Z)Z

    .line 1016
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$2800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method
