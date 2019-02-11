.class public Lcom/mediatek/internal/telephony/ims/ImsService;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_CALL_RING:I = 0x9

.field protected static final EVENT_HANDOVER_DONE_INDICATION:I = 0xe

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field protected static final EVENT_SIP_CODE_INDICATION:I = 0xd

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x4

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final IMS_VOICE_OVER_WIFI:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final VDBG:Z = false

.field private static final WFC_REFRESH_REG_TIMER:I = 0xbb8

.field private static sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

.field private static sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# instance fields
.field private mActivePhoneId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mImsExtInfo:I

.field private mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

.field private mImsRegInfo:I

.field private mImsRegistry:Z

.field private mImsState:I

.field private mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

.field private mPendingMT:Lcom/android/ims/internal/IImsCallSession;

.field private mServiceId:I

.field mWfcRegErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 103
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 284
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 96
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 97
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 99
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 106
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 107
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    .line 108
    iput v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    .line 109
    iput v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mServiceId:I

    .line 110
    iput v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 111
    iput v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 113
    iput v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 156
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    .line 162
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    .line 163
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ims/ImsService$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v1, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 286
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 288
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mImsRILAdapter= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    .line 291
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 293
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 297
    :cond_0
    const-string v1, "ims"

    invoke-static {v1, p0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 299
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ACTION_IMS_SIMULATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "persist.mtk_dynamic_ims_switch"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    :cond_1
    const-string v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsService;->registerForWfcPreferenceChange(Landroid/os/Handler;)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_selected_wfc_preference"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    .line 329
    new-instance v1, Lcom/mediatek/ims/ImsNotificationController;

    const-wide/16 v2, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/mediatek/ims/ImsNotificationController;-><init>(Landroid/content/Context;J)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    .line 330
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticontroller created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.intent.action.NOTIFY_CONNECTION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ims/ImsService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsService;->translateRegErrors(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 91
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ims/ImsService;->isTestSim(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V

    return-void
.end method

.method private static isTestSim(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "isTestSim":Z
    packed-switch p0, :pswitch_data_0

    .line 984
    :goto_0
    return v0

    .line 972
    :pswitch_0
    const-string v1, "1"

    const-string v2, "gsm.sim.ril.testsim"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 973
    goto :goto_0

    .line 975
    :pswitch_1
    const-string v1, "1"

    const-string v2, "gsm.sim.ril.testsim.2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 976
    goto :goto_0

    .line 978
    :pswitch_2
    const-string v1, "1"

    const-string v2, "gsm.sim.ril.testsim.3"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 979
    goto :goto_0

    .line 981
    :pswitch_3
    const-string v1, "1"

    const-string v2, "gsm.sim.ril.testsim.4"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyRegistrationCapabilityChange(I)V
    .locals 9
    .param p1, "imsExtInfo"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 693
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v3, :cond_0

    .line 741
    :goto_0
    return-void

    .line 697
    :cond_0
    new-array v1, v4, [I

    .line 698
    .local v1, "enabledFeatures":[I
    new-array v0, v4, [I

    .line 700
    .local v0, "disabledFeatures":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 701
    aput v8, v1, v2

    .line 702
    aput v8, v0, v2

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 705
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->getRatType()I

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2

    and-int/lit8 v3, p1, 0x1

    if-ne v3, v5, :cond_2

    .line 707
    aput v6, v1, v6

    .line 714
    :goto_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 715
    aput v5, v1, v5

    .line 722
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->getRatType()I

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_4

    .line 723
    aput v7, v1, v7

    .line 725
    const-string v3, "ImsService"

    const-string v4, "[WFC]Parul IMS_VOICE_OVER_WIFI"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_4
    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 736
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v1, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v3

    goto :goto_0

    .line 710
    :cond_2
    aput v6, v0, v6

    goto :goto_2

    .line 718
    :cond_3
    aput v5, v0, v5

    goto :goto_3

    .line 727
    :cond_4
    aput v7, v0, v7

    goto :goto_4
.end method

.method private notifyRegistrationStateChange(I)V
    .locals 4
    .param p1, "imsRegInfo"    # I

    .prologue
    .line 651
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v1, :cond_0

    .line 685
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS: notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-nez p1, :cond_1

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V

    .line 663
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    goto :goto_0

    .line 670
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected()V

    .line 672
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    if-nez v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 676
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getDisconnectCause(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    .line 679
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnectedWithCause(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 681
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private registerForWfcPreferenceChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 747
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsService$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService$2;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/Handler;)V

    .line 771
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_selected_wfc_preference"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 774
    return-void
.end method

.method private sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 590
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 591
    .local v0, "callId":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 592
    .local v1, "dialString":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v5, v6

    .line 593
    .local v3, "seqNum":Ljava/lang/String;
    const/4 v4, 0x1

    .line 595
    .local v4, "serviceId":I
    const-string v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS: sendIncomingCallIndication() call_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dialString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seqNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android:imsCallID"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v5, "android:imsDialString"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v5, "android:imsSeqNum"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v5, "android:imsServiceId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method private sendIncomingCallIntent()V
    .locals 8

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "callId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 614
    .local v1, "dialString":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-eqz v5, :cond_0

    .line 616
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    const-string v6, "oi"

    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    const/4 v4, 0x1

    .line 625
    .local v4, "serviceId":I
    const-string v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dialString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android:imsCallID"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v5, "android:imsDialString"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v5, "android:imsServiceId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceId":I
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ImsService"

    const-string v6, "Can\'t get call information from PendingMT !!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v5, "ImsService"

    const-string v6, "PendingMT is null!!! Something wrong!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private translateRegErrors(II)I
    .locals 1
    .param p1, "methodType"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/16 v0, 0x57f

    .line 255
    sparse-switch p1, :sswitch_data_0

    .line 279
    :goto_0
    return v0

    .line 257
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    const/16 v0, 0x641

    goto :goto_0

    .line 261
    :pswitch_1
    const/16 v0, 0x642

    goto :goto_0

    .line 263
    :pswitch_2
    const/16 v0, 0x643

    goto :goto_0

    .line 265
    :pswitch_3
    const/16 v0, 0x644

    goto :goto_0

    .line 267
    :pswitch_4
    const/16 v0, 0x7d6

    goto :goto_0

    .line 272
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 274
    :pswitch_5
    const/16 v0, 0x6a5

    goto :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 257
    :pswitch_data_0
    .packed-switch 0x9d6d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 272
    :pswitch_data_1
    .packed-switch 0x9d6f
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public close(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 367
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 424
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 430
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    return-object v0
.end method

.method public disableImsAdapter(Z)V
    .locals 1
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 345
    return-void
.end method

.method public enableImsAdapter()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter()V

    .line 340
    return-void
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 470
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to get config interface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 473
    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get config interface on main capability phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    const/4 v1, 0x0

    .line 477
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfigInterface phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 479
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    move-object v1, v0

    .line 485
    :goto_0
    monitor-exit v4

    .line 486
    return-object v1

    .line 482
    :cond_1
    new-instance v2, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v2, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_0

    .line 485
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_1
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 495
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;-><init>()V

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRILAdapter()Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    if-nez v0, :cond_0

    .line 639
    const-string v0, "ImsService"

    const-string v1, "IMS: getImsRILAdapter, mImsRILAdapter is null "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    return-object v0
.end method

.method public getImsRegInfo(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 545
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq p1, v1, :cond_1

    .line 546
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS: getImsRegInfo() phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    if-nez v1, :cond_0

    .line 552
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImsServiceState()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method public getImsState()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 451
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 443
    .local v0, "pendingMT":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v2

    :cond_1
    move-object v0, v1

    .line 451
    goto :goto_0
.end method

.method public getRegistrationStatus()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 965
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsNotificationController;->getRegistrationStatus()I

    move-result v0

    goto :goto_0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 459
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .line 462
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-object v0
.end method

.method public hangupAllCall()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hangupAllCall(Landroid/os/Message;)V

    .line 582
    return-void
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v2, 0x1

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "ImsService"

    const-string v1, "IMS: it did not close IMS servide before open() !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    invoke-virtual {p0, v2, p4}, Lcom/mediatek/internal/telephony/ims/ImsService;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 360
    return v2
.end method

.method public setCallIndication(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "seqNum"    # I
    .param p3, "isAllow"    # Z

    .prologue
    .line 512
    if-eqz p3, :cond_1

    .line 513
    new-instance v2, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v2}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 514
    .local v2, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    .line 528
    .end local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :goto_1
    return-void

    .line 517
    .restart local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v7

    .line 519
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ImsService"

    const-string v1, "setCallIndication: can\'t close pending MT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    .end local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    goto :goto_1
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 413
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 414
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 415
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V

    .line 417
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    if-nez v0, :cond_1

    .line 418
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    .line 420
    :cond_1
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 503
    return-void
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 399
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffIms, mActivePhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 402
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffIms, MainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq v0, p1, :cond_0

    .line 405
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 408
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 409
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 381
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnIms, mActivePhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 384
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnIms, MainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq v0, p1, :cond_0

    .line 387
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 391
    return-void
.end method
