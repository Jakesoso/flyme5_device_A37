.class Lcom/mediatek/epdg/EpdgTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgTracker;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 107
    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 109
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 110
    .local v1, "connected":Z
    const/4 v4, 0x0

    .line 111
    .local v4, "isConnected":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v9, :cond_0

    .line 112
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 113
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_1

    move v4, v9

    .line 115
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v12, :cond_7

    .line 117
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/mediatek/epdg/EpdgConnection;->notifyWifiConnected()V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v2    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    :cond_2
    if-eqz v4, :cond_7

    .line 120
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v12, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    .end local v1    # "connected":Z
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConnected":Z
    :cond_3
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 125
    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "state":Ljava/lang/String;
    const-string v10, "LOADED"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "IMSI"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 128
    :cond_4
    const-string v10, "persist.radio.simswitch"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 130
    .local v6, "phoneId":I
    if-ltz v6, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-lt v6, v9, :cond_6

    .line 131
    :cond_5
    const-string v9, "EpdgTracker"

    const-string v10, "phoneId is out range"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v6, 0x7fffffff

    .line 134
    :cond_6
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 135
    .local v8, "subId":I
    const-string v9, "EpdgTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ICC:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgTracker;->access$100(Lcom/mediatek/epdg/EpdgTracker;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 137
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgTracker;->access$200(Lcom/mediatek/epdg/EpdgTracker;)Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgTracker;->access$100(Lcom/mediatek/epdg/EpdgTracker;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 150
    .end local v6    # "phoneId":I
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_7
    :goto_3
    return-void

    .line 139
    :cond_8
    const-string v10, "com.mediatek.epdg.action.dpd"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 140
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgTracker;->access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;

    move-result-object v10

    aget-object v9, v10, v9

    invoke-virtual {v9}, Lcom/mediatek/epdg/EpdgConnection;->setEpdgDpdAlarm()V

    .line 141
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgTracker$1;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mEpdgDpdWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgTracker;->access$300(Lcom/mediatek/epdg/EpdgTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 142
    const/4 v9, 0x0

    invoke-static {v9, v12}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "keepAliveCmd":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;
    invoke-static {}, Lcom/mediatek/epdg/EpdgTracker;->access$400()Lcom/mediatek/epdg/EpdgConnector;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 146
    :catch_0
    move-exception v9

    goto :goto_3
.end method
