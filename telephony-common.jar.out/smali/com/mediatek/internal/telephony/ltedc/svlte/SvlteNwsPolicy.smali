.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;
.super Landroid/os/Handler;
.source "SvlteNwsPolicy.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;


# static fields
.field private static final CHINA_TELECOM_MACCO_MCC:Ljava/lang/String; = "455"

.field private static final CHINA_TELECOM_MAINLAND_MCC:Ljava/lang/String; = "460"

.field private static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field private static final EVENT_APP_READY:I = 0x2

.field private static final EVENT_CDMA_CARD_TYPE_CHANGED:I = 0x5

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_IMSI_READY:I = 0x4

.field private static final EVENT_RECORDS_LOADED:I = 0x3

.field private static final INVALID_MCC:Ljava/lang/String; = "000"

.field private static final ISO_COUNTRY_CODE_CN:Ljava/lang/String; = "cn"

.field private static final ISO_COUNTRY_CODE_MO:Ljava/lang/String; = "mo"


# instance fields
.field private mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mHomeOperatorNumeric:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mPhoneId:I

.field private final mPlmnChangedCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Ljava/lang/String;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 4
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 55
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 56
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 57
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 58
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mSimState:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    .line 467
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 76
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 79
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 86
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor, lteDcPhoneProxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    .prologue
    .line 33
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mSimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;Lcom/android/internal/telephony/IccCardConstants$CardType;)Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccCardConstants$CardType;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->onUpdateIccAvailability()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->checkSimCardStatus()V

    return-void
.end method

.method private final checkSimCardStatus()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSimCardStatus, mLteDcPhoneProxy.getIccCard().getState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->executePlmnChangedCallback()V

    .line 196
    :cond_0
    return-void
.end method

.method private final executePlmnChangedCallback()V
    .locals 6

    .prologue
    .line 156
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 157
    .local v2, "size":I
    if-eqz v2, :cond_2

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 159
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 160
    .local v3, "type":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;

    .line 161
    .local v0, "callback":Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlmnChanged-execute, type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;->onPlmnChanged()V

    .line 158
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const-string v4, "PlmnChanged-execute, callback is null"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v0    # "callback":Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;
    .end local v3    # "type":I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 170
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static final getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 442
    const-string v0, ""

    .line 443
    .local v0, "country":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 444
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "mcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private final getHomeOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 209
    .local v0, "numeric":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isCtSimCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v0, "46000"

    move-object v1, v0

    .line 234
    .end local v0    # "numeric":Ljava/lang/String;
    .local v1, "numeric":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 214
    .end local v1    # "numeric":Ljava/lang/String;
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const-string v2, "ro.cdma.home.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeOperatorNumeric, getSimOperatorNumericForPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeOperatorNumeric, ro.cdma.home.operator.numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeOperatorNumeric, numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    move-object v1, v0

    .line 234
    .end local v0    # "numeric":Ljava/lang/String;
    .restart local v1    # "numeric":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v1    # "numeric":Ljava/lang/String;
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_3
    const-string v2, "getHomeOperatorNumeric, mIccRecords is null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final inSameCountry(Ljava/lang/String;)Z
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSameCountry, Not a valid network, operatorNumeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    move v2, v4

    .line 420
    :goto_0
    return v2

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    .line 376
    .local v1, "homeNumeric":Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSameCountry, Not a valid SIM MCC, homeNumeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    move v2, v4

    .line 379
    goto :goto_0

    .line 383
    :cond_1
    const-string v5, "460"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "455"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "460"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 386
    const/4 v2, 0x1

    goto :goto_0

    .line 390
    :cond_3
    const/4 v2, 0x1

    .line 391
    .local v2, "inSameCountry":Z
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "homeCountry":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSameCountry, homeNumeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkNumeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", homeCountry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkCountry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 400
    :cond_4
    const-string v5, "inSameCountry, Not a valid country"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    move v2, v4

    .line 401
    goto/16 :goto_0

    .line 403
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 404
    if-eqz v2, :cond_6

    .line 405
    const-string v4, "inSameCountry, true"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_6
    const-string v4, "us"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "vi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 411
    const/4 v2, 0x1

    .line 419
    :cond_7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inSameCountry, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_8
    const-string v4, "vi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "us"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 413
    const/4 v2, 0x1

    goto :goto_1

    .line 414
    :cond_9
    const-string v4, "cn"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "mo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 416
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private final inSameCountryByMcc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 424
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inSameCountryByMcc, Not a valid MCC, mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 427
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->inSameCountry(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private final isCtSimCard()Z
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$CardType;->isOPO9Card()Z

    move-result v0

    .line 459
    .local v0, "isCTCard":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCtSimCard, cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isCTCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 460
    return v0
.end method

.method private static final isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 453
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NWS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method private static final msgToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "msgWhat"    # I

    .prologue
    .line 259
    const-string v0, "[handleMessage]-"

    .line 260
    .local v0, "msg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 262
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ICC_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    goto :goto_0

    .line 265
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_APP_READY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    goto :goto_0

    .line 268
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_RECORDS_LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    goto :goto_0

    .line 271
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_IMSI_READY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    goto :goto_0

    .line 274
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_CDMA_CARD_TYPE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final onCdmaCardTypeChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 342
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 343
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 344
    .local v1, "resultType":[I
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 345
    aget v2, v1, v4

    invoke-static {v2}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCardTypeChanged, cardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCdmaCardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 353
    .end local v1    # "resultType":[I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->checkSimCardStatus()V

    .line 354
    return-void

    .line 349
    .restart local v1    # "resultType":[I
    :cond_1
    const-string v2, "onCdmaCardTypeChanged, invalid cardType"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final onUpdateIccAvailability()V
    .locals 5

    .prologue
    .line 284
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 285
    const-string v3, "mUiccController is null."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 290
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 291
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    .line 292
    .local v2, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 293
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 299
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUiccApplcation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccRecords="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newRecords="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUiccCard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 303
    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const-string v3, "ABSENT"

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v3, v1, :cond_0

    .line 306
    :cond_5
    const-string v3, "Icc changed. Reregestering."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->unregisterUiccCardEvents()V

    .line 308
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 309
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 310
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 311
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->registerUiccCardEvents()V

    goto/16 :goto_0
.end method

.method private final registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    :cond_1
    return-void
.end method

.method private final unregisterUiccCardEvents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 335
    :cond_1
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 336
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 337
    return-void
.end method


# virtual methods
.method public clearPlmnChangedCallback()V
    .locals 6

    .prologue
    .line 174
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 175
    .local v2, "size":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlmnChanged-clear, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 176
    if-eqz v2, :cond_1

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 178
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 179
    .local v3, "type":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;

    .line 180
    .local v0, "callback":Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlmnChanged-clear, type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "callback":Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;
    .end local v3    # "type":I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 185
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 128
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->unregisterUiccCardEvents()V

    .line 129
    return-void
.end method

.method public getRoamingModeByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 3
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->inSameCountryByMcc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 111
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoamingModeByMcc, mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 112
    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method

.method public getRoamingModeByPlmn(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoamingModeByPlmn, plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 100
    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 256
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->onUpdateIccAvailability()V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->checkSimCardStatus()V

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->onCdmaCardTypeChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCdmaPrioritySupport()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isCriticalAreaSupport()Z
    .locals 2

    .prologue
    .line 122
    const-string v0, "cn"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "isReady":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isCtSimCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v0, 0x1

    .line 142
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady, mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHomeOperatorNumeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 144
    return v0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mHomeOperatorNumeric:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPlmnChanged(ILcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cdmaCallback"    # Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlmnChanged-pending, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->logd(Ljava/lang/String;)V

    .line 150
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;->mPlmnChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method
