.class Lcom/android/server/wifi/WifiNetworkAvailable;
.super Ljava/lang/Object;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNetworkAvailable$5;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;,
        Lcom/android/server/wifi/WifiNetworkAvailable$H;
    }
.end annotation


# static fields
.field private static final CMD_RSSI_FETCH:I = 0xbbb

.field private static final DECT_TIME:I = 0x2

.field private static final EVENT_ADD_UPDATE_NETWORK:I = 0x7d0

.field private static final EVENT_AUTO_CONNECT_AP:I = 0x7d1

.field private static final EVENT_DETECT_RSSI:I = 0x7d4

.field private static final EVENT_DETECT_SCAN_RESULT:I = 0x7d5

.field private static final EVENT_NETWORK_NOT_AVAILABLE:I = 0x7d2

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0xbb8

.field private static final EVENT_REOVE_UPDATE_NETWORK:I = 0x7d3

.field private static final EVENT_SCREEN_OFF:I = 0xbba

.field private static final EVENT_SCREEN_ON:I = 0xbb9

.field private static final INVALID_RSSI:I = -0x7f

.field private static final LOSS_PKT:I = 0x2

.field private static final LOW_RSSI:I = -0x4e

.field private static final SCAN_RESULT_AGE:J = 0x3a98L

.field private static final SECURITY_EAP:Ljava/lang/String; = "WPA_EAP"

.field private static final SECURITY_NONE:Ljava/lang/String; = "NONE"

.field private static final SECURITY_PSK:Ljava/lang/String; = "WPA_PSK"

.field private static final SECURITY_WAPI_CERT:Ljava/lang/String; = "WAPI_CERT"

.field private static final SECURITY_WAPI_PSK:Ljava/lang/String; = "WAPI_PSK"

.field private static final SECURITY_WEP:Ljava/lang/String; = "WEP"

.field private static final SECURITY_WPA2_PSK:Ljava/lang/String; = "WPA2_PSK"

.field private static final SWITCH_CONNECT_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiNetworkAvailable"

.field private static final TYPE_AUTO_AVAILABLE_RSSI:I = 0x1

.field private static final TYPE_AUTO_UNAVAILABLE_CAPTIVE:I = 0x0

.field private static final TYPE_AUTO_UNAVAILABLE_SCAN:I = 0x2

.field private static final WIFI_NETWORK_AVAILABLE:Ljava/lang/String; = "/data/misc/wifi/network_available"


# instance fields
.field private DBG:Z

.field private captivePortal:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoSwitch:Z

.field private mAvailableAP:Ljava/lang/CharSequence;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentInfo:Landroid/net/wifi/WifiInfo;

.field private mDetectTime:I

.field private mGoodAvailableAP:Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mInitAutoConnect:Z

.field private mIsSoftAP:Z

.field private mLastSSID:Ljava/lang/String;

.field private mLastScanTime:J

.field private mLossPktDetect:Z

.field private mLossPktTime:I

.field private mManualConnect:Z

.field private mNetworkAvailables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

.field private mNewBssid:Ljava/lang/String;

.field private mNewSsid:Ljava/lang/String;

.field private mOldBssid:Ljava/lang/String;

.field private mOldSsid:Ljava/lang/String;

.field private mSortWifiConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSupplicantTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mUnavailableSsid:Ljava/lang/String;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private networkInfo:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "wnt"    # Lcom/android/server/wifi/WifiNative;
    .param p5, "wst"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$H;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiNetworkAvailable$H;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;Lcom/android/server/wifi/WifiNetworkAvailable$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLastScanTime:J

    .line 109
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z

    .line 111
    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLastSSID:Ljava/lang/String;

    .line 112
    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    .line 113
    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    .line 114
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z

    .line 115
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    .line 116
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldSsid:Ljava/lang/String;

    .line 117
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    .line 118
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    .line 119
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    .line 122
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z

    .line 124
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAutoSwitch:Z

    .line 125
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mInitAutoConnect:Z

    .line 128
    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 141
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 142
    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 143
    iput-object p5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSupplicantTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 144
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/content/Context;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->start()V

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiConfigStore;->setWifiNetworkAvailable(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    const v1, 0x10406f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAvailableAP:Ljava/lang/CharSequence;

    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    const v1, 0x10406f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mGoodAvailableAP:Ljava/lang/CharSequence;

    .line 149
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNetworkAvailable;->setupNetworkReceiver()V

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/LinkProperties;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->isSoftAp(Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNetworkAvailable;->getWifiConfig(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiConfiguration;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkAvailable;->updateNetworkAvailables(Landroid/net/wifi/WifiConfiguration;IZ)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLastSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkAvailable;->autoConnectAP(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiNetworkAvailable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->detectRssi(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiNetworkAvailable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiNetworkAvailable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->captivePortal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNetworkAvailable;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkLinkMonitor:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mInitAutoConnect:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNetworkAvailable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z

    return p1
.end method

.method private autoConnectAP(IILjava/lang/String;)V
    .locals 23
    .param p1, "autoType"    # I
    .param p2, "rssi"    # I
    .param p3, "currentssid"    # Ljava/lang/String;

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 535
    .local v12, "mNetworkConfigLen":I
    const/16 v5, -0x64

    .line 536
    .local v5, "bestRssi":I
    const/4 v8, -0x1

    .line 537
    .local v8, "connectNetid":I
    const/4 v9, -0x1

    .line 538
    .local v9, "currentNetid":I
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    .line 539
    .local v4, "available":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v15

    .line 540
    .local v15, "scanResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAutoSwitch:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 541
    const-string v19, "mAutoSwitch is off!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 643
    :cond_0
    :goto_1
    return-void

    .line 538
    .end local v4    # "available":Z
    .end local v15    # "scanResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 544
    .restart local v4    # "available":Z
    .restart local v15    # "scanResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    if-eqz v15, :cond_0

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    .line 551
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "autoConnectAP: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v4, :cond_7

    const-string v19, "switch GOOD AP"

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",currentNetid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 557
    if-eqz v4, :cond_9

    .line 558
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 559
    .local v13, "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    if-eqz p3, :cond_5

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mNetid:I
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)I

    move-result v19

    move/from16 v0, v19

    if-eq v9, v0, :cond_4

    .line 561
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 562
    .local v14, "result":Landroid/net/wifi/ScanResult;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 563
    .local v16, "ssid":Ljava/lang/String;
    iget-object v6, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 564
    .local v6, "bssid":Ljava/lang/String;
    iget-object v7, v14, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 566
    .local v7, "capabilitie":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/WifiNetworkAvailable;->matchKeymgmt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 567
    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v5, :cond_6

    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    sub-int v19, v19, p2

    const/16 v21, 0x5

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 568
    invoke-static {v14}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "aConfigKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 570
    .local v2, "aConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "a compare config key:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ",aConfig: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v2, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ",status = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ",id= "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 572
    if-eqz v2, :cond_6

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 575
    iget v5, v14, Landroid/net/wifi/ScanResult;->level:I

    .line 576
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 551
    .end local v2    # "aConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "aConfigKey":Ljava/lang/String;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "capabilitie":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    .end local v16    # "ssid":Ljava/lang/String;
    :cond_7
    const-string v19, "switch VALID AP"

    goto/16 :goto_2

    .line 570
    .restart local v2    # "aConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "aConfigKey":Ljava/lang/String;
    .restart local v6    # "bssid":Ljava/lang/String;
    .restart local v7    # "capabilitie":Ljava/lang/String;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .restart local v14    # "result":Landroid/net/wifi/ScanResult;
    .restart local v16    # "ssid":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v19, "null"

    goto :goto_4

    .line 583
    .end local v2    # "aConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "aConfigKey":Ljava/lang/String;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "capabilitie":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    .end local v16    # "ssid":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 584
    .restart local v13    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 585
    .restart local v14    # "result":Landroid/net/wifi/ScanResult;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "\""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 586
    .restart local v16    # "ssid":Ljava/lang/String;
    iget-object v6, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 587
    .restart local v6    # "bssid":Ljava/lang/String;
    iget-object v7, v14, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 588
    .restart local v7    # "capabilitie":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/WifiNetworkAvailable;->matchKeymgmt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 589
    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v5, :cond_b

    .line 590
    invoke-static {v14}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v18

    .line 591
    .local v18, "uConfigKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    .line 592
    .local v17, "uConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "u compare config key:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ",uConfig: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v17, :cond_c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ",status = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ",id= "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 594
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 597
    iget v5, v14, Landroid/net/wifi/ScanResult;->level:I

    .line 598
    move-object/from16 v0, v17

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto/16 :goto_5

    .line 592
    :cond_c
    const-string v19, "null"

    goto :goto_6

    .line 604
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "capabilitie":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    .end local v16    # "ssid":Ljava/lang/String;
    .end local v17    # "uConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "uConfigKey":Ljava/lang/String;
    :cond_d
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_e

    if-nez p1, :cond_e

    .line 605
    const-string v19, "ALERT! this is a ap cannot acess internet"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->showDialog(Ljava/lang/String;)V

    .line 609
    :cond_e
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mInitAutoConnect:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 630
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable;->mInitAutoConnect:Z

    .line 632
    :cond_f
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    if-eq v9, v8, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 634
    const-string v19, "manual connect, do not auto connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 609
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 637
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "auto conntect id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSupplicantTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    move-object/from16 v19, v0

    const v20, 0x2012c

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto/16 :goto_1
.end method

.method private detectInEss(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "rssi"    # I

    .prologue
    .line 354
    const/4 v10, 0x0

    .line 355
    .local v10, "willRoam":Z
    const-string v4, " "

    .line 356
    .local v4, "key":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v8

    .line 357
    .local v8, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_0

    if-nez v8, :cond_1

    :cond_0
    move v11, v10

    .line 380
    .end local v10    # "willRoam":Z
    .local v11, "willRoam":I
    :goto_0
    return v11

    .line 358
    .end local v11    # "willRoam":I
    .restart local v10    # "willRoam":Z
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 359
    .local v6, "result":Landroid/net/wifi/ScanResult;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "scanSsid":Ljava/lang/String;
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 361
    .local v7, "scanBssid":Ljava/lang/String;
    iget v12, v6, Landroid/net/wifi/ScanResult;->level:I

    sub-int v1, v12, p4

    .line 362
    .local v1, "delta":I
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x5

    if-le v1, v12, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 363
    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 364
    iget-object v13, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    monitor-enter v13

    .line 365
    :try_start_0
    iget-object v12, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 366
    .local v5, "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mNetid:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_3

    .line 367
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .end local v5    # "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :cond_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {p0, v4, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->matchKeymgmt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 374
    const/4 v10, 0x1

    .line 379
    .end local v1    # "delta":I
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    .end local v7    # "scanBssid":Ljava/lang/String;
    .end local v9    # "scanSsid":Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "detectInEss: willRoam "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    move v11, v10

    .line 380
    .restart local v11    # "willRoam":I
    goto/16 :goto_0

    .line 371
    .end local v11    # "willRoam":I
    .restart local v1    # "delta":I
    .restart local v6    # "result":Landroid/net/wifi/ScanResult;
    .restart local v7    # "scanBssid":Ljava/lang/String;
    .restart local v9    # "scanSsid":Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method private detectRssi(Z)V
    .locals 13
    .param p1, "hasLossPkt"    # Z

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0x7d1

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 302
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 304
    .local v4, "now_ms":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 306
    .local v0, "currentId":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 307
    .local v1, "currentRssi":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    .line 308
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    .line 309
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->detectSSID(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detectRssi: currentRssi= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",mNewSsid= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mNewBssid= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",mOldSsid= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldSsid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mOldBssid= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldSsid:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldSsid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 316
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldSsid:Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    .line 318
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    .line 319
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    .line 320
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_2
    :goto_1
    const/16 v3, -0x4e

    if-ge v1, v3, :cond_7

    const/16 v3, -0x7f

    if-le v1, v3, :cond_7

    .line 330
    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    .line 335
    :goto_2
    if-eqz p1, :cond_8

    .line 336
    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    .line 340
    :goto_3
    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    if-gt v3, v10, :cond_3

    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    if-le v3, v10, :cond_4

    :cond_3
    iget-wide v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLastScanTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3a98

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 342
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v6, 0x0

    invoke-virtual {v3, v10, v6}, Lcom/android/server/wifi/WifiNative;->scan(ILjava/lang/String;)Z

    .line 343
    :cond_4
    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    if-gt v3, v12, :cond_5

    iget v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    if-le v3, v12, :cond_0

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->detectInEss(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    .line 345
    .local v2, "mayRoam":Z
    if-eqz v2, :cond_9

    .line 346
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    invoke-virtual {v6, v11, v10, v1, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 321
    .end local v2    # "mayRoam":Z
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewBssid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mOldBssid:Ljava/lang/String;

    .line 325
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    .line 326
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    .line 327
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 332
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mDetectTime:I

    goto :goto_2

    .line 338
    :cond_8
    iput v7, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktTime:I

    goto :goto_3

    .line 348
    .restart local v2    # "mayRoam":Z
    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNewSsid:Ljava/lang/String;

    invoke-direct {p0, v10, v1, v3}, Lcom/android/server/wifi/WifiNetworkAvailable;->autoConnectAP(IILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private detectSSID(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "contain":Z
    if-nez p1, :cond_0

    move v1, v0

    .line 404
    .end local v0    # "contain":Z
    .local v1, "contain":I
    :goto_0
    return v1

    .line 386
    .end local v1    # "contain":I
    .restart local v0    # "contain":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 387
    .local v2, "detectconfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_1

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get [id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] config is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    move v1, v0

    .line 389
    .restart local v1    # "contain":I
    goto :goto_0

    .line 391
    .end local v1    # "contain":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    monitor-enter v6

    .line 392
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 393
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 394
    .local v4, "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_2

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->parseKeymgmt(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 397
    const/4 v0, 0x1

    .line 402
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detectSSID: return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 404
    .restart local v1    # "contain":I
    goto/16 :goto_0

    .line 402
    .end local v1    # "contain":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getConfigKey(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "nc"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 752
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 778
    :goto_0
    return-object v0

    .line 753
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "key":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 757
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WPA_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    goto :goto_0

    .line 754
    :sswitch_0
    const-string v3, "WPA_PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "WPA2_PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "WPA_EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "IEEE8021X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "WAPI_PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "WAPI_CERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    .line 761
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WPA_EAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    goto/16 :goto_0

    .line 764
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WAPI_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    goto/16 :goto_0

    .line 767
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WAPI_CERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    goto/16 :goto_0

    .line 770
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    goto/16 :goto_0

    .line 773
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    goto/16 :goto_0

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        -0x797df903 -> :sswitch_2
        -0x797dcd8f -> :sswitch_0
        -0x32b35d60 -> :sswitch_5
        0x14f42 -> :sswitch_6
        0x24a738 -> :sswitch_7
        0x22cd2c5 -> :sswitch_3
        0x4750c193 -> :sswitch_1
        0x48b016ac -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getWifiConfig(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 429
    :cond_1
    :goto_0
    return-object v2

    .line 409
    :cond_2
    const/4 v2, 0x0

    .line 410
    .local v2, "currentconfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v6

    .line 411
    .local v6, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 412
    .local v4, "result":Landroid/net/wifi/ScanResult;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "scanSsid":Ljava/lang/String;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 414
    .local v5, "scanBssid":Ljava/lang/String;
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 415
    .local v0, "capabilitie":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 416
    invoke-static {v4}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "configKey":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWifiConfig configKey= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 418
    iget-object v8, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 423
    .end local v0    # "capabilitie":Ljava/lang/String;
    .end local v1    # "configKey":Ljava/lang/String;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanBssid":Ljava/lang/String;
    .end local v7    # "scanSsid":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWifiConfig currentconfig: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",SSID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",BSSID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 426
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v9, "any"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 427
    :cond_5
    iput-object p2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private inStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 525
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 526
    .local v1, "buf":[B
    const/4 v2, -0x1

    .line 527
    .local v2, "len":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 528
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private isSoftAp(Landroid/net/LinkProperties;)Z
    .locals 7
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v5, 0x0

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "isSoft":Z
    if-nez p1, :cond_0

    .line 498
    const-string v6, "LinkProperties is null, return"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 520
    :goto_0
    return v5

    .line 501
    :cond_0
    move-object v3, p1

    .line 503
    .local v3, "mLp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    .line 504
    .local v2, "mCurrentGateway":Ljava/net/InetAddress;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 505
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 506
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_1

    .line 509
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 510
    const-string v6, "InetAddress getGateway is null, return"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentGateway : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/192.168.43.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/172.20.10.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 516
    :cond_4
    const/4 v1, 0x1

    :goto_2
    move v5, v1

    .line 520
    goto :goto_0

    .line 518
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiNetworkAvailable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1146
    const-string v0, "WifiNetworkAvailable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void
.end method

.method private matchKeymgmt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "validKey"    # Ljava/lang/String;
    .param p2, "scanKey"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "match":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 724
    .end local v0    # "match":Z
    .local v1, "match":I
    :goto_0
    return v1

    .line 684
    .end local v1    # "match":I
    .restart local v0    # "match":Z
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 721
    const-string v2, "matchKeymgmt default"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_2
    move v1, v0

    .line 724
    .restart local v1    # "match":I
    goto :goto_0

    .line 684
    .end local v1    # "match":I
    :sswitch_0
    const-string v3, "WPA_PSK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "WPA2_PSK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "WPA_EAP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "IEEE8021X"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "WAPI_PSK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "WAPI_CERT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "WEP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "NONE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    .line 687
    :pswitch_0
    const-string v2, "WPA-PSK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "WPA2-PSK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 691
    :pswitch_1
    const-string v2, "EAP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 692
    const/4 v0, 0x1

    goto :goto_2

    .line 695
    :pswitch_2
    const-string v2, "IEEE8021X"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 696
    const/4 v0, 0x1

    goto :goto_2

    .line 699
    :pswitch_3
    const-string v2, "WAPI-KEY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "WAPI-PSK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 701
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 704
    :pswitch_4
    const-string v2, "WAPI-CERT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 708
    :pswitch_5
    const-string v2, "WEP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 709
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 712
    :pswitch_6
    const-string v2, "PSK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "EAP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WEP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WAPI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "IEEE8021X"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 717
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        -0x797df903 -> :sswitch_2
        -0x797dcd8f -> :sswitch_0
        -0x32b35d60 -> :sswitch_5
        0x14f42 -> :sswitch_6
        0x24a738 -> :sswitch_7
        0x22cd2c5 -> :sswitch_3
        0x4750c193 -> :sswitch_1
        0x48b016ac -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseKeymgmt(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 728
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "WPA_PSK"

    .line 748
    :goto_0
    return-object v0

    .line 731
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    :cond_1
    const-string v0, "WPA_EAP"

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    const-string v0, "WAPI_PSK"

    goto :goto_0

    .line 738
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    const-string v0, "WAPI_CERT"

    goto :goto_0

    .line 741
    :cond_4
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 743
    const-string v0, "WEP"

    goto :goto_0

    .line 745
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 746
    const-string v0, "WPA2_PSK"

    goto :goto_0

    .line 748
    :cond_6
    const-string v0, "NONE"

    goto :goto_0
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "netWorkFilter":Landroid/content/IntentFilter;
    const-string v1, "EVENT_NETWORK_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "EVENT_NETWORK_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/android/server/wifi/WifiNetworkAvailable$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$1;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog mUnavailableSsid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is same"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 652
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mUnavailableSsid:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 671
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/server/wifi/WifiNetworkAvailable$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$4;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 678
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 656
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;

    const v3, 0x10406f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406f4

    new-instance v2, Lcom/android/server/wifi/WifiNetworkAvailable$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$3;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private updateAndWriteConfig()V
    .locals 10

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "config":Ljava/io/FileWriter;
    const/4 v6, 0x0

    .line 785
    .local v6, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/network_available"

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    .end local v1    # "config":Ljava/io/FileWriter;
    .local v2, "config":Ljava/io/FileWriter;
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 787
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .local v7, "out":Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 788
    .local v5, "na":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mNetid:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "buf":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 793
    .end local v0    # "buf":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "na":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .line 794
    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 799
    if-eqz v6, :cond_0

    .line 801
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 805
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 807
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 812
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 792
    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 799
    if-eqz v7, :cond_3

    .line 801
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 805
    :cond_3
    :goto_4
    if-eqz v2, :cond_7

    .line 807
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .line 809
    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_3

    .line 808
    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .line 809
    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_3

    .line 795
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v3

    .line 796
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 799
    if-eqz v6, :cond_4

    .line 801
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 805
    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    .line 807
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    .line 808
    :catch_3
    move-exception v8

    goto :goto_3

    .line 799
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v6, :cond_5

    .line 801
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 805
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 807
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 809
    :cond_6
    :goto_9
    throw v8

    .line 802
    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v2    # "config":Ljava/io/FileWriter;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v8

    goto :goto_2

    .line 808
    :catch_6
    move-exception v8

    goto :goto_3

    .line 802
    .local v3, "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_6

    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_8

    .line 808
    :catch_9
    move-exception v9

    goto :goto_9

    .line 799
    .end local v1    # "config":Ljava/io/FileWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_7

    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_7

    .line 795
    .end local v1    # "config":Ljava/io/FileWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_5

    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :catch_b
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_5

    .line 793
    :catch_c
    move-exception v3

    goto/16 :goto_1

    .end local v1    # "config":Ljava/io/FileWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    :catch_d
    move-exception v3

    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto/16 :goto_1

    .end local v1    # "config":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "config":Ljava/io/FileWriter;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :cond_7
    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "config":Ljava/io/FileWriter;
    .restart local v1    # "config":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method private updateNetworkAvailables(Landroid/net/wifi/WifiConfiguration;IZ)V
    .locals 17
    .param p1, "wfg"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi"    # I
    .param p3, "add"    # Z

    .prologue
    .line 433
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v14, "updateNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;>;"
    const/4 v13, 0x0

    .line 435
    .local v13, "remove":Z
    const-string v9, "null"

    .line 436
    .local v9, "key_mgmt":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 437
    const-string v1, "wfg is null, do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 440
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 441
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wfg SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    monitor-enter v15

    .line 445
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 446
    .local v11, "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->parseKeymgmt(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 470
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 450
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 451
    .local v10, "mUpdateNetworks":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    const/4 v13, 0x1

    .line 453
    goto :goto_2

    .line 454
    .end local v10    # "mUpdateNetworks":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove networks= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add networks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 456
    if-nez v13, :cond_6

    if-nez p3, :cond_6

    monitor-exit v15

    goto/16 :goto_0

    .line 457
    :cond_6
    if-eqz p3, :cond_7

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 459
    .local v12, "networks":Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_8

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    iget v3, v12, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, v12, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiNetworkAvailable;->parseKeymgmt(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v12    # "networks":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiNetworkAvailable;->updateAndWriteConfig()V

    .line 470
    monitor-exit v15

    goto/16 :goto_0

    .line 466
    .restart local v12    # "networks":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const-string v1, "getConfig is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private updateSortConfigByRssi()V
    .locals 17

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 265
    .local v4, "currentScan":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v7, "mSortValidConfig":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    monitor-enter v15

    .line 268
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 269
    .local v9, "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    sget v10, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 270
    .local v10, "referRssi":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 271
    .local v11, "result":Landroid/net/wifi/ScanResult;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "ssid":Ljava/lang/String;
    iget-object v1, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 273
    .local v1, "bssid":Ljava/lang/String;
    iget-object v2, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 274
    .local v2, "capabilitie":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wifi/WifiNetworkAvailable;->matchKeymgmt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 275
    iget v14, v11, Landroid/net/wifi/ScanResult;->level:I

    if-le v14, v10, :cond_1

    iget v10, v11, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_1

    .line 278
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "capabilitie":Ljava/lang/String;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_2
    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mRssi:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;I)I

    .line 279
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v10, v14, :cond_0

    .line 280
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "nc":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .end local v10    # "referRssi":I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    :cond_3
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    new-instance v14, Lcom/android/server/wifi/WifiNetworkAvailable$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/wifi/WifiNetworkAvailable$2;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;)V

    invoke-static {v7, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    monitor-enter v15

    .line 289
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 290
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 291
    .local v8, "ms1":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkAvailable;->getConfigKey(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v14, v3}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 293
    .local v13, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_4

    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSortNetwokConfByRssi temp = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    .end local v3    # "configKey":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "ms1":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .end local v13    # "temp":Landroid/net/wifi/WifiConfiguration;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    return-void
.end method


# virtual methods
.method public detectScanResult(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNetworkAvailable;->updateSortConfigByRssi()V

    .line 230
    iput-wide p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mLastScanTime:J

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    .line 232
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "currentSsid":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 235
    :cond_0
    const-string v1, "wifi is not enable."

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 232
    .end local v0    # "currentSsid":Ljava/lang/String;
    :cond_2
    const-string v0, " "

    goto :goto_0

    .line 238
    .restart local v0    # "currentSsid":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mIsSoftAP:Z

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->detectSSID(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mCurrentInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectScanResult currentSsid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DetailedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x2

    const/16 v2, -0x64

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->autoConnectAP(IILjava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 203
    if-lez p1, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z

    goto :goto_0
.end method

.method public getValidSortConfigByRssi()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "mSortConfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    monitor-enter v5

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mSortWifiConfig:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 256
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 257
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    return-object v2
.end method

.method readConfigAndUpdate()V
    .locals 19

    .prologue
    .line 815
    const/4 v15, 0x0

    .line 816
    .local v15, "reader":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    if-nez v1, :cond_0

    .line 817
    const-string v1, "networkAvailables exception, re-init it"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V

    .line 818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    .line 820
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 821
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 823
    :try_start_1
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/data/misc/wifi/network_available"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v16, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 826
    const/16 v1, 0x20

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 827
    .local v11, "idIndex":I
    if-ltz v11, :cond_1

    .line 828
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 829
    .local v3, "id":I
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 830
    .local v9, "bssidString":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 831
    .local v8, "bssidIndex":I
    if-ltz v8, :cond_1

    .line 832
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "bssid":Ljava/lang/String;
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 834
    .local v13, "keymgmtString":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 835
    .local v12, "keymgmtIndex":I
    if-ltz v12, :cond_1

    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, "key_mgmt":Ljava/lang/String;
    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfigAndUpdate: id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bssid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",key_mgmt= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ssid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    sget v4, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/16 :goto_0

    .line 841
    .end local v3    # "id":I
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "key_mgmt":Ljava/lang/String;
    .end local v8    # "bssidIndex":I
    .end local v9    # "bssidString":Ljava/lang/String;
    .end local v11    # "idIndex":I
    .end local v12    # "keymgmtIndex":I
    .end local v13    # "keymgmtString":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object/from16 v15, v16

    .line 842
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfigAndUpdate: FileNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 847
    if-eqz v15, :cond_2

    .line 848
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 854
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 855
    return-void

    .line 847
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v16, :cond_4

    .line 848
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    move-object/from16 v15, v16

    .line 852
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 850
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object/from16 v15, v16

    .line 853
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 843
    .end local v14    # "line":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 844
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfigAndUpdate: IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 847
    if-eqz v15, :cond_2

    .line 848
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 850
    :catch_3
    move-exception v1

    goto :goto_2

    .line 846
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 847
    :goto_4
    if-eqz v15, :cond_5

    .line 848
    :try_start_9
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 852
    :cond_5
    :goto_5
    :try_start_a
    throw v1

    .line 854
    :catchall_1
    move-exception v1

    :goto_6
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    .line 850
    .local v10, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    goto :goto_5

    .line 854
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 846
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 843
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 841
    :catch_7
    move-exception v10

    goto :goto_1
.end method

.method public removeNetwork(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public removeNetworkAvailable(I)V
    .locals 8
    .param p1, "netId"    # I

    .prologue
    .line 474
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v3, "removeNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 476
    .local v4, "rmconfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v4, :cond_0

    .line 493
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    monitor-enter v6

    .line 478
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 479
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 480
    .local v2, "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_1

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkAvailable;->parseKeymgmt(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 492
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "network":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 485
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .line 486
    .local v1, "mRemoveNetworks":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeNetworkAvailable, network.mSsid= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 487
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mNetworkAvailables:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 489
    .end local v1    # "mRemoveNetworks":Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 490
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNetworkAvailable;->updateAndWriteConfig()V

    .line 492
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public reportRssi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public setAutoSwitch(Z)V
    .locals 2
    .param p1, "isAutoSwitch"    # Z

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->logd(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->setWifiAutoSwitch(Z)V

    .line 225
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mAutoSwitch:Z

    .line 226
    return-void
.end method

.method public setManualConnect(Z)V
    .locals 0
    .param p1, "isManualConnect"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable;->mManualConnect:Z

    .line 220
    return-void
.end method
