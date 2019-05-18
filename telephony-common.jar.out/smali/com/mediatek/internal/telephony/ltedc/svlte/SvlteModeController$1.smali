.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "action":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController] onReceive, action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1164
    const-string v8, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1165
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1166
    const-string v8, "svlteRatSwitchPriority"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v11, v8, :cond_2

    move v2, v6

    .line 1169
    .local v2, "needHandler":Z
    :goto_0
    const-string v8, "phone"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1171
    .local v3, "phoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController]  : Phone["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Switch Finished!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1173
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    .line 1174
    .local v4, "slotId":I
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I

    move-result v8

    if-ne v4, v8, :cond_3

    move v1, v6

    .line 1175
    .local v1, "isSwitchingSlot":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController] isSwitchingSlot is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needHandler is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1177
    if-eqz v2, :cond_0

    if-nez v1, :cond_4

    .line 1178
    :cond_0
    const-string v6, "[SvlteModeController] no need handler this case or Error slot."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1222
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v7

    .line 1166
    goto :goto_0

    .restart local v2    # "needHandler":Z
    .restart local v3    # "phoneId":I
    .restart local v4    # "slotId":I
    :cond_3
    move v1, v7

    .line 1174
    goto :goto_1

    .line 1181
    .restart local v1    # "isSwitchingSlot":Z
    :cond_4
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I
    invoke-static {v8, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$802(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I

    .line 1182
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v8

    if-ne v4, v8, :cond_5

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$900()[I

    move-result-object v8

    aget v8, v8, v4

    if-ne v8, v11, :cond_5

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1185
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V
    invoke-static {v8, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    .line 1187
    :cond_5
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1188
    const-string v6, "[SvlteModeController] All switch task done,send ACTION_SET_RADIO_TECHNOLOGY_DONE broadcast."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1190
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    goto :goto_2

    .line 1191
    :cond_6
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v6, :cond_7

    .line 1192
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1193
    .local v5, "switchSlot":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SvlteModeController] First slot switch done. Now switch Slot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1195
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1196
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V
    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    goto :goto_2

    .line 1198
    .end local v5    # "switchSlot":I
    :cond_7
    const-string v6, "[SvlteModeController] This should never happen."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1201
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    goto/16 :goto_2

    .line 1203
    :cond_9
    const-string v6, "com.mediatek.intent.action.INTENT_ACTION_MODEM_OFF_IN_IDLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MODEM_OFF_IN_IDLE, mPendingByModemOff = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingByModemOff:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ModemOffState = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getModemOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mPendingCardTypes = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)[I

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mInSwitching = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1208
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingByModemOff:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getModemOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    move-result-object v6

    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)[I

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1210
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockBySimSwitch()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockByTrming()Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1211
    const-string v6, "Start switch mode pended"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 1212
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)[I

    move-result-object v8

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I
    invoke-static {v6, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$2002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;[I)[I

    .line 1213
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I
    invoke-static {v6, v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1702(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;[I)[I

    .line 1214
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->prepareForModeSwitch()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$2100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    .line 1215
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    .line 1219
    :goto_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingByModemOff:Z
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1602(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;Z)Z

    goto/16 :goto_2

    .line 1217
    :cond_a
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I
    invoke-static {v6, v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1702(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;[I)[I

    goto :goto_3
.end method
