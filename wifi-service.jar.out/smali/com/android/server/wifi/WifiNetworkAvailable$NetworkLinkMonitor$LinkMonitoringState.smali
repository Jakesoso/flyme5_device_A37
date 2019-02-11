.class Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiNetworkAvailable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mLastTimeSample:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mSampleCount:I

.field final synthetic this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1031
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1032
    :cond_0
    iput v6, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mSampleCount:I

    .line 1033
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    new-instance v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;D)V

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3802(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    .line 1034
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    const/16 v2, 0xbbb

    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    # ++operator for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3904(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 1035
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1039
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 1112
    const/16 v17, 0x0

    .line 1114
    :goto_0
    return v17

    .line 1041
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mIsScreenOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3300(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mConnectedState:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4000(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$ConnectedState;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4100(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Lcom/android/internal/util/IState;)V

    .line 1114
    :cond_0
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4200(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    const v18, 0x25014

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v18, v0

    const/16 v19, 0xbbb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v20, v0

    # ++operator for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mRssiFetchToken:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3904(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 1051
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1052
    .local v8, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v8, :cond_0

    .line 1053
    iget v14, v8, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 1054
    .local v14, "rssi":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastRssi:I

    move/from16 v17, v0

    add-int v17, v17, v14

    div-int/lit8 v9, v17, 0x2

    .line 1055
    .local v9, "mrssi":I
    iget v15, v8, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 1056
    .local v15, "txbad":I
    iget v0, v8, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v16, v0

    .line 1057
    .local v16, "txgood":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Fetch RSSI succeed, rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mrssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txbad="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txgood="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4300(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1061
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1063
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTimeSample:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    const-wide/16 v20, 0x7d0

    cmp-long v17, v18, v20

    if-gez v17, :cond_4

    .line 1065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTxBad:I

    move/from16 v17, v0

    sub-int v4, v15, v17

    .line 1066
    .local v4, "dbad":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTxGood:I

    move/from16 v17, v0

    sub-int v6, v16, v17

    .line 1067
    .local v6, "dgood":I
    add-int v7, v4, v6

    .line 1068
    .local v7, "dtotal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "RSSI_PKTCNT_FETCH_SUCCEEDED--dtotal= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4400(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1069
    if-lez v7, :cond_4

    .line 1071
    int-to-double v0, v4

    move-wide/from16 v18, v0

    int-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 1073
    .local v10, "loss":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->update(DI)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1076
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v17, "#.##"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v5, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Incremental loss="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Current loss="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->access$4500(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D

    move-result-wide v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "% volume="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->access$4600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4700(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    .line 1084
    .end local v5    # "df":Ljava/text/DecimalFormat;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    move-result-object v17

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->access$4500(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v17, v18, v20

    if-lez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$3800(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;)Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;

    move-result-object v17

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;->access$4600(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$VolumeWeightedEMA;)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_5

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mSampleCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mSampleCount:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$4802(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$4800(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->detectRssi(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2300(Lcom/android/server/wifi/WifiNetworkAvailable;Z)V

    .line 1089
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mSampleCount:I

    .line 1100
    .end local v4    # "dbad":I
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v10    # "loss":D
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTimeSample:J

    .line 1101
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTxBad:I

    .line 1102
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastTxGood:I

    .line 1103
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 1092
    .restart local v4    # "dbad":I
    .restart local v6    # "dgood":I
    .restart local v7    # "dtotal":I
    .restart local v10    # "loss":D
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->mSampleCount:I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$4800(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$4802(Lcom/android/server/wifi/WifiNetworkAvailable;Z)Z

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->mLossPktDetect:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$4800(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v18

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable;->detectRssi(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2300(Lcom/android/server/wifi/WifiNetworkAvailable;Z)V

    goto :goto_2

    .line 1108
    .end local v4    # "dbad":I
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v8    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v9    # "mrssi":I
    .end local v10    # "loss":D
    .end local v12    # "now":J
    .end local v14    # "rssi":I
    .end local v15    # "txbad":I
    .end local v16    # "txgood":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->this$0:Lcom/android/server/wifi/WifiNetworkAvailable;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiNetworkAvailable;->DBG:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiNetworkAvailable;->access$2500(Lcom/android/server/wifi/WifiNetworkAvailable;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor$LinkMonitoringState;->this$1:Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;

    move-object/from16 v17, v0

    const-string v18, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;->access$4900(Lcom/android/server/wifi/WifiNetworkAvailable$NetworkLinkMonitor;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1039
    :sswitch_data_0
    .sparse-switch
        0xbbb -> :sswitch_0
        0x25015 -> :sswitch_1
        0x25016 -> :sswitch_2
    .end sparse-switch
.end method
