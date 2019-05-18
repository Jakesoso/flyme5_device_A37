.class final Lcom/android/server/wifi/SupplicantStateTracker$H;
.super Landroid/os/Handler;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "lp"    # Landroid/os/Looper;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 297
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 298
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 300
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect timeout, msg.event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",msg.arg1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enableAP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 310
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$002(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 311
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    .line 315
    :pswitch_1
    if-eqz p1, :cond_0

    .line 316
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 317
    .local v1, "netId":I
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 318
    .local v0, "hidden":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 319
    const-string v2, "SupplicantStateTracker"

    const-string v3, "hidden == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_3

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->disableAndRemoveNetwork(II)Z

    .line 329
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 330
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$002(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    .line 327
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/android/server/wifi/WifiConfigStore;->disableAndRemoveNetwork(II)Z

    goto :goto_1

    .line 331
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 333
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$H;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
