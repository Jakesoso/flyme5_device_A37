.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1002
    :cond_0
    return-void
.end method
