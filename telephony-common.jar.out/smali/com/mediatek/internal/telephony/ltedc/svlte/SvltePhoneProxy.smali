.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
.super Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.source "SvltePhoneProxy.java"


# instance fields
.field protected mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

.field private mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

.field protected mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 2
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "radioTechMode"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SvltePhoneProxy: cdmaPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 88
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 97
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 99
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 108
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLteDcPhoneProxy: mIratController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIratDataSwitchHelper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 116
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-nez v0, :cond_5

    .line 119
    const-string v0, "Get ITelephonyExt fail"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->log(Ljava/lang/String;)V

    .line 124
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0, p0}, Lcom/mediatek/common/telephony/ITelephonyExt;->startDataRoamingStrategy(Ljava/lang/Object;)V

    .line 128
    :cond_1
    return-void

    .line 86
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_0

    .line 90
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_1

    .line 94
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto/16 :goto_1

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->init(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private createAndShareDcTracker()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAndShareDcTracker: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 151
    return-void
.end method

.method private shareLTEServiceStateTracker(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLTEServiceStateTracker: cdmaPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gsmPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .line 172
    .local v0, "lteServiceStateTracker":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V

    .line 174
    return-void
.end method

.method private updateCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCsPhone: mCsPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", csPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->log(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateCsPhoneForSvlte(Lcom/android/internal/telephony/PhoneBase;)V

    .line 257
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 259
    :cond_0
    return-void
.end method

.method private updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccPhoneBookInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 302
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    goto :goto_0
.end method

.method private updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccSmsInterfaceManager: targetPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 293
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mCdmaIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLteIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 266
    const/4 v0, -0x1

    .line 267
    .local v0, "psType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 274
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updatePhoneIfNeeded(Lcom/android/internal/telephony/PhoneBase;)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateRecords()V

    .line 277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 278
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setPsServiceType(I)V

    .line 279
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->dispose()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose: mSharedDcTracker ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->dispose()V

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->stopDataRoamingStrategy()V

    .line 186
    :cond_0
    return-void
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    .line 138
    .local v0, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPsPhone: ratMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 142
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0
.end method

.method public getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    return-object v0
.end method

.method public getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "SvltePhoneProxy"

    return-object v0
.end method

.method public getRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSubId()I

    move-result v1

    .line 160
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "ratMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRatMode ratMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    aget-object v2, v2, v0

    return-object v2
.end method

.method public getSvlteServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 313
    .local v0, "isInSvlteMode":Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 317
    :goto_1
    return-object v1

    .line 311
    .end local v0    # "isInSvlteMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    .restart local v0    # "isInSvlteMode":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->createAndShareDcTracker()V

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->setDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 235
    return-void
.end method

.method public phoneObjectUpdater(I)V
    .locals 1
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 206
    const-string v0, "phoneObjectUpdater do not need phone update in SVLTE case."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)V

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updateCsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    move-object v0, p1

    .line 286
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 288
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    .line 289
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 201
    const-string v0, "updatePhoneObject do not need phone update in SVLTE case."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 213
    const/4 v0, -0x1

    .line 214
    .local v0, "psType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 216
    const-string v1, "updatePsPhone: setBipPsType =1"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    .line 223
    :cond_0
    :goto_0
    const-string v1, "updatePsPhoneAndCi: syncDataRegStateOrRatChanged."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->syncDataRegStateOrRatChanged()V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePsPhoneAndCi: psType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setPsServiceType(I)V

    .line 227
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 220
    const-string v1, "updatePsPhone: setBipPsType =0"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->logd(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBipPsType(I)V

    goto :goto_0
.end method
