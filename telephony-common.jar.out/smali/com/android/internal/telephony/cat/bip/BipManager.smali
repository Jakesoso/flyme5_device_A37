.class public Lcom/android/internal/telephony/cat/bip/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field public static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field public static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field public static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field private static final PROPERTY_OVERRIDE_APN:Ljava/lang/String; = "ril.pdn.overrideApn"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

.field private mBipMgrHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field private mIsNetworkAvailableReceived:Z

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field mPassword:Ljava/lang/String;

.field private mSlotId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 120
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 100
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 104
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 112
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->NETWORK_TYPE:I

    .line 114
    iput v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 141
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 143
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    .line 1332
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$3;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    .line 180
    iput p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    .line 181
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construct instance sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v3, 0x0

    .line 1007
    if-nez p1, :cond_0

    move v2, v3

    .line 1020
    :goto_0
    return v2

    .line 1011
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1012
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1013
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 1017
    const/4 v2, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1020
    goto :goto_0
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "ret":I
    const-string v2, "[BIP]"

    const-string v3, "establishConnect"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: Fail - requestRouteToHost"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x2

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 260
    const-string v2, "[BIP]"

    const-string v3, "requestNetwork: establish data channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v1

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "response":Landroid/os/Message;
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 265
    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 266
    :cond_1
    const-string v2, "[BIP]"

    const-string v3, "1 channel is activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    .line 272
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 273
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    :cond_2
    return-void

    .line 269
    :cond_3
    const-string v2, "[BIP]"

    const-string v3, "2 channel is un-activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_0
.end method

.method private deleteApnParams()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1110
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cat/bip/BipManager;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 1111
    .local v4, "uri":Landroid/net/Uri;
    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1112
    .local v3, "subId":[I
    const/4 v0, 0x0

    .line 1114
    .local v0, "numeric":Ljava/lang/String;
    const-string v5, "[BIP]"

    const-string v6, "BM-deleteApnParams: enter. "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    aget v5, v3, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1117
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :cond_0
    if-nez v4, :cond_1

    .line 1121
    const-string v5, "[BIP]"

    const-string v6, "BM-deleteApnParams: Invalid uri"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    return-void

    .line 1124
    :cond_1
    const-string v2, "name = \'__M-BIP__\'"

    .line 1125
    .local v2, "selection":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1126
    .local v1, "rows":I
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-deleteApnParams:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 280
    const/4 v7, 0x0

    .line 281
    .local v7, "ret":I
    const/4 v6, 0x0

    .line 283
    .local v6, "response":Landroid/os/Message;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect: opening ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 289
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_0

    .line 369
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v12, v8, :cond_2

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    .line 297
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 298
    .local v2, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v7, 0x2

    .line 300
    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 302
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 307
    :goto_1
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 308
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 309
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 310
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 311
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x28

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8, v9, v7, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 312
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 304
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v10, v10, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    goto :goto_1

    .line 314
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_2
    const/4 v3, 0x0

    .line 315
    .local v3, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 317
    .local v0, "additionalInfo":[B
    const-string v8, "[BIP]"

    const-string v9, "this is a drop link"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iput v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 319
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 320
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 322
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v8, 0xa

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 324
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_2
    const/4 v8, 0x7

    if-gt v3, v8, :cond_6

    .line 325
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-ne v12, v8, :cond_4

    .line 327
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 328
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-eq v12, v8, :cond_3

    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v13, v8, :cond_4

    .line 331
    :cond_3
    const-string v8, "ro.mtk_gemini_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v12, :cond_5

    .line 334
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    .line 341
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 342
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 343
    const/16 v8, -0x48

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget v8, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    or-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 338
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 348
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v4

    .line 349
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v8, "[BIP]"

    const-string v9, "NPE, channel null."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 354
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 355
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [B

    .line 356
    const/4 v3, 0x0

    :goto_5
    array-length v8, v0

    if-ge v3, v8, :cond_7

    .line 357
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v3

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 359
    :cond_7
    const/16 v8, 0x82

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 360
    const/16 v8, 0x81

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 361
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 362
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 363
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: for channel status"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v8, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    const-string v8, "[BIP]"

    const-string v9, "onEventDownload: No client channels are opened."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private establishLink()I
    .locals 12

    .prologue
    .line 1024
    const/4 v11, 0x0

    .line 1025
    .local v11, "ret":I
    const/4 v9, 0x0

    .line 1027
    .local v9, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1028
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCPServer link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v6, Lcom/android/internal/telephony/cat/CatService;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;-><init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1038
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_2

    .line 1039
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1095
    :cond_1
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 1096
    :goto_1
    return v1

    .line 1032
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_0
    move-exception v10

    .line 1033
    .local v10, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1035
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1042
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1043
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 1045
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1046
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a TCP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/bip/TcpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1059
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1060
    const/16 v1, 0xa

    if-eq v11, v1, :cond_1

    .line 1061
    if-eqz v11, :cond_4

    const/4 v1, 0x3

    if-ne v11, v1, :cond_6

    .line 1062
    :cond_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1063
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto :goto_0

    .line 1051
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_1
    move-exception v10

    .line 1052
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-nez v1, :cond_5

    .line 1055
    const/16 v1, 0x9

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1057
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_5
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto :goto_1

    .line 1065
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1066
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1069
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1071
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cat/bip/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1081
    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/bip/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 1082
    if-eqz v11, :cond_8

    const/4 v1, 0x3

    if-ne v11, v1, :cond_9

    .line 1083
    :cond_8
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1084
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    goto/16 :goto_0

    .line 1076
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :catch_2
    move-exception v10

    .line 1077
    .restart local v10    # "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1079
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_1

    .line 1086
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1087
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 1090
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_a
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/4 v11, 0x4

    .line 1092
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    goto/16 :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 243
    const/4 v0, -0x1

    .line 245
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 247
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v2, :cond_0

    .line 207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    .line 208
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/cat/bip/BipManager;

    sput-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v2, :cond_0

    .line 210
    sget-object v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aput-object v1, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v2, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-le p2, v2, :cond_2

    .line 214
    :cond_1
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance invalid sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    return-object v1

    .line 217
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    .line 218
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v2, v1, p2

    .line 220
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, p2

    goto :goto_1
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1100
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1102
    .local v0, "subId":[I
    aget v1, v0, v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    .line 1105
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "BM-getUri: invalid subId."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 796
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 797
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/cat/bip/BipManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/bip/BipManager$2;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 850
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 851
    .local v1, "subId":[I
    aget v2, v1, v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 864
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v4, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 867
    const-string v2, "[BIP]"

    const-string v3, "Start request network timer."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 869
    return-void

    .line 858
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 885
    if-eqz p1, :cond_0

    .line 886
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 888
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 892
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 890
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 989
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/4 v1, 0x0

    .line 991
    .local v1, "addressBytes":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v3, :cond_0

    .line 992
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "addr":I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 1003
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0    # "addr":I
    :goto_0
    return v2

    .line 994
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 875
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 876
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    .line 877
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 968
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 969
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 971
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 977
    return-void
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1129
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: enter"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    if-nez p1, :cond_0

    .line 1131
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :goto_0
    return-void

    .line 1135
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1136
    .local v2, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1137
    .local v12, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1138
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1139
    .local v10, "mnc":Ljava/lang/String;
    const-string v7, "supl"

    .line 1140
    .local v7, "apnType":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 1146
    .local v13, "subId":[I
    const/4 v1, 0x0

    aget v1, v13, v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    .line 1149
    :cond_1
    if-nez v2, :cond_2

    .line 1150
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 1154
    const/4 v8, 0x0

    .line 1155
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1156
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1157
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-setApnParams: apn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mcc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mnc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "numeric"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "sub_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1162
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1165
    if-eqz v8, :cond_3

    .line 1166
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1167
    .local v14, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v3, "__M-BIP__"

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v1, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v1, "sub_id"

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1180
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: insert one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1182
    .local v11, "newRow":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 1183
    const-string v1, "[BIP]"

    const-string v3, "insert a new record into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    .line 1192
    .end local v11    # "newRow":Landroid/net/Uri;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1196
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: exit"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1186
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "newRow":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v1, "[BIP]"

    const-string v3, "Fail to insert apn params into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1189
    .end local v11    # "newRow":Landroid/net/Uri;
    :cond_5
    const-string v1, "[BIP]"

    const-string v3, "BM-setApnParams: do not update one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->updateChannelStatus(II)V

    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireNetwork()V
    .locals 6

    .prologue
    .line 372
    const/4 v1, 0x2

    .line 373
    .local v1, "result":I
    const/4 v2, 0x0

    .line 375
    .local v2, "ret":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 378
    const-string v3, "[BIP]"

    const-string v4, "acquireNetwork: already available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 380
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V

    .line 388
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNetwork: slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->newRequest()V

    goto :goto_0
.end method

.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 668
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 671
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 591
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 596
    .local v1, "cId":I
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 597
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 598
    if-ltz v1, :cond_0

    if-ge v8, v1, :cond_1

    .line 599
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iput v8, p2, Landroid/os/Message;->arg1:I

    .line 654
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isParamsValid:Z

    .line 655
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    if-nez v5, :cond_a

    .line 656
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    :goto_1
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void

    .line 603
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 604
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iput v8, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 605
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v10, v5, :cond_3

    .line 606
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 608
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 609
    if-nez v3, :cond_4

    .line 610
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 614
    :cond_4
    const/4 v4, 0x0

    .line 615
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 616
    instance-of v5, v3, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 617
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object v4, v0

    .line 618
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 635
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->deleteApnParams()V

    .line 636
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 637
    iget v5, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_9

    .line 638
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 639
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 645
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannel:Lcom/android/internal/telephony/cat/bip/Channel;

    .line 646
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 621
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z

    .line 623
    const-string v5, "ro.mtk_gemini_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_8

    .line 624
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 628
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 631
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 632
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V

    goto :goto_2

    .line 642
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 659
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    aput-object v4, v1, v2

    .line 232
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 233
    sget-object v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 238
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/bip/BipManager;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 239
    sput-object v4, Lcom/android/internal/telephony/cat/bip/BipManager;->mInstance:[Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 241
    :cond_2
    return-void

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 1200
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 781
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 784
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 785
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 945
    const/4 v3, 0x0

    .line 946
    .local v3, "ret":I
    const/4 v0, 0x1

    .line 947
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/bip/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    const/4 v4, 0x7

    if-gt v0, v4, :cond_1

    .line 951
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 952
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :catch_0
    move-exception v2

    .line 958
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 961
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 962
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 963
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 965
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public isTestSim()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1238
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTestSim slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    if-nez v1, :cond_1

    const-string v1, "gsm.sim.ril.testsim"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v0

    .line 1243
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    if-ne v0, v1, :cond_2

    const-string v1, "gsm.sim.ril.testsim.2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1247
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    if-ne v1, v2, :cond_3

    const-string v1, "gsm.sim.ril.testsim.3"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1251
    :cond_3
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    if-ne v1, v2, :cond_4

    const-string v1, "gsm.sim.ril.testsim.4"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1256
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 788
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 790
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 791
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    const/4 v2, 0x2

    .line 392
    .local v2, "result":I
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: enter"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "ret":I
    const/4 v0, 0x0

    .line 396
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: init channel status object"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 400
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->acquireChannelId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    .line 401
    iget v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    if-nez v5, :cond_0

    .line 402
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: acquire channel id = 0"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 404
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 406
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 588
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-direct {v5, v8, v6, v6}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 410
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 412
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 413
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v5, :cond_3

    .line 414
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: bearer type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    .line 420
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: buffer size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 423
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v5, :cond_4

    .line 424
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: local address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 430
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    if-eqz v5, :cond_5

    .line 431
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_3
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 438
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    if-eqz v5, :cond_6

    .line 439
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: dest address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/bip/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_4
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    .line 445
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 446
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: apn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_5
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    .line 452
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: login "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    .line 454
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: password "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_8

    move v5, v6

    :goto_6
    iput v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLinkMode:I

    .line 459
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: mLinkMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    move v5, v6

    :goto_7
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mAutoReconnected:Z

    .line 463
    const-string v5, "ril.pdn.reuse"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "isPdnReuse":Ljava/lang/String;
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: isPdnReuse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v5, :cond_c

    .line 467
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v5, v10, :cond_a

    .line 469
    const-string v5, "ril.pdn.reuse"

    const-string v8, "2"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_1
    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mLogin:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v5, "gsm.stk.bip"

    const-string v8, "1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v5, "[BIP]"

    const-string v8, "MAXCHANNELID :7"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-ne v10, v5, :cond_e

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I

    move-result v3

    .line 510
    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_d

    .line 511
    :cond_2
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: channel is activated"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 513
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget-object v6, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 519
    :goto_9
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 520
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    :goto_a
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v1    # "isPdnReuse":Ljava/lang/String;
    :cond_3
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: bearer type is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    :cond_4
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: local address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 434
    :cond_5
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: transport protocol is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 441
    :cond_6
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: dest address is null"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 448
    :cond_7
    const-string v5, "[BIP]"

    const-string v8, "BM-openChannel: apn is null."

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    move v5, v7

    .line 456
    goto/16 :goto_6

    :cond_9
    move v5, v7

    .line 461
    goto/16 :goto_7

    .line 472
    .restart local v1    # "isPdnReuse":Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 473
    const-string v5, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-openChannel: override apn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v5, "ril.pdn.overrideApn"

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mApn:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_b
    const-string v5, "ril.pdn.reuse"

    const-string v8, "0"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 479
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v10, v5, :cond_1

    const/4 v5, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    if-eq v11, v5, :cond_1

    .line 482
    const-string v5, "[BIP]"

    const-string v6, "BM-openChannel: miss bearer info."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput v11, p2, Landroid/os/Message;->arg1:I

    .line 484
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 515
    :cond_d
    const-string v5, "[BIP]"

    const-string v7, "BM-openChannel: channel is un-activated"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    goto/16 :goto_9

    .line 525
    :cond_e
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    if-ne v7, v5, :cond_f

    .line 526
    const-string v5, "[BIP]"

    const-string v7, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v5, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 528
    .local v4, "timerMsg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsApnInserting:Z

    goto/16 :goto_a

    .line 535
    .end local v4    # "timerMsg":Landroid/os/Message;
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->acquireNetwork()V

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/bip/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1209
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    if-ne p1, v5, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1214
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1215
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    .line 1216
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I

    .line 1221
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 1223
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 1224
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1225
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z

    .line 1226
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1227
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1228
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1229
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 1218
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 1219
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 707
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 709
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 710
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 674
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 675
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 676
    .local v3, "result":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    const/4 v7, 0x0

    .line 677
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 679
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v7

    .line 680
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    if-nez v7, :cond_0

    .line 683
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 685
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    :goto_0
    return-void

    .line 689
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 691
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 692
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/16 v2, 0xed

    .line 695
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/bip/BipManager$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 696
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 699
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 701
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 775
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 777
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 778
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 714
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 770
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 771
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1353
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z

    .line 1354
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1356
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z

    .line 1357
    return-void
.end method
