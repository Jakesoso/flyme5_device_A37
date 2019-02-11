.class Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;
.super Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaPhonePowerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 1

    .prologue
    .line 654
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/SvlteRadioManager$1;

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    return-void
.end method


# virtual methods
.method setRadioPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 656
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    const-string v0, "ril.cdma.emdstatus.send"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const-string v1, "CdmaPhonePowerProxy: setRadioPower retry after 200ms"

    # invokes: Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$500(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;Lcom/android/internal/telephony/Phone;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # getter for: Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0
.end method
