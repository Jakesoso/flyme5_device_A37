.class public Lcom/mediatek/rns/RnsServiceImpl;
.super Lcom/mediatek/rns/IRnsManager$Stub;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;,
        Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;,
        Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;,
        Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST:Landroid/net/NetworkRequest;

.field private static final DISABLE_WIFI_GUARD_TIMER:I = 0x2710

.field private static final DISCONNECT_RSSI:I = -0x7f

.field private static final EVENT_APPLY_IMS_OVER_LTE_SETTINGS:I = 0x186a0

.field private static final EVENT_APPLY_WIFI_CALL_SETTINGS:I = 0xa

.field private static final EVENT_RAT_CONNECTIVITY_CHANGE:I = 0x3e8

.field private static final EVENT_REGISTER_RNS_AGENT:I = 0x1

.field private static final EVENT_WIFI_DISABLE_ACTION:I = 0x65

.field private static final EVENT_WIFI_DISABLE_EXPIRED:I = 0x66

.field private static final EVENT_WIFI_DISCONNECT:I = 0x64

.field private static final EVENT_WIFI_RSSI_UPDATE:I = 0x0

.field private static final EVENT_WIFI_STATE_CHANGED_ACTION:I = 0x2710

.field private static final MAX_REG_WAIT:I = 0x1388

.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final WEAK_SIGNAL:I = -0x74


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isEpdgImsConnected:Z

.field private isLteImsConnected:Z

.field private mAllowedRadio:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

.field private mHandoverEvent:I

.field private mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCallActive:Z

.field private mIsDefaultRequestEnabled:Z

.field private mIsEpdgConnectionChanged:Z

.field private mIsFirstRequest:Z

.field private mIsImsOverLteEnabled:Z

.field private mIsSettingChanged:Z

.field private mIsWfcEnabled:Z

.field private mIsWifiConnected:Z

.field private mIsWifiDisabling:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLastSignalRsrp:I

.field private mLtePhoneState:Landroid/telephony/ServiceState;

.field private mLteRegTime:J

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/rns/RnsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCallState:I

.field private mServiceState:I

.field private mStartTime:J

.field private mState:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;

.field private mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

.field private mWifiDisableFlag:I

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 90
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 97
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Lcom/mediatek/rns/IRnsManager$Stub;-><init>()V

    .line 58
    const-string v3, "RnsServiceImpl"

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->DEBUG:Z

    .line 70
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    .line 71
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    .line 72
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 73
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 76
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    .line 77
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 79
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 85
    const/16 v3, -0x6a

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 96
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 103
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    .line 104
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    .line 105
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 106
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    .line 109
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 110
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 111
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    .line 112
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    .line 165
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$1;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$2;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 339
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$3;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 361
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$4;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$4;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

    .line 1120
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$5;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$5;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1157
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$6;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$6;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 118
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    .line 119
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 121
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 122
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current RSSI on constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RnsServiceThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 126
    .local v2, "rnsLooper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 127
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;-><init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    .line 130
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v3, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 142
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    .line 144
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->observe(Landroid/content/Context;)V

    .line 145
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v5, 0x186a0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    .line 147
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->observe(Landroid/content/Context;)V

    .line 149
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->createDefaultPolicies()V

    .line 151
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/rns/RnsServiceImpl;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/rns/RnsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return p1
.end method

.method static synthetic access$2402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/rns/RnsServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/rns/RnsServiceImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    return p1
.end method

.method private addRadio(I)V
    .locals 2
    .param p1, "connectionType"    # I

    .prologue
    const/4 v1, -0x1

    .line 756
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 758
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 764
    :cond_0
    return-void

    .line 760
    :cond_1
    if-eq p1, v1, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDefaultPolicies()V
    .locals 5

    .prologue
    .line 315
    new-instance v1, Lcom/mediatek/rns/RnsPolicy$UserPreference;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;-><init>(I)V

    .line 317
    .local v1, "preference":Lcom/mediatek/rns/RnsPolicy$UserPreference;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    invoke-direct {v0, v1}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V

    .line 318
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v2, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    const/16 v3, -0x4b

    const/16 v4, -0x55

    invoke-direct {v2, v3, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;-><init>(II)V

    .line 322
    .local v2, "threshold":Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-direct {v0, v2}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V

    .line 323
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method private decideHandover()V
    .locals 9

    .prologue
    const/16 v8, -0x74

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 861
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    const-string v3, "RnsServiceImpl"

    const-string v4, "decideHandover - handover in progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 866
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 868
    .local v2, "profile":I
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v3, :cond_2

    .line 869
    const/4 v2, 0x0

    .line 871
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 913
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 914
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto :goto_0

    .line 873
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_3

    .line 874
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto :goto_0

    .line 876
    :cond_3
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Wifi Only can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 879
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_0

    .line 883
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-lt v4, v3, :cond_4

    .line 885
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto :goto_0

    .line 886
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v3, v8, :cond_6

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 890
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 891
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 893
    :cond_5
    const-string v3, "RnsServiceImpl"

    const-string v4, "Volte disabled will not establish IMS PDN"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 895
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 897
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_7

    .line 900
    const-string v3, "RnsServiceImpl"

    const-string v4, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 903
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 904
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 906
    :cond_8
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Wifi Preferred can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 909
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 916
    :cond_9
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Cellular Only can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 919
    .local v0, "isSkipImsPdn":Z
    if-eqz v0, :cond_a

    .line 920
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 923
    :cond_a
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 924
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 928
    .end local v0    # "isSkipImsPdn":Z
    :pswitch_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    if-nez v3, :cond_b

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    :cond_b
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_e

    .line 929
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 930
    const-string v3, "RnsServiceImpl"

    const-string v4, "Preference changed to Cell Preferred, do Roveout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 932
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    const-string v3, "RnsServiceImpl"

    const-string v4, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 937
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_d

    .line 938
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    :cond_d
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 942
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 947
    .end local v0    # "isSkipImsPdn":Z
    :cond_e
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_11

    .line 949
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 953
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred,wifi rssi drops,do Roveout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 955
    :cond_f
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    const-string v3, "RnsServiceImpl"

    const-string v4, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 960
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_10

    .line 961
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 964
    :cond_10
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 965
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 972
    .end local v0    # "isSkipImsPdn":Z
    :cond_11
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_14

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 975
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-ge v3, v8, :cond_12

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_12

    .line 979
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred rsrp low do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    .line 983
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_13

    .line 987
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred IMS over LTE off do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 990
    :cond_13
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred IMS over LTE off no wifi do fallback"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 992
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_0

    .line 998
    :cond_14
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 999
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred create IMS over LTE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_0

    .line 1002
    :cond_15
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_16

    .line 1006
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred no signal except wifi good rssi do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 1009
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1010
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred no signal except wifi available do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1533
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- dump ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1535
    .local v1, "key":Ljava/lang/String;
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1537
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- end ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 722
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 723
    .local v4, "size":I
    new-array v3, v4, [I

    .line 724
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 725
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 726
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 727
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 728
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 729
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 731
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private getNetworkType()I
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 672
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 673
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 693
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 679
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 689
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 691
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPolicyProfile()I
    .locals 5

    .prologue
    .line 1570
    const/4 v1, -0x1

    .line 1571
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1572
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1573
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1575
    :cond_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return v1
.end method

.method private handleDefaultPdnRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1293
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleDefaultPdnRequest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_5

    .line 1300
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v1

    .line 1301
    .local v1, "profile":I
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 1304
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-nez v2, :cond_3

    .line 1306
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1307
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1308
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register LTE requst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_3
    monitor-exit p0

    .line 1328
    .end local v1    # "profile":I
    :cond_4
    :goto_0
    return-void

    .line 1310
    .restart local v1    # "profile":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to register"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "profile":I
    :cond_5
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1318
    :try_start_4
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-eqz v2, :cond_6

    .line 1319
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1321
    const-string v2, "RnsServiceImpl"

    const-string v3, "Unregister LTE requst"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1324
    :catch_1
    move-exception v0

    .line 1325
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to unregister"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEventApplyWifiCallSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1257
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "when_to_make_wifi_calls"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 1260
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventApplyWifiCallSettings, mIsWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1262
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1263
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_selected_wfc_preference"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->setMode(I)V

    .line 1266
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1270
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1271
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_in_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveIn(I)V

    .line 1275
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_out_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveOut(I)V

    .line 1278
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RoveIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoveOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_1
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1282
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1284
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_4

    .line 1290
    :goto_1
    return-void

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_3
    move v1, v3

    .line 1257
    goto/16 :goto_0

    .line 1287
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 1288
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1289
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    goto :goto_1
.end method

.method private handleEventRatConnectivityChange()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 1331
    const/4 v1, -0x1

    .line 1332
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1334
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1335
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1337
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-eq v2, v4, :cond_1

    .line 1338
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1340
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1358
    :cond_2
    :goto_0
    return-void

    .line 1343
    :cond_3
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event RAT Connectivity change "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1345
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power off "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1348
    :cond_4
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v7, :cond_5

    .line 1349
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power on "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1352
    :cond_5
    if-eq v1, v4, :cond_6

    .line 1353
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1355
    :cond_6
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v6, :cond_2

    .line 1356
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    goto :goto_0
.end method

.method private handleEventWifiRssiUpdate(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1220
    const-string v1, "persist.net.test.rssi"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1221
    .local v0, "testRssi":I
    if-eqz v0, :cond_0

    .line 1222
    move p1, v0

    .line 1227
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v1, v4, :cond_1

    .line 1228
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Request after bootup, RAT Selected = LTE mIsFirstRequst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-ne v1, v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1232
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 1233
    const-string v1, "RnsServiceImpl"

    const-string v2, "Max wait time Up, allow handover to wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_1
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    .line 1242
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventWifiRssiUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_4

    .line 1254
    :cond_2
    :goto_0
    return-void

    .line 1235
    :cond_3
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block the handover to Wifi:: Waiting time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " less than MAX REG WAIT time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1247
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1250
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1251
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Rove Out Alert warning for rssi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method private handleWifiDisableAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1435
    const-string v1, "RnsServiceImpl"

    const-string v2, "handle Wifi Disable Action:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    .line 1438
    const/16 v1, -0x7f

    iput v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    .line 1440
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v0

    .line 1442
    .local v0, "profile":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1443
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v2, -0x74

    if-le v1, v2, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1446
    const-string v1, "RnsServiceImpl"

    const-string v2, "Epdg is disconnected & disable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1448
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1457
    :goto_0
    return-void

    .line 1454
    :cond_0
    const-string v1, "RnsServiceImpl"

    const-string v2, "Disable ePDG connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1456
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_0
.end method

.method private handleWifiDisabledExpired()V
    .locals 3

    .prologue
    .line 1460
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Wifi Disable Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    if-eqz v0, :cond_0

    .line 1462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1463
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1465
    :cond_0
    return-void
.end method

.method private isCellularNetworkAvailable()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 702
    const/4 v3, 0x0

    .line 703
    .local v3, "network":Z
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 704
    .local v1, "infos":[Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 706
    .local v2, "mode":I
    if-ne v2, v5, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v4

    .line 709
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 710
    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 711
    const/4 v3, 0x1

    .line 709
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    :cond_3
    const-string v6, "RnsServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCellularNetworkAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-eqz v3, :cond_0

    move v4, v5

    .line 716
    goto :goto_0
.end method

.method private isHandoverInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_0
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isImsOverLteEnabled()Z
    .locals 3

    .prologue
    .line 1494
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check is Ims over Lte Enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return v0
.end method

.method private isLteNetworkReady()Z
    .locals 4

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "isLteReady":Z
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 645
    :cond_0
    :goto_0
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteNetworkReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-nez v0, :cond_1

    .line 647
    const/16 v1, -0x74

    iput v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 649
    :cond_1
    return v0

    .line 643
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMatchRoveIn()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 767
    const/4 v1, -0x1

    .line 768
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 770
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 776
    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 777
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular only/none"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return v2

    .line 782
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 783
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 785
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 786
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_5

    .line 799
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 804
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular preferred"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 809
    const/4 v2, 0x1

    goto :goto_0

    .line 812
    :cond_7
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMatchRoveOut()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 817
    const/4 v1, -0x1

    .line 818
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 820
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 826
    :cond_0
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 827
    :cond_1
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return v2

    .line 832
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 833
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 835
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 836
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_5

    .line 845
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_4
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 852
    const/4 v2, 0x1

    goto :goto_0

    .line 855
    :cond_6
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 653
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getNetworkType()I

    move-result v0

    .line 657
    .local v0, "netType":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 658
    :cond_0
    const-string v2, "RnsServiceImpl"

    const-string v3, "isNetworkReady true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v0    # "netType":I
    :goto_0
    return v1

    .line 662
    :cond_1
    const-string v1, "RnsServiceImpl"

    const-string v2, "isNetworkReady false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 633
    monitor-enter p0

    .line 634
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeImsRadio()I
    .locals 10

    .prologue
    const/16 v9, -0x74

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 480
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 483
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 484
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 485
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v5, :cond_0

    if-eq v1, v5, :cond_0

    .line 486
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 488
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_1

    .line 489
    const/4 v1, 0x0

    .line 492
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 569
    :cond_2
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeImsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 494
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_3

    .line 495
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 499
    :cond_4
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 505
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 507
    :cond_5
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 508
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_6

    .line 512
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 513
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_7

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 515
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 516
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_8

    .line 519
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 520
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 522
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 523
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 524
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 525
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 527
    :cond_a
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 533
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 534
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 536
    :cond_b
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 538
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 539
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 541
    :cond_d
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 545
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_f

    .line 546
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 547
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 549
    :cond_e
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 551
    :cond_f
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_10

    .line 552
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 553
    :cond_10
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 554
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 555
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 557
    :cond_11
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 559
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 560
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 562
    :cond_13
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private makeMmsRadio()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 574
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 577
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 579
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 583
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 629
    :cond_1
    :goto_0
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMmsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 585
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 588
    :cond_2
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 592
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_3

    .line 594
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v3, -0x74

    if-le v2, v3, :cond_4

    .line 596
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_0

    .line 597
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 601
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 604
    :cond_6
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 606
    :cond_7
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 610
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 611
    :cond_8
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 613
    :cond_9
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 617
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 618
    :cond_a
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 619
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 620
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 622
    :cond_c
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private needToSendAlertWarning()Z
    .locals 10

    .prologue
    .line 1083
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "UserPreference"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/rns/RnsPolicy;

    .line 1084
    .local v6, "userPolicy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v6}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1085
    .local v1, "mPreference":I
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "WifiRoveThreshold"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 1086
    .local v2, "rovePolicy":Lcom/mediatek/rns/RnsPolicy;
    const/4 v0, 0x5

    .line 1087
    .local v0, "mDiff":I
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    .line 1088
    .local v3, "roveoutvalue":I
    const/4 v4, 0x0

    .line 1089
    .local v4, "sendAlertWarning":Z
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v4

    .line 1117
    .end local v4    # "sendAlertWarning":Z
    .local v5, "sendAlertWarning":I
    :goto_0
    return v5

    .line 1092
    .end local v5    # "sendAlertWarning":I
    .restart local v4    # "sendAlertWarning":Z
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1113
    :cond_1
    :goto_1
    const-string v7, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendAlertWarning = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iswificonnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IsWfcEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " roveoutvalue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LastRssi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEpdgConnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLteNetworkReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1117
    .restart local v5    # "sendAlertWarning":I
    goto :goto_0

    .line 1094
    .end local v5    # "sendAlertWarning":I
    :pswitch_0
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1096
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1101
    :pswitch_1
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_1

    .line 1103
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1104
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1105
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1106
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendRoveOutAlert()V
    .locals 2

    .prologue
    .line 1078
    const-string v0, "RnsServiceImpl"

    const-string v1, "send RoveOut Alert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->sendRoveOutAlert()V

    .line 1081
    return-void
.end method

.method private startRoveIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1023
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v0, :cond_1

    .line 1027
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-in"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_0

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_2

    .line 1037
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveIn is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    monitor-exit p0

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1040
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-nez v0, :cond_4

    .line 1041
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1043
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private startRoveOut()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1048
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveOut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v0, :cond_1

    .line 1052
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-out"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_0

    .line 1054
    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1060
    monitor-enter p0

    .line 1061
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_2

    .line 1062
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveOut is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    monitor-exit p0

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1065
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1066
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private transToReadableType(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 736
    if-ne p1, v0, :cond_0

    .line 737
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_WIFI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 751
    :goto_0
    return v0

    .line 739
    :cond_0
    if-ne p1, v1, :cond_1

    .line 740
    const-string v1, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 743
    const-string v0, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 744
    goto :goto_0

    .line 746
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 747
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_MAX"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x3

    goto :goto_0

    .line 750
    :cond_3
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private tryConnectToRadio(I)V
    .locals 4
    .param p1, "radio"    # I

    .prologue
    const/4 v3, 0x1

    .line 390
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-nez v0, :cond_2

    .line 391
    :cond_0
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->retryConnectToRadio(II)V

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 399
    if-nez p1, :cond_3

    .line 400
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0

    .line 401
    :cond_3
    if-ne p1, v3, :cond_1

    .line 402
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1500
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1502
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 1503
    .local v0, "i":I
    const-string v4, "Policies:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1505
    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1506
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  policy["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    add-int/lit8 v0, v0, 0x1

    .line 1508
    goto :goto_0

    .line 1509
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "(none(-1)|wifi_only(0)|wifi_preferred(1)|cellular_only(2)|cellular_preferred(3))"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1513
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1514
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandoverInProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsOverLteEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCellularNetworkAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1526
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for IMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for MMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    const-string v4, "none(-1)|wifi(0)|moible(1)|all(2)"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method public getAllowedRadioList(I)I
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 409
    packed-switch p1, :pswitch_data_0

    .line 413
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v0

    :goto_0
    return v0

    .line 411
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v0

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public getRnsState()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 12
    .param p1, "failedNetType"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 419
    const/4 v2, -0x1

    .line 420
    .local v2, "profile":I
    const/4 v0, -0x1

    .line 421
    .local v0, "netType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 422
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v10, :cond_4

    if-ne p1, v10, :cond_4

    .line 429
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveIn failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 440
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 469
    :cond_3
    :goto_1
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTryAnotherRadioType:New network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Old network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v0

    .line 431
    :cond_4
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v11, :cond_1

    if-nez p1, :cond_1

    .line 433
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveOut failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 443
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_WIFI_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    :cond_5
    if-ne v2, v10, :cond_3

    .line 445
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    const/4 v0, 0x0

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 455
    :pswitch_1
    if-nez v2, :cond_6

    .line 456
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_CELLULAR_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 457
    :cond_6
    if-ne v2, v11, :cond_3

    .line 458
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 461
    const/4 v0, 0x1

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_1

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleEventImsOverLteSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1407
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventImsOverLteSettings "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v1, -0x1

    .line 1409
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1411
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1412
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1414
    :cond_0
    monitor-enter p0

    .line 1415
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ims_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1417
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 1421
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsImsOverLteEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1429
    :cond_1
    :goto_1
    return-void

    .line 1419
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    goto :goto_0

    .line 1421
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1426
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1427
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_1
.end method

.method public handleEventWifiDisconnect()V
    .locals 4

    .prologue
    .line 1361
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event Wifi Disconnect "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/4 v1, -0x1

    .line 1363
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1365
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1366
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1368
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1369
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1371
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1377
    :cond_2
    :goto_0
    return-void

    .line 1374
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_2

    .line 1375
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_0
.end method

.method public handleEventWifiStateChangedAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1382
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventWifiStateChangedAction "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v1, -0x1

    .line 1384
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1386
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1387
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1389
    :cond_0
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1390
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1392
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_3

    .line 1402
    :cond_2
    :goto_0
    return-void

    .line 1395
    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_4

    .line 1396
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1398
    :cond_4
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-nez v2, :cond_2

    .line 1399
    const-string v2, "RnsServiceImpl"

    const-string v3, "send Rove Out Alert warning "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_0
.end method

.method public isNeedWifiConnected(I)Z
    .locals 6
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1551
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedWifiConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v2, :cond_0

    .line 1555
    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1556
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    .line 1557
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v4, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1559
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v2, 0x66

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1565
    :goto_0
    return v0

    .line 1563
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    move v0, v1

    .line 1565
    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 163
    return-void
.end method
