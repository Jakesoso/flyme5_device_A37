.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mProduct:D

.field private mValue:D

.field private mVolume:D

.field final synthetic this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;D)V
    .locals 2
    .param p2, "coefficient"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 1123
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mValue:D

    .line 1125
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D

    .line 1126
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mProduct:D

    .line 1127
    iput-wide p2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mAlpha:D

    .line 1128
    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    .prologue
    .line 1117
    iget-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mValue:D

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    .prologue
    .line 1117
    iget-wide v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D

    return-wide v0
.end method


# virtual methods
.method public update(DI)V
    .locals 11
    .param p1, "newValue"    # D
    .param p3, "newVolume"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1131
    if-gtz p3, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1133
    :cond_0
    int-to-double v2, p3

    mul-double v0, p1, v2

    .line 1134
    .local v0, "newProduct":D
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mProduct:D

    .line 1135
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mAlpha:D

    int-to-double v4, p3

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D

    .line 1136
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mProduct:D

    iget-wide v4, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mValue:D

    goto :goto_0
.end method
