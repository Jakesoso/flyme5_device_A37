.class Lcom/mediatek/rns/RnsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x2710

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 171
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 173
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_2

    :cond_0
    :goto_0
    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v9, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const-string v7, "RnsServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: NETWORK_STATE_CHANGED_ACTION connected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v10}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 180
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/16 v9, -0x7f

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I
    invoke-static {v7, v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 181
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v9

    const/16 v10, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    move v7, v8

    .line 174
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 183
    :cond_3
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v12, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 186
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 187
    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    :goto_2
    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v9, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$302(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 190
    const-string v7, "RnsServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: WIFI_STATE_CHANGED_ACTION enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v10}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v12, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    move v7, v8

    .line 187
    goto :goto_2

    .line 192
    :cond_6
    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 193
    const-string v7, "newRssi"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 194
    .local v3, "rssi":I
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v9

    invoke-virtual {v9, v8, v3, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 195
    .end local v3    # "rssi":I
    :cond_7
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 196
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 198
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 199
    const-string v9, "RnsServiceImpl"

    const-string v10, "onReceive: CONNECTIVITY_ACTION_IMMEDIATE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 201
    .local v2, "nwType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "typename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "subtypename":Ljava/lang/String;
    const-string v9, "RnsServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nwType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " typename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subtypename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v9, "MOBILE_IMS"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 206
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 208
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 209
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J
    invoke-static {v7, v8, v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$602(Lcom/mediatek/rns/RnsServiceImpl;J)J

    .line 211
    :cond_8
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 212
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$700(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 228
    :cond_9
    :goto_3
    const-string v7, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLteImsConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isEpdgImsConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 214
    :cond_a
    const-string v9, "Wi-Fi"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "IMS"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 215
    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v9, v10}, Lcom/mediatek/rns/RnsServiceImpl;->access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 216
    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static {v9, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$902(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 217
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 218
    const-string v7, "RnsServiceImpl"

    const-string v9, "send Rove Out Alert warning for connection update"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1100(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 221
    :cond_b
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 222
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$1202(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 223
    const-string v7, "RnsServiceImpl"

    const-string v9, "Epdg is disconnected & disable wifi"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1400(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$1300(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 226
    :cond_c
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$902(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto/16 :goto_3

    .line 231
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "nwType":I
    .end local v5    # "subtypename":Ljava/lang/String;
    .end local v6    # "typename":Ljava/lang/String;
    :cond_d
    const-string v9, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 235
    const-string v7, "RnsServiceImpl"

    const-string v9, "Reset RNS state for handover is end"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1500(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static {v7, v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    goto/16 :goto_1

    .line 239
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 240
    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "stateExtra":Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    const-string v8, "RnsServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: SIM_STATE_CHANGED = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneSignalListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$1900(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    const/16 v9, 0x100

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1
.end method
