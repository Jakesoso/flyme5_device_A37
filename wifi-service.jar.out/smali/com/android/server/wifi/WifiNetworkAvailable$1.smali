.class Lcom/android/server/wifi/WifiNetworkAvailable$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNetworkAvailable;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkAvailable;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get----action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 167
    const-string v3, "EVENT_NETWORK_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v3, "EVENT_NETWORK_NOT_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 171
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v3, "wifiInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4, v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$302(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 173
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$402(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 174
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_4

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$502(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$600(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 179
    :cond_5
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 180
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 181
    .local v2, "wifiState":I
    if-ne v2, v7, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$702(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 183
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mInitAutoConnect:Z
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$802(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 184
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$902(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    goto/16 :goto_0

    .line 186
    .end local v2    # "wifiState":I
    :cond_6
    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 187
    const-string v3, "wifiConfiguration"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 188
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v4, "DISABLED, set mManualConnect false"

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1000(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$702(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    goto/16 :goto_0

    .line 192
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 193
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$600(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-result-object v3

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->sendMessage(I)V

    goto/16 :goto_0

    .line 194
    :cond_8
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$1;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$600(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-result-object v3

    const/16 v4, 0xbba

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->sendMessage(I)V

    goto/16 :goto_0
.end method
