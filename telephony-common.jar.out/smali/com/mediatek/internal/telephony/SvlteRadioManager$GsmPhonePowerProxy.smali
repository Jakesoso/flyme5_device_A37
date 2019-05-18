.class Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;
.super Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmPhonePowerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 1

    .prologue
    .line 670
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/SvlteRadioManager$1;

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    return-void
.end method


# virtual methods
.method setRadioPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 672
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    const-string v3, "ril.md1r1.emdstatus.send"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 675
    .local v0, "isCofigEmdStatusMDR1":Z
    const-string v3, "ril.md1r2.emdstatus.send"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 677
    .local v1, "isCofigEmdStatusMDR2":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v2, v4

    .line 680
    .local v2, "isNeedDelay":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 681
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const-string v4, "GsmPhonePowerProxy: setRadioPower retry after 200ms"

    # invokes: Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$500(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V

    .line 683
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {v5, v6, p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;Lcom/android/internal/telephony/Phone;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v3, v6, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :goto_1
    return-void

    .line 677
    .end local v2    # "isNeedDelay":Z
    :cond_2
    if-nez v0, :cond_1

    move v2, v4

    goto :goto_0

    .line 688
    .restart local v2    # "isNeedDelay":Z
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_1
.end method
