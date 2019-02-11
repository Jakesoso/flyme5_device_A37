.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x18

.field private static final MESSAGE_GET_PACK_NAME:I = 0x1d

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x1a

.field private static final MESSAGE_RAISE_PRIORITY_TIMEOUT_MS:I = 0x32

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x19

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x1b

.field private static final MESSAGE_TIMER_HALF_HANDLER:I = 0x34

.field private static final MESSAGE_TIMER_HALF_HANDLER_TIMEOUT:I = 0x35

.field private static final MESSAGE_TIMER_RAISE_PRIORITY:I = 0x33

.field private static final MESSAGE_TIMER_SCN_BASE:I = 0x64

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0xc8

.field private static final MESSAGE_TIMER_TOUCH_BOOST_DURATION:I = 0x28

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x1c

.field private static final MESSAGE_USER_DISABLE:I = 0x14

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x16

.field private static final MESSAGE_USER_ENABLE:I = 0x11

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x12

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x13

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0xd

.field private static final MESSAGE_USER_REG:I = 0xa

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0xb

.field private static final MESSAGE_USER_REG_SCN:I = 0xe

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0xf

.field private static final MESSAGE_USER_RESET_ALL:I = 0x15

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x17

.field private static final MESSAGE_USER_UNREG:I = 0xc

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 543
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 544
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 858
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 859
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 858
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 864
    :cond_0
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 766
    if-lez p1, :cond_0

    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 772
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 773
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 774
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 776
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 783
    if-lez p1, :cond_0

    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 790
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 791
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 793
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startCheckTouchBoostTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 806
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 807
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 816
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 817
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 818
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 820
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 829
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 830
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 832
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 844
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 846
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 847
    .local v0, "handle":I
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 848
    add-int/lit8 v2, v0, 0x64

    .line 852
    .local v2, "timer":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v2    # "timer":I
    :cond_0
    add-int/lit16 v2, v0, 0xc8

    .restart local v2    # "timer":I
    goto :goto_1

    .line 855
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_1
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 800
    add-int/lit8 v0, p1, 0x64

    .line 801
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 802
    return-void
.end method

.method private stopCheckTouchBoostTimer()V
    .locals 1

    .prologue
    .line 811
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 812
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 839
    add-int/lit16 v0, p1, 0xc8

    .line 840
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 841
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x7

    const/4 v7, -0x1

    .line 549
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 731
    iget v1, p1, Landroid/os/Message;->what:I

    .line 732
    .local v1, "msgId":I
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_TIMEOUT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 734
    const/16 v5, 0x64

    if-lt v1, v5, :cond_8

    const/16 v5, 0xc8

    if-ge v1, v5, :cond_8

    .line 736
    add-int/lit8 v3, v1, -0x64

    .line 737
    .local v3, "scenario":I
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 739
    packed-switch v3, :pswitch_data_0

    .line 763
    .end local v1    # "msgId":I
    .end local v3    # "scenario":I
    :cond_0
    :goto_0
    return-void

    .line 553
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$2000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :sswitch_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 567
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 568
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 574
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    .line 576
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 585
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 586
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 594
    :sswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I
    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 595
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_RAISE_PRIORITY_TIMEOUT_MS"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 596
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativeRaisePriorityEnable(I)I

    move-result v6

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$602(Lcom/mediatek/perfservice/PerfServiceManager;I)I

    .line 598
    :cond_2
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 599
    const/16 v5, 0x33

    iget v6, p1, Landroid/os/Message;->arg2:I

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 606
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 608
    .local v2, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$800(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$900(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v7

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPid:I
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$1100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    .line 609
    const/4 v2, 0x0

    .line 610
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 616
    .end local v2    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :sswitch_6
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_TIMER_TOUCH_BOOST_DURATION timeout"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 617
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 618
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 626
    :sswitch_7
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_TIMER_RAISE_PRIORITY"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 627
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 628
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativeRaisePriorityDisable()I

    .line 629
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, -0x1

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$602(Lcom/mediatek/perfservice/PerfServiceManager;I)I

    goto/16 :goto_0

    .line 636
    :sswitch_8
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :sswitch_9
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 644
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 650
    :sswitch_a
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 652
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 658
    :sswitch_b
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 660
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 666
    :sswitch_c
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 667
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 673
    :sswitch_d
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_RESET_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 675
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 676
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 682
    :sswitch_e
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_DISABLE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 690
    :sswitch_f
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_RESTORE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I

    goto/16 :goto_0

    .line 703
    :sswitch_10
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200()I

    move-result v5

    if-lez v5, :cond_6

    .line 706
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300()Lcom/oppo/hypnus/Hypnus;

    move-result-object v5

    if-nez v5, :cond_3

    .line 707
    new-instance v5, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v5}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1302(Lcom/oppo/hypnus/Hypnus;)Lcom/oppo/hypnus/Hypnus;

    .line 708
    :cond_3
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300()Lcom/oppo/hypnus/Hypnus;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 709
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300()Lcom/oppo/hypnus/Hypnus;

    move-result-object v5

    const/16 v6, 0xb

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/oppo/hypnus/Hypnus;->hypnusSetAction(II)V

    .line 711
    :cond_4
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)I

    move-result v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->initHalfHandler(II)V
    invoke-static {v5, v6, v7}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1500(Lcom/mediatek/perfservice/PerfServiceManager;II)V

    .line 712
    :cond_5
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v6, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I
    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)I

    move-result v6

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/perfservice/PerfServiceManager;->userEnableTimeoutMs(II)V

    .line 714
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    move-result-object v5

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 715
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    move-result-object v5

    const/16 v6, 0x35

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 717
    :cond_6
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManger:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1700(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    goto/16 :goto_0

    .line 724
    :sswitch_11
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_TIMER_HALF_HANDLER"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 725
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManger:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1700(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    goto/16 :goto_0

    .line 741
    .restart local v1    # "msgId":I
    .restart local v3    # "scenario":I
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1800(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 742
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 746
    :cond_7
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F
    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1900(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 747
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v4

    .line 748
    .local v4, "utilization":F
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set utilization:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v3    # "scenario":I
    .end local v4    # "utilization":F
    :cond_8
    const/16 v5, 0xc8

    if-lt v1, v5, :cond_0

    .line 755
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 549
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x10 -> :sswitch_c
        0x11 -> :sswitch_8
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x14 -> :sswitch_9
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x17 -> :sswitch_f
        0x28 -> :sswitch_6
        0x32 -> :sswitch_4
        0x33 -> :sswitch_7
        0x34 -> :sswitch_10
        0x35 -> :sswitch_11
    .end sparse-switch

    .line 739
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
