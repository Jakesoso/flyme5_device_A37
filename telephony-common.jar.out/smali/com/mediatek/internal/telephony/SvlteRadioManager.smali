.class public Lcom/mediatek/internal/telephony/SvlteRadioManager;
.super Lcom/mediatek/internal/telephony/RadioManager;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/SvlteRadioManager$3;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
    }
.end annotation


# static fields
.field private static final CDMA_PROPERTY_SILENT_REBOOT_MD:Ljava/lang/String; = "cdma.ril.eboot"

.field private static final DBG:Z = true

.field private static final EVENT_ECC_DISCONNECT:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RIL_C2K_MODEM_POWER_REQUEST_DONE:I = 0x4

.field private static final EVENT_RIL_GSM_MODEM_POWER_REQUEST_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteRadioManager"

.field private static final MODEM_POWER_OFF_DONE:Ljava/lang/String; = "1"

.field private static final MODEM_POWER_OFF_STATE:Ljava/lang/String; = "-1"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND_MD1R1:Ljava/lang/String; = "ril.md1r1.emdstatus.send"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND_MD1R2:Ljava/lang/String; = "ril.md1r2.emdstatus.send"

.field private static final PROPERTY_ICCID_SIM_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_NO:Ljava/lang/String; = "0"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_YES:Ljava/lang/String; = "1"

.field private static final STACK_TRACE_CALLER_INDEX:I = 0x3

.field private static final THERMAL_MD3_POWER_OFF:Ljava/lang/String; = "cdma.t6.offmd3"


# instance fields
.field private mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

.field private mEccPhone:Lcom/android/internal/telephony/Phone;

.field private mForceSetRadioPowerRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

.field private mPhonePowerProxyRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioPowerRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 105
    iput-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    .line 111
    iput-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    .line 1269
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    invoke-direct {v0, p1, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 124
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    .line 126
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->initRadioPowerRunnables(I)V

    .line 129
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->registerCIs()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/SvlteRadioManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOffRequestIfBlocked()V

    return-void
.end method

.method private createPhonePowerProxy(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 631
    const-string v0, "PhonePowerProxy is created"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    .line 636
    :goto_0
    return-object v0

    .line 625
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaPhonePowerProxy is created for phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 626
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    goto :goto_0

    .line 628
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmPhonePowerProxy is created for phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 629
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$GsmPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    goto :goto_0

    .line 636
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$1;)V

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private forceSetModemPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceSetModemPower, phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setGsmModemPower(ZI)V

    goto :goto_0
.end method

.method private getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 348
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    .line 349
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 353
    :goto_0
    return-object v1

    .line 352
    :cond_0
    const-string v1, "getPhoneProxy: phoneProxy is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "isLtePhoneNeeded"    # Z

    .prologue
    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 335
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_1

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 339
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_1
    const-string v1, "SvlteRadioManager"

    const-string v2, "getPhoneProxy: phoneProxy is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRadioPowerRunnables(I)V
    .locals 6
    .param p1, "phoneCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 777
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    .line 778
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    .line 779
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v4

    invoke-direct {v3, p0, v5, v4}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_0
    return-void
.end method

.method private isAllCardTypeReady(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x1

    .line 914
    const-string v4, "gsm.ril.cardtypeset"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v4, "gsm.ril.cardtypeset.2"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "cardTypeSet2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 917
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 918
    .local v3, "phoneCount":I
    if-ne v3, v6, :cond_1

    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cardTypeSet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 921
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 923
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cardTypeSet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cardTypeSet2 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 925
    if-nez p1, :cond_2

    .line 926
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 927
    :cond_2
    if-ne v6, p1, :cond_0

    .line 928
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isAllowModemPowerRequest()Z
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isRadioAvailableforModemPower()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getModemOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;->MODEM_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getModemOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ModemOffState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowRadioPowerOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1265
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->allowRadioPowerOn(I)Z

    move-result v0

    return v0
.end method

.method private isModemPowerOn(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 759
    const/4 v0, 0x1

    .line 761
    .local v0, "isModemPowerOn":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 762
    const-string v1, "isModemPowerOn: Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    .line 773
    :cond_0
    :goto_0
    return v0

    .line 767
    :cond_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemPowerOn: modem for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off, do not set radio again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 770
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedForceSetModemPowerForThermalL6()Z
    .locals 3

    .prologue
    .line 382
    const-string v1, "1"

    const-string v2, "cdma.t6.offmd3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 384
    .local v0, "isThermalL6ModemOff":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedForceSetModemPowerForThermalL6: isThermalL6ModemOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEccCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 388
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRadioAvailableforModemPower()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, "gsmAvailable":Z
    const/4 v0, 0x0

    .line 429
    .local v0, "cdmaAvailable":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 430
    .local v4, "phoneCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 431
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 432
    const/4 v2, 0x1

    .line 436
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    const/4 v2, 0x1

    .line 439
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 440
    .local v1, "cdmaSlotId":I
    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadioAvailableforModemPower gsmAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cdmaAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 442
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    return v5

    .line 430
    .end local v1    # "cdmaSlotId":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .restart local v1    # "cdmaSlotId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1311
    const-string v0, "SvlteRadioManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void
.end method

.method private registerCIs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 149
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method private resetCardProperties()V
    .locals 2

    .prologue
    .line 1122
    const-string v0, "Reset Card Properties"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1123
    const-string v0, "gsm.ril.cardtypeset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v0, "gsm.ril.cardtypeset.2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v0, "ril.cdma.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v0, "ril.md1r1.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v0, "ril.md1r2.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v0, "ril.iccid.sim1_c2k"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private resumeModemPowerOffRequestIfBlocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isModemOffRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isRadioAvailableforModemPower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->refreshRFBlockedState(Z)V

    .line 404
    const-string v0, "MPRH: Retring MD OFF Request."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 405
    iget v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 407
    :cond_0
    return-void
.end method

.method private resumeModemPowerOnRequestIfBlocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 410
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isAllModemPowerOffRequestDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isModemOnRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->refreshRFBlockedState(Z)V

    .line 416
    :cond_0
    return-void
.end method

.method private setC2KRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 748
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 749
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 750
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 752
    :cond_0
    return-void
.end method

.method private setGsmModemPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 330
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 331
    return-void
.end method

.method private setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "power"    # Z

    .prologue
    .line 358
    if-eqz p1, :cond_2

    .line 359
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 360
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 361
    .local v3, "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    .line 362
    .local v2, "phoneType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v1

    .line 363
    .local v1, "isWorldModeSwitching":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, ci: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, phoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, isWorldModeSwitching = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 367
    if-eqz p2, :cond_0

    .line 368
    const/4 v4, 0x0

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 379
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v1    # "isWorldModeSwitching":Z
    .end local v2    # "phoneType":I
    .end local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-void

    .line 370
    .restart local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .restart local v1    # "isWorldModeSwitching":Z
    .restart local v2    # "phoneType":I
    .restart local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 371
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 373
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 377
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v1    # "isWorldModeSwitching":Z
    .end local v2    # "phoneType":I
    .end local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    const-string v4, "setModemPowerByPhone: phone is null"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRadioPowerById(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerById, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 713
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 714
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 715
    return-void
.end method

.method private setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 727
    if-eqz p1, :cond_2

    .line 728
    if-nez p2, :cond_0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 730
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 744
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 733
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 736
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->createPhonePowerProxy(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    .line 738
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allow power on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    .end local v0    # "phoneId":I
    :cond_2
    const-string v1, "setRadioPowerByPhone: phone is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSvlteModemsPower(ZI)V
    .locals 7
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowModemPowerRequest()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 303
    .local v2, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 304
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, GSM, power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 306
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 307
    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 311
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, C2K, power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 312
    invoke-static {p2, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 313
    .restart local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 315
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->refreshRFBlockedState(Z)V

    .line 317
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->setModemPowerRequestBlocked(ZZ)V

    .line 325
    .end local v0    # "i":I
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneCount":I
    :cond_1
    :goto_1
    return-void

    .line 303
    .restart local v0    # "i":I
    .restart local v2    # "phoneCount":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    .end local v2    # "phoneCount":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, blocked power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->setModemPowerRequestBlocked(ZZ)V

    goto :goto_1
.end method

.method private setSvlteRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVLTE GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 720
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVLTE C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 722
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 723
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 724
    return-void
.end method

.method private turnOffCTARadioIfNecessary()V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 285
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "modem off, not to handle CTA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with card type, ignore radio off."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 283
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radio because we are no longer in CTA mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 293
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1
.end method


# virtual methods
.method public checkForCTACase()Z
    .locals 5

    .prologue
    .line 256
    const/4 v2, 0x1

    .line 257
    .local v2, "isCTACase":Z
    const-string v3, "Check For CTA case!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 258
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mWifiOnlyMode:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_2

    .line 264
    sget-object v3, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "cardType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cardType for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v2, 0x0

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 274
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTA case: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 275
    return v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 138
    const-string v2, "Disposing"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 140
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 142
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public forceAllowAirplaneModeChange(Z)V
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->setForceSwitch(Z)V

    .line 1307
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force set radio power for phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 552
    const-string v1, "isModemPowerOn: Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isInIpoShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    const-string v1, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_2
    invoke-static {p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 562
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isNeedForceSetModemPowerForThermalL6()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->forceSetModemPower(ZI)V

    goto :goto_0

    .line 566
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemPowerOn: modem off for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off, ignore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 577
    const-string v1, "force set radio power, read iccid not ready, wait for200ms"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 586
    :cond_5
    move v0, p1

    .line 587
    .local v0, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 588
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 591
    const-string v1, "forceSetRadioPower register EVENT_DISCONNECT for ECC call!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    .line 593
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getAirplaneRequestHandler()Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1096
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1098
    :pswitch_0
    const-string v0, "MPRH: EVENT_RADIO_AVAILABLE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOffRequestIfBlocked()V

    goto :goto_0

    .line 1102
    :pswitch_1
    const-string v0, "MPRH: GSM EVENT_RIL_MODEM_POWER_REQUEST_DONE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOnRequestIfBlocked()V

    goto :goto_0

    .line 1106
    :pswitch_2
    const-string v0, "MPRH: C2K EVENT_RIL_MODEM_POWER_REQUEST_DONE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOnRequestIfBlocked()V

    goto :goto_0

    .line 1110
    :pswitch_3
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "Ecc call is disconnected and unregister EVENT_ECC_DISCONNECT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    .line 1113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v0

    return v0
.end method

.method protected isModemOff(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "powerOff":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 228
    .local v0, "cdmaSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioOff: cdmaSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 230
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 231
    const-string v3, "isRadioOff: C2K phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 232
    if-nez v0, :cond_0

    .line 233
    const/4 p1, 0x0

    .line 245
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioOff: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", powerOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 247
    return v2

    .line 235
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const-string v3, "isRadioOff: GSM phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 239
    if-nez v0, :cond_2

    .line 240
    const/4 p1, 0x1

    goto :goto_0

    .line 242
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 962
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 963
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v6

    if-nez v6, :cond_1

    .line 964
    const-string v5, "airplane mode switching, not allow switch now "

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 965
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne p1, v6, :cond_2

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAirplaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not expected (the same)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Airplane mode changed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v6

    if-nez v6, :cond_5

    .line 981
    const-string v6, "Airplane mode changed: turn on/off all modem"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 982
    if-eqz p1, :cond_4

    .line 984
    .local v3, "modemPower":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 985
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v6, v3, v5}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 988
    :cond_3
    const-string v5, "1"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 989
    iget v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 990
    const-string v5, "ril.cdma.emdstatus.send"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v5, "ril.md1r1.emdstatus.send"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v5, "ril.md1r2.emdstatus.send"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 995
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0

    .end local v3    # "modemPower":Z
    :cond_4
    move v3, v5

    .line 982
    goto :goto_1

    .line 998
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isMSimModeSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 999
    const-string v6, "Airplane mode changed: turn on/off all radio"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1000
    if-eqz p1, :cond_8

    move v4, v3

    .line 1002
    .local v4, "radioPower":Z
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1003
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 1006
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v1, v5, :cond_9

    .line 1007
    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 1014
    const-string v5, "Airplane mode changed: update the sim setting after setPhoneRadioPower"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1016
    move v0, v4

    .line 1017
    .local v0, "CardRadioPower":Z
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, "iccId":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change radio to off because card state is manually turned off, iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1022
    const/4 v0, 0x0

    .line 1024
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "CardRadioPower":Z
    .end local v1    # "i":I
    .end local v2    # "iccId":Ljava/lang/String;
    .end local v4    # "radioPower":Z
    :cond_8
    move v4, v5

    .line 1000
    goto :goto_2

    .line 1028
    .restart local v1    # "i":I
    .restart local v4    # "radioPower":Z
    :cond_9
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1029
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0
.end method

.method public notifyIpoPreBoot()V
    .locals 1

    .prologue
    .line 1083
    const-string v0, "IPO preboot!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1084
    invoke-super {p0}, Lcom/mediatek/internal/telephony/RadioManager;->notifyIpoPreBoot()V

    .line 1085
    return-void
.end method

.method public notifyIpoShutDown()V
    .locals 2

    .prologue
    .line 1068
    const-string v0, "notify IPO shutdown!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetCardProperties()V

    .line 1070
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 1071
    return-void
.end method

.method public notifyRadioAvailable(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notifies radio available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "Power off modem because boot up under airplane mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v1

    shl-int v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 802
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "simStatus":Ljava/lang/String;
    const-string v5, "phone"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 807
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:Invalid phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 813
    const-string v5, "INTENT: Modem is not power on!"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 825
    const/4 v0, 0x1

    .line 827
    .local v0, "desiredRadioPower":Z
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 830
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v7, v5, v2

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 836
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 839
    const-string v5, "CT 4G card SIM state loaded, c2k iccid not ready, wait for it..."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 840
    new-instance v3, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Landroid/content/Intent;)V

    .line 842
    .local v3, "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 845
    .end local v3    # "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No card, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_6
    const/4 v0, 0x1

    .line 855
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 860
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_7
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 861
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_8

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 865
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v8, v5, v2

    .line 866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x0

    .line 868
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 871
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-ne v5, v7, :cond_9

    .line 872
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now Ecc call is on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and can\'t set power off!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_9
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method protected readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1215
    const/4 v2, 0x0

    .line 1216
    .local v2, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1217
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    .line 1219
    .local v1, "radioTechMode":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 1220
    .local v3, "slotId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1223
    const/4 v4, 0x3

    if-ne v4, v1, :cond_4

    .line 1225
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for UIM card"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1227
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "iccidCommon":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: slotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccidCommon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1231
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "N/A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1233
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: update iccid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] use iccidC2K:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1255
    .end local v0    # "iccidCommon":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICCID for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1256
    return-object v2

    .line 1239
    :cond_2
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1240
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1242
    :cond_3
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1244
    :cond_4
    const/4 v4, 0x2

    if-ne v4, v1, :cond_6

    .line 1245
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1246
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1248
    :cond_5
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1251
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected refreshSimSetting(ZI)V
    .locals 2
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 888
    if-eqz p1, :cond_1

    .line 889
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p2

    .line 898
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshSimSetting phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not update SimSetting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setModemPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PhoneBitMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 186
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v3, 0x0

    .line 187
    .local v3, "phoneId":I
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager$3;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under SS mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 192
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 194
    .local v0, "cdmaSlotId":I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_0

    .line 196
    move v3, v2

    .line 197
    if-nez p1, :cond_1

    .line 198
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetSimInsertedStatus(I)V

    .line 195
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "cdmaSlotId":I
    .end local v2    # "i":I
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVLTE don\'t TSTS mode! Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setPhoneRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 600
    move v1, p1

    .line 601
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "iccId":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 606
    const/4 v1, 0x0

    .line 609
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneRadioPower, power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 613
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setC2KRadioPower(ZI)V

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 615
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteRadioPower(ZI)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerById(ZI)V

    goto :goto_0
.end method

.method public setRadioPower(ZI)V
    .locals 12
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 461
    .local v5, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v6, v5

    if-lt v6, v9, :cond_0

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRadioPower caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v9

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 466
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRadioPower, power="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    const-string v6, "ril.cdma.emdstatus.send"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 469
    const-string v6, "net.cdma.mdmstat"

    const-string v7, "not ready"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "md3State":Ljava/lang/String;
    const-string v6, "flightmode"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    const-string v6, "setRadioPower: now in flight mode and just return"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 535
    .end local v3    # "md3State":Ljava/lang/String;
    :goto_0
    return-void

    .line 474
    .restart local v3    # "md3State":Ljava/lang/String;
    :cond_1
    const-string v6, "emdstatus is not sent, wait for 200ms"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 475
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v8, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 480
    .end local v3    # "md3State":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOn(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRadioPower: Modem is not power on, phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 491
    const-string v6, "RILD initialize not completed, wait for 200ms"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 492
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v8, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSimInsertedStatus(I)V

    .line 499
    move v4, p1

    .line 500
    .local v4, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "iccId":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v6, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 505
    const/4 v4, 0x0

    .line 508
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->checkForCTACase()Z

    move-result v2

    .line 510
    .local v2, "isCTACase":Z
    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 511
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not allow power on : +phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 517
    if-ne v2, v8, :cond_7

    .line 518
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 519
    .local v0, "cdmaPhoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No SIM inserted, force to turn on cdma phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " radio if no any sim radio is enabled!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, v8, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 522
    .end local v0    # "cdmaPhoneId":I
    :cond_7
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-ne v8, v6, :cond_8

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ECC call Radio Power, power: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 526
    :cond_8
    const-string v6, "No SIM inserted, turn Radio off!"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->turnOffCTARadioIfNecessary()V

    goto/16 :goto_0

    .line 530
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trigger set Radio Power, power: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 533
    invoke-direct {p0, v4, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerById(ZI)V

    goto/16 :goto_0
.end method

.method protected setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 1040
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Lcom/mediatek/internal/telephony/SvlteRadioManager$3;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1057
    const-string v1, "set eboot under SS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1058
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_0
    return-void

    .line 1042
    :pswitch_0
    const-string v1, "set eboot under DSDS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1043
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :pswitch_1
    const-string v1, "set eboot under DSDA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1048
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :pswitch_2
    const-string v1, "set eboot under TSTS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1054
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSimInsertedStatus(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 903
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 906
    :cond_0
    return-void
.end method
