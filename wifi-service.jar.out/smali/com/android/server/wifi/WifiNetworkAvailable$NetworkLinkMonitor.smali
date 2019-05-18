.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkLinkMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;,
        Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;
    }
.end annotation


# static fields
.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final LINK_SAMPLING_INTERVAL_MS:I = 0x3e8

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x2


# instance fields
.field private mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

.field private mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

.field private mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

.field private mDisConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

.field private mIsScreenOn:Z

.field private mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

.field private mRssiFetchToken:I

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkAvailable;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable;Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    .line 948
    const-string v0, "NetworkLinkMonitor"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 933
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 934
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    .line 935
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDisConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

    .line 936
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    .line 937
    new-instance v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z

    .line 950
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2400(Lcom/android/server/wifi/WifiNetworkAvailable;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 952
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDisConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDefaultState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 956
    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mLinkMonitoringState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mDisConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$DisConnectedState;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$3904(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method
