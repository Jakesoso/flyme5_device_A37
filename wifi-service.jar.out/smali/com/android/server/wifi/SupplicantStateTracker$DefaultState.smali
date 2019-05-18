.class Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 350
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x3ea

    const/16 v11, 0x3e9

    const/16 v8, 0x3e8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 354
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 483
    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    :goto_0
    return v10

    .line 357
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$408(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 358
    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTHENTICATION_FAILURE_EVENT, mAuthenticationFailuresCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    .line 363
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v8, 0xb1bc

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v5, v10}, Lcom/android/server/wifi/SupplicantStateTracker;->access$702(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$808(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 377
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$408(Lcom/android/server/wifi/SupplicantStateTracker;)I

    goto :goto_1

    .line 380
    :sswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x6

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/SupplicantStateTracker;->access$900(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 381
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    goto :goto_0

    .line 384
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    .line 385
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3eb

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x157c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 389
    :sswitch_4
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "SupplicantStateTracker"

    const-string v6, "CMD_ENABLE_NETWORK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3
    :sswitch_5
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v5, v10}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 392
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1002(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 393
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3ec

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x4e20

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 401
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    .line 402
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 406
    .local v2, "state":Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v2, v5, :cond_4

    sget-object v5, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v2, v5, :cond_4

    sget-object v5, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v2, v5, :cond_4

    sget-object v5, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-eq v2, v5, :cond_4

    .line 410
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v6

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v5, v2, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1100(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 414
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$702(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 415
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    invoke-static {v5, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1200(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto/16 :goto_0

    .line 418
    .end local v2    # "state":Landroid/net/wifi/SupplicantState;
    .end local v3    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1300(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1400(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 421
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5, v10}, Lcom/android/server/wifi/SupplicantStateTracker;->access$002(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 422
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1502(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 423
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1002(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 427
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$802(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 428
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 429
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 435
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x4e20

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 443
    :sswitch_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1500(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 444
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 445
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 447
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$002(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_0

    .line 452
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1008(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 456
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 457
    .local v4, "status":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, "bssid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->matchKey(Ljava/lang/String;)Z

    move-result v1

    .line 459
    .local v1, "isWep":Z
    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ASSOCIATION_REJECTION_EVENT: mAssociationRejectCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1000(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 462
    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManualConnect status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mWrongkeyCount= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStateTracker;->access$800(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isWep= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz v1, :cond_7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0xe

    if-eq v4, v5, :cond_5

    const/16 v5, 0xf

    if-ne v4, v5, :cond_7

    .line 466
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$808(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 467
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 474
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    .line 475
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v8, 0x9c40

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 469
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # operator++ for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$408(Lcom/android/server/wifi/SupplicantStateTracker;)I

    .line 470
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$802(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_2

    .line 480
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "isWep":Z
    .end local v4    # "status":I
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto/16 :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x20036 -> :sswitch_4
        0x2006f -> :sswitch_7
        0x2012c -> :sswitch_5
        0x24006 -> :sswitch_6
        0x24007 -> :sswitch_0
        0x24008 -> :sswitch_b
        0x2400f -> :sswitch_2
        0x2402b -> :sswitch_a
        0x2402c -> :sswitch_3
        0x2405c -> :sswitch_1
        0x25001 -> :sswitch_8
        0x25004 -> :sswitch_9
    .end sparse-switch
.end method
