.class final Lcom/android/server/wifi/WifiNetworkAvailable$H;
.super Landroid/os/Handler;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkAvailable;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;Lcom/android/server/wifi/WifiNetworkAvailable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiNetworkAvailable$1;

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$H;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 859
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1700(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$302(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 860
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage mCurrentInfo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 861
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 863
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 864
    .local v3, "available":Landroid/content/Intent;
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<unknown ssid>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 865
    const-string v11, "ssid"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, "avaSsid":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_ADD_UPDATE_NETWORK avaSsid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", getcurrent ssid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 867
    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 868
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v12, "manualConnect"

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$702(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 869
    const-string v11, "linkProperties"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 870
    .local v1, "avaLp":Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->isSoftAp(Landroid/net/LinkProperties;)Z
    invoke-static {v12, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1800(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/LinkProperties;)Z

    move-result v12

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$902(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 871
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$900(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 872
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->getWifiConfig(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11, v2, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1900(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 873
    .local v0, "avaConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    const/4 v13, 0x1

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->updateNetworkAvailables(Landroid/net/wifi/WifiConfiguration;IZ)V
    invoke-static {v11, v0, v12, v13}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2000(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiConfiguration;IZ)V

    .line 875
    .end local v0    # "avaConf":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const/4 v12, 0x1

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$502(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 876
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLastSSID:Ljava/lang/String;
    invoke-static {v11, v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2102(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 879
    .end local v1    # "avaLp":Landroid/net/LinkProperties;
    .end local v2    # "avaSsid":Ljava/lang/String;
    .end local v3    # "available":Landroid/content/Intent;
    :pswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v11, :cond_0

    .line 880
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 881
    .local v6, "netd":I
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_REOVE_UPDATE_NETWORK: netid= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 882
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    invoke-virtual {v11, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->removeNetworkAvailable(I)V

    goto/16 :goto_0

    .line 885
    .end local v6    # "netd":I
    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 886
    .local v10, "unavailable":Landroid/content/Intent;
    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<unknown ssid>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 887
    const-string v11, "ssid"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 888
    .local v9, "unavaSsid":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_NETWORK_NOT_AVAILABLE removeSsid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", getcurrent ssid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V

    .line 889
    if-eqz v9, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 890
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const-string v12, "manualConnect"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$702(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 891
    const-string v11, "linkProperties"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 892
    .local v8, "unavaLp":Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->getWifiConfig(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11, v9, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1900(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 893
    .local v7, "unavaConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    sget v12, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    const/4 v13, 0x0

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->updateNetworkAvailables(Landroid/net/wifi/WifiConfiguration;IZ)V
    invoke-static {v11, v7, v12, v13}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2000(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiConfiguration;IZ)V

    .line 894
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->isSoftAp(Landroid/net/LinkProperties;)Z
    invoke-static {v12, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$1800(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/LinkProperties;)Z

    move-result v12

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$902(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 895
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const/4 v12, 0x1

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z
    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$502(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 896
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLastSSID:Ljava/lang/String;
    invoke-static {v11, v9}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2102(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$900(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 898
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    const/4 v12, 0x0

    const/16 v13, -0x64

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->autoConnectAP(IILjava/lang/String;)V
    invoke-static {v11, v12, v13, v9}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2200(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 903
    .end local v7    # "unavaConf":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "unavaLp":Landroid/net/LinkProperties;
    .end local v9    # "unavaSsid":Ljava/lang/String;
    .end local v10    # "unavailable":Landroid/content/Intent;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 904
    .local v4, "currentSsid":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->autoConnectAP(IILjava/lang/String;)V
    invoke-static {v11, v12, v13, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2200(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 907
    .end local v4    # "currentSsid":Ljava/lang/String;
    :pswitch_4
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v5, 0x1

    .line 908
    .local v5, "hasLossPkt":Z
    :goto_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiNetworkAvailable$H;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->detectRssi(Z)V
    invoke-static {v11, v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2300(Lcom/android/server/wifi/WifiNetworkAvailable;Z)V

    goto/16 :goto_0

    .line 907
    .end local v5    # "hasLossPkt":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 861
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
