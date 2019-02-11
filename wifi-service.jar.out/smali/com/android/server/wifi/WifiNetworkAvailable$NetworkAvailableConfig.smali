.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
.super Ljava/lang/Object;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAvailableConfig"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mKeymgmt:Ljava/lang/String;

.field private mNetid:I

.field private mRssi:I

.field private mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkAvailable;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "netid"    # I
    .param p3, "rssi"    # I
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "bssid"    # Ljava/lang/String;
    .param p6, "Keymgmt"    # Ljava/lang/String;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput p2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mNetid:I

    .line 925
    iput p3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mRssi:I

    .line 926
    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;

    .line 927
    iput-object p5, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mBssid:Ljava/lang/String;

    .line 928
    iput-object p6, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;

    .line 929
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mKeymgmt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 916
    iget v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mRssi:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;
    .param p1, "x1"    # I

    .prologue
    .line 916
    iput p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mRssi:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 916
    iget v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mNetid:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkAvailableConfig;->mBssid:Ljava/lang/String;

    return-object v0
.end method
