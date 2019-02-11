.class Lcom/android/server/BootReceiver$3;
.super Landroid/os/Handler;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImeiCounter:I

.field final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 1

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    return-void
.end method

.method private updatePhoneState(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 505
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 506
    .local v3, "device":Ljava/lang/String;
    invoke-static {}, Landroid/os/OppoManager;->getVersionFOrAndroid()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "androidVer":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/OppoManager;->getIMEINums(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "IMEI":Ljava/lang/String;
    invoke-static {}, Landroid/os/OppoManager;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "buildVer":Ljava/lang/String;
    sget v10, Landroid/os/OppoManager;->TYEP_DEVICE:I

    const/16 v11, 0x200

    invoke-static {v10, v11}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "recDevice":Ljava/lang/String;
    sget v10, Landroid/os/OppoManager;->TYEP_Android_VER:I

    const/16 v11, 0x200

    invoke-static {v10, v11}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "recAndroidVer":Ljava/lang/String;
    sget v10, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    const/16 v11, 0x200

    invoke-static {v10, v11}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "recIMEI":Ljava/lang/String;
    sget v10, Landroid/os/OppoManager;->TYEP_BUILD_VER:I

    const/16 v11, 0x200

    invoke-static {v10, v11}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "recBuildVer":Ljava/lang/String;
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "record device is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " androidVer = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " imei = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " build = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 517
    sget v10, Landroid/os/OppoManager;->TYEP_DEVICE:I

    invoke-static {v10, v3}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v9

    .line 518
    .local v9, "res":I
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device res = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v9    # "res":I
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 521
    sget v10, Landroid/os/OppoManager;->TYEP_Android_VER:I

    invoke-static {v10, v1}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v9

    .line 522
    .restart local v9    # "res":I
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "androidver res = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v9    # "res":I
    :cond_1
    const-string/jumbo v10, "null"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 526
    const/16 v10, 0x3ea

    const-wide/16 v12, 0x1388

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/BootReceiver$3;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    :cond_2
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 535
    sget v10, Landroid/os/OppoManager;->TYEP_BUILD_VER:I

    invoke-static {v10, v2}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v9

    .line 536
    .restart local v9    # "res":I
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildVer res = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v9    # "res":I
    :cond_3
    sget v10, Landroid/os/OppoManager;->TYEP_BUILD_VER:I

    add-int/lit16 v10, v10, 0x400

    const/16 v11, 0x200

    invoke-static {v10, v11}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, "historyVer":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string/jumbo v10, "null"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 542
    :cond_4
    const-string v10, "BootReceiver"

    const-string/jumbo v11, "record new vesion to history "

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget v10, Landroid/os/OppoManager;->TYEP_DEVICE:I

    add-int/lit16 v10, v10, 0x400

    invoke-static {v10, v3}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 544
    sget v10, Landroid/os/OppoManager;->TYEP_Android_VER:I

    add-int/lit16 v10, v10, 0x400

    invoke-static {v10, v1}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 545
    sget v10, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    add-int/lit16 v10, v10, 0x400

    invoke-static {v10, v0}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 546
    sget v10, Landroid/os/OppoManager;->TYEP_BUILD_VER:I

    add-int/lit16 v10, v10, 0x400

    invoke-static {v10, v2}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 549
    :cond_5
    return-void

    .line 528
    .end local v4    # "historyVer":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 529
    sget v10, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    invoke-static {v10, v0}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v9

    .line 530
    .restart local v9    # "res":I
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "imei res = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 484
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 496
    const-string v0, "BootReceiver"

    const-string/jumbo v1, "invalid msg"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget v0, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    .line 487
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleMessage MSG_UPDATEIMEI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    # getter for: Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/BootReceiver$3;->updateIMEI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/16 v0, 0x3ea

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/BootReceiver$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    # getter for: Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/BootReceiver$3;->updatePhoneState(Landroid/content/Context;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateIMEI(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 552
    invoke-static {p1}, Landroid/os/OppoManager;->getIMEINums(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "IMEI":Ljava/lang/String;
    sget v5, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    const/16 v6, 0x200

    invoke-static {v5, v6}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "recIMEI":Ljava/lang/String;
    const-string/jumbo v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    if-gt v5, v7, :cond_0

    .line 574
    :goto_0
    return v3

    .line 556
    :cond_0
    iget v5, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    if-le v5, v7, :cond_1

    .line 560
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    sget v5, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    invoke-static {v5, v0}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v2

    .line 562
    .local v2, "res":I
    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imei record imie  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iput v3, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    move v3, v4

    .line 564
    goto :goto_0

    .line 566
    .end local v2    # "res":I
    :cond_1
    const-string/jumbo v5, "null"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 569
    sget v5, Landroid/os/OppoManager;->TYEP_PHONE_IMEI:I

    invoke-static {v5, v0}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v2

    .line 570
    .restart local v2    # "res":I
    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imei  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput v3, p0, Lcom/android/server/BootReceiver$3;->mImeiCounter:I

    move v3, v4

    .line 572
    goto :goto_0

    .end local v2    # "res":I
    :cond_2
    move v3, v4

    .line 574
    goto :goto_0
.end method
