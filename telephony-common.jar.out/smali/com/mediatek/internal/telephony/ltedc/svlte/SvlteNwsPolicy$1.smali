.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteNwsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    if-nez p2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIntentReceiver Receive action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 477
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 478
    const-string v6, "phone"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 479
    .local v4, "phoneId":I
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "simStatus":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INTENT:SIM_STATE_CHANGED: phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sim status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 482
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v4

    .line 483
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 484
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mSimState:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 486
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 487
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 488
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 490
    .local v2, "iccRecords3GPP":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 492
    .local v3, "iccRecords3GPP2":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_3

    .line 493
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI, iccRecords="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 497
    :goto_1
    if-eqz v2, :cond_4

    .line 498
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI, iccRecords3GPP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 502
    :goto_2
    if-eqz v3, :cond_5

    .line 503
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI, iccRecords3GPP2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 514
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "iccRecords3GPP":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "iccRecords3GPP2":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->checkSimCardStatus()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V

    goto/16 :goto_0

    .line 495
    .restart local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v2    # "iccRecords3GPP":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v3    # "iccRecords3GPP2":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    const-string v7, "IMSI, iccRecords=null"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    const-string v7, "IMSI, iccRecords3GPP=null"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    goto :goto_2

    .line 505
    :cond_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    const-string v7, "IMSI, iccRecords3GPP2=null"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    goto :goto_3

    .line 508
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "iccRecords3GPP":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "iccRecords3GPP2":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 509
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    const-string v7, "Clear ..."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V

    .line 510
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/android/internal/telephony/IccCardConstants$CardType;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Lcom/android/internal/telephony/IccCardConstants$CardType;)Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 511
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->onUpdateIccAvailability()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V

    .line 512
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->clearPlmnChangedCallback()V

    goto :goto_3
.end method
