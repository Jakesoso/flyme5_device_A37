.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 686
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 687
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 695
    const/4 v9, 0x0

    .line 696
    .local v9, "retryCount":I
    const-string v10, "rild"

    .line 700
    .local v10, "rilSocket":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v14, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v15, "[RIL SWITCH] stoped now!"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 850
    :goto_1
    return-void

    .line 705
    :cond_0
    const/4 v11, 0x0

    .line 709
    .local v11, "s":Landroid/net/LocalSocket;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 710
    :cond_1
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v15

    aget-object v10, v14, v15

    .line 731
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    invoke-static {v14}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v8

    .line 732
    .local v8, "phoneType":I
    const/4 v14, 0x2

    if-ne v8, v14, :cond_2

    .line 733
    const-string v10, "rild-via"

    .line 737
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rilSocket["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    :try_start_1
    new-instance v12, Landroid/net/LocalSocket;

    invoke-direct {v12}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .end local v11    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v5, Landroid/net/LocalSocketAddress;

    sget-object v14, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v10, v14}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 743
    .local v5, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v12, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 776
    const/4 v9, 0x0

    .line 778
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v12, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 779
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") Connected to \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v15

    monitor-enter v15
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 786
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "queue size  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v14, v0}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v14

    add-int/lit8 v3, v14, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_a

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 788
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 712
    .end local v3    # "i":I
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "phoneType":I
    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_5
    const-string v14, "ro.mtk_dt_support"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    .line 714
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v10, v14, v15

    goto/16 :goto_2

    .line 717
    :cond_4
    const-string v14, "ro.evdo_dt_support"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 719
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v10, v14, v15

    goto/16 :goto_2

    .line 720
    :cond_5
    const-string v14, "ro.telephony.cl.config"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 722
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v10, v14, v15

    goto/16 :goto_2

    .line 725
    :cond_6
    const-string v10, "rild-md2"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 744
    .restart local v8    # "phoneType":I
    :catch_0
    move-exception v2

    .line 746
    .local v2, "ex":Ljava/io/IOException;
    :goto_4
    if-eqz v11, :cond_7

    .line 747
    :try_start_6
    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 756
    :cond_7
    :goto_5
    const/16 v14, 0x8

    if-ne v9, v14, :cond_9

    .line 757
    :try_start_7
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket after "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " times, continuing to retry silently"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 768
    :cond_8
    :goto_6
    const-wide/16 v14, 0xfa0

    :try_start_8
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 772
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 773
    goto/16 :goto_0

    .line 761
    :cond_9
    if-ltz v9, :cond_8

    const/16 v14, 0x8

    if-ge v9, v14, :cond_8

    .line 762
    :try_start_9
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket; retrying after timeout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    .line 844
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v8    # "phoneType":I
    .end local v11    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v13

    .line 845
    .local v13, "tr":Ljava/lang/Throwable;
    const-string v14, "RILJ"

    const-string v15, "Uncaught exception"

    invoke-static {v14, v15, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_1

    .line 792
    .end local v13    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "i":I
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v8    # "phoneType":I
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "queue size  after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v14, v0}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v16, "reset pending switch request"

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v14, v0}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->resetSendChldRequest()V

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mDtmfReqQueue:Lcom/android/internal/telephony/RIL$dtmfQueueHandler;
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 799
    :cond_b
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 802
    const/4 v6, 0x0

    .line 804
    .local v6, "length":I
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 807
    .local v4, "is":Ljava/io/InputStream;
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v4, v14}, Lcom/android/internal/telephony/RIL;->access$700(Ljava/io/InputStream;[B)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    move-result v6

    .line 808
    if-gez v6, :cond_c

    .line 829
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_9
    :try_start_c
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") Disconnected from \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 835
    :try_start_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 839
    :goto_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 840
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x1

    const/16 v16, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static/range {v14 .. v16}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 799
    .end local v3    # "i":I
    .end local v6    # "length":I
    :catchall_0
    move-exception v14

    :try_start_f
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v14
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    .line 812
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "length":I
    :cond_c
    :try_start_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 813
    .local v7, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 814
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v14, v7}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 819
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_8

    .line 821
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "p":Landroid/os/Parcel;
    :catch_2
    move-exception v2

    .line 822
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_12
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket closed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 824
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v13

    .line 825
    .restart local v13    # "tr":Ljava/lang/Throwable;
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uncaught exception read length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_9

    .line 749
    .end local v3    # "i":I
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    .end local v12    # "s":Landroid/net/LocalSocket;
    .end local v13    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ex":Ljava/io/IOException;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v14

    goto/16 :goto_5

    .line 769
    :catch_5
    move-exception v14

    goto/16 :goto_7

    .line 836
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v11    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "i":I
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v14

    goto/16 :goto_a

    .line 744
    .end local v3    # "i":I
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_7
    move-exception v2

    move-object v11, v12

    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_4
.end method
