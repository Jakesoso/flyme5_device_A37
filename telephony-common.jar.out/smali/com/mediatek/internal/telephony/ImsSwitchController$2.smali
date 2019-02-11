.class Lcom/mediatek/internal/telephony/ImsSwitchController$2;
.super Landroid/database/ContentObserver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;->registerForWfcSwitchChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 425
    const-string v0, "when_to_make_wifi_calls"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->onChange(ZLandroid/net/Uri;)V

    .line 427
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 432
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v0

    .line 433
    .local v0, "isVoLTEEnable":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    .line 434
    .local v1, "isVoWiFiEnable":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForWfcSwitchChange, isVoLTEEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVoWiFiEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 438
    .local v2, "phoneId":I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v4, 0x1

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v3, v4, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v4, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v3, v4, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto :goto_0
.end method
