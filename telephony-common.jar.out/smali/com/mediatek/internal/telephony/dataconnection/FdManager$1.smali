.class Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive: action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 133
    const-string v10, "ril.fd.mode"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    .local v2, "fdMdEnableMode":I
    const-string v10, "persist.radio.simswitch"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .line 146
    .local v3, "fdSimId":I
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 147
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 148
    const-string v10, "status"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 149
    .local v9, "status":I
    const-string v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 150
    .local v4, "plugged":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v5

    .line 152
    .local v5, "previousChargingMode":Z
    const-string v7, ""

    .local v7, "sChargingModeStr":Ljava/lang/String;
    const-string v8, ""

    .line 153
    .local v8, "sPluggedStr":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 154
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 155
    const-string v7, "Charging"

    .line 161
    :goto_0
    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    .line 162
    const-string v8, "Plugged in AC"

    .line 167
    :cond_0
    :goto_1
    const/4 v10, 0x1

    if-eq v4, v10, :cond_1

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    .line 169
    :cond_1
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 172
    :cond_2
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v6

    .line 173
    .local v6, "previousEnableFDOnCharging":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v11, "fd.on.charge"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$102(Lcom/mediatek/internal/telephony/dataconnection/FdManager;I)I

    .line 176
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-ne v5, v10, :cond_3

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v10

    if-eq v6, v10, :cond_4

    .line 178
    :cond_3
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fdMdEnableMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", 3gSimID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", when charging state is changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 180
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "previousEnableFdOnCharging="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mEnableFdOnCharing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", when charging state is changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 183
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "previousChargingMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mChargingMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 189
    :cond_4
    const/4 v10, 0x1

    if-ne v2, v10, :cond_6

    .line 190
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$200(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$300(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v10

    if-ne v10, v3, :cond_6

    .line 191
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-ne v5, v10, :cond_5

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v10

    if-eq v6, v10, :cond_6

    .line 193
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 194
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    .line 217
    .end local v4    # "plugged":I
    .end local v5    # "previousChargingMode":Z
    .end local v6    # "previousEnableFDOnCharging":I
    .end local v7    # "sChargingModeStr":Ljava/lang/String;
    .end local v8    # "sPluggedStr":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_6
    :goto_2
    return-void

    .line 157
    .restart local v4    # "plugged":I
    .restart local v5    # "previousChargingMode":Z
    .restart local v7    # "sChargingModeStr":Ljava/lang/String;
    .restart local v8    # "sPluggedStr":Ljava/lang/String;
    .restart local v9    # "status":I
    :cond_7
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 158
    const-string v7, "Non-Charging"

    goto/16 :goto_0

    .line 163
    :cond_8
    const/4 v10, 0x2

    if-ne v4, v10, :cond_0

    .line 164
    const-string v8, "Plugged in USB"

    goto/16 :goto_1

    .line 196
    .restart local v6    # "previousEnableFDOnCharging":I
    :cond_9
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto :goto_2

    .line 202
    .end local v4    # "plugged":I
    .end local v5    # "previousChargingMode":Z
    .end local v6    # "previousEnableFDOnCharging":I
    .end local v7    # "sChargingModeStr":Ljava/lang/String;
    .end local v8    # "sPluggedStr":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_a
    const-string v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 203
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 204
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string v11, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 205
    const-string v10, "activeArray"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 207
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    # setter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z
    invoke-static {v11, v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$602(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 208
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mChargingMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 210
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 211
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto :goto_2

    .line 207
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 213
    :cond_c
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_2
.end method
