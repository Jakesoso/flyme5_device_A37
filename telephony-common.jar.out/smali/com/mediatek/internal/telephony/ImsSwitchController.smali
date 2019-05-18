.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
    }
.end annotation


# static fields
.field static final DEFAULT_IMS_STATE:I = 0x0

.field static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final DEFAULT_MAJOR_CAPABILITY_PHONE_ID:I = 0x0

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x5

.field protected static final EVENT_RADIO_AVAILABLE_PHONE1:I = 0x2

.field protected static final EVENT_RADIO_AVAILABLE_PHONE2:I = 0x4

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE1:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE2:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.mtk.wfc.enable"

.field private static mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field protected final mLock:Ljava/lang/Object;

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 86
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    .line 319
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    const-string v1, "Initialize ImsSwitchController"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 109
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 110
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 113
    const-string v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ro.mtk_tc1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 125
    const-string v1, "ImsSwitchController"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 127
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    .line 128
    const-string v1, "ims"

    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    if-le v1, v4, :cond_1

    .line 134
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    :cond_1
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerForWfcSwitchChange()V

    .line 141
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    return-void
.end method

.method private confirmPreCheckDetachIfNeed()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPreCheckDetachIfNeed, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 316
    :cond_0
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE1"

    .line 360
    goto :goto_0

    .line 362
    :pswitch_1
    const-string v0, "RADIO_NOT_AVAILABLE_PHONE2"

    .line 363
    goto :goto_0

    .line 365
    :pswitch_2
    const-string v0, "RADIO_AVAILABLE_PHONE1"

    .line 366
    goto :goto_0

    .line 368
    :pswitch_3
    const-string v0, "RADIO_AVAILABLE_PHONE2"

    .line 369
    goto :goto_0

    .line 371
    :pswitch_4
    const-string v0, "DC_SWITCH_STATE_CHANGE"

    .line 372
    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 5
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDcStateAttaching param.getPhoneId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z

    move-result v0

    .line 228
    .local v0, "isVoLTEEnable":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v1

    .line 229
    .local v1, "isVoWiFiEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDcStateAttaching, isVoLTEEnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isVoWiFiEnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 231
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 235
    .end local v0    # "isVoLTEEnable":Z
    .end local v1    # "isVoWiFiEnable":Z
    :cond_1
    monitor-exit v3

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 4
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 241
    const-string v1, "handleDcStatePreCheckDisconnect, in volte call, suspend DcState preCheck"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 243
    monitor-exit v2

    .line 269
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDcStatePreCheckDisconnect, param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 248
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v1, :cond_2

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "state":I
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsState()I

    move-result v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ims state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 254
    if-eqz v0, :cond_1

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 256
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 268
    .end local v0    # "state":I
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    .restart local v0    # "state":I
    :cond_1
    :try_start_1
    const-string v1, "handleDcStatePreCheckDisconnect: ims is disable and confirm directly"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    goto :goto_1

    .line 262
    .end local v0    # "state":I
    :cond_2
    const-string v1, "handleDcStatePreCheckDisconnect: ImsService not ready !!!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private isVoLTEEnable()Z
    .locals 2

    .prologue
    .line 172
    const-string v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.mtk.volte.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoWiFiEnable()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "ro.mtk_wfc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.mtk.wfc.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage param.getState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param.getReason(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_1
    :goto_1
    return-void

    .line 273
    :sswitch_0
    const-string v2, "predetachcheck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "attaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 278
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        -0x1c8cb883 -> :sswitch_1
        0x523fead2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v3, 0x1

    .line 288
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInVoLteCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-ne v0, v3, :cond_1

    .line 293
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v0, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 306
    :cond_0
    :goto_0
    monitor-exit v1

    .line 307
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReceiveWifiStateChange(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z

    move-result v0

    .line 451
    .local v0, "isVoWiFiEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveWifiStateChange wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVoWiFiEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    const/4 v1, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 458
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 8

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEvent, major phoneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "ImsSwitchController"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 211
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 213
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    .line 215
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private registerForWfcSwitchChange()V
    .locals 4

    .prologue
    .line 421
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Landroid/os/Handler;)V

    .line 445
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "when_to_make_wifi_calls"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 447
    return-void
.end method

.method private switchImsCapability(ZI)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsCapability, on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    if-eqz v0, :cond_1

    .line 195
    if-eqz p1, :cond_0

    .line 196
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOnIms(I)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->turnOffIms(I)V

    goto :goto_0

    .line 201
    :cond_1
    const-string v0, "switchImsCapability: ImsService not ready !!!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterEvent()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterEvent, major phoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDcSwitchStateChange(Landroid/os/Handler;)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 383
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, "phoneId":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 415
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    const/4 v2, 0x0

    .line 388
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 393
    :pswitch_1
    const/4 v2, 0x1

    .line 394
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 399
    :pswitch_2
    const/4 v2, 0x0

    .line 400
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 405
    :pswitch_3
    const/4 v2, 0x1

    .line 406
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 411
    :pswitch_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 412
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
