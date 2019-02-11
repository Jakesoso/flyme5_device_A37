.class Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;
.super Landroid/os/UEventObserver;
.source "OppoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMKernelKeyLogObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    }
.end annotation


# static fields
.field private static final MULTIMEDIA_TAG:Ljava/lang/String; = "MULTIMEDIA"

.field private static final TYPE_ADSP_LOAD_FAIL:I = 0x12d

.field private static final TYPE_BL_EXCEPTION:I = 0x136

.field private static final TYPE_ESD_EXCEPTION:I = 0x132

.field private static final TYPE_FENCE_TIMEOUT:I = 0x135

.field private static final TYPE_GPU_EXCEPTION:I = 0x133

.field private static final TYPE_HEADPHONE_PLUG_IN_COUNT:I = 0x137

.field private static final TYPE_IOMMU_ERROR:I = 0x134

.field private static final TYPE_KGSL_EXCEPTION:I = 0x130

.field private static final TYPE_NO_DATA_TO_SHOW:I = 0x12f

.field private static final TYPE_SMART_PA_EXCEPTION:I = 0x12e

.field private static final TYPE_SOUND_CARD_REGISTER_FAIL:I = 0x12c

.field private static final TYPE_VSYNC_EXCEPTION:I = 0x131


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

.field final synthetic this$0:Lcom/android/server/oppo/OppoService;


# direct methods
.method public constructor <init>(Lcom/android/server/oppo/OppoService;)V
    .locals 1

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 670
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mLock:Ljava/lang/Object;

    .line 750
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->makeObservedUEvent()Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    .line 751
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->writeMMKeyLog(Ljava/lang/String;I)V

    return-void
.end method

.method private getIssueCause(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 687
    packed-switch p1, :pswitch_data_0

    .line 716
    const-string v0, ""

    :goto_0
    return-object v0

    .line 689
    :pswitch_0
    const-string v0, "sound_card_register_fail"

    goto :goto_0

    .line 691
    :pswitch_1
    const-string v0, "adps_load_fail"

    goto :goto_0

    .line 693
    :pswitch_2
    const-string v0, "smart_pa_exception"

    goto :goto_0

    .line 695
    :pswitch_3
    const-string v0, "no_data_to_show"

    goto :goto_0

    .line 697
    :pswitch_4
    const-string v0, "kgsl_exception"

    goto :goto_0

    .line 699
    :pswitch_5
    const-string v0, "vsync_exception"

    goto :goto_0

    .line 701
    :pswitch_6
    const-string v0, "esd_exception"

    goto :goto_0

    .line 703
    :pswitch_7
    const-string v0, "gpu_exception"

    goto :goto_0

    .line 705
    :pswitch_8
    const-string v0, "iommu_error"

    goto :goto_0

    .line 707
    :pswitch_9
    const-string v0, "fence_timeout"

    goto :goto_0

    .line 709
    :pswitch_a
    const-string v0, "bl_exception"

    goto :goto_0

    .line 712
    :pswitch_b
    const-string v0, "headphone plug in"

    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getIssueDesc(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 721
    const v0, 0x10406f0

    .line 722
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 743
    const v0, 0x10406f0

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 726
    :pswitch_0
    const v0, 0x10406ed

    .line 727
    goto :goto_0

    .line 736
    :pswitch_1
    const v0, 0x10406ef

    .line 737
    goto :goto_0

    .line 740
    :pswitch_2
    const v0, 0x10406f1

    .line 741
    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private makeObservedUEvent()Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    .locals 4

    .prologue
    .line 797
    new-instance v1, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    const-string v2, "oppo_critical_log"

    invoke-direct {v1, p0, v2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;-><init>(Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;Ljava/lang/String;)V

    .line 798
    .local v1, "uei":Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    move-object v0, v1

    .line 804
    .local v0, "retVal":Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    :goto_0
    return-object v0

    .line 801
    .end local v0    # "retVal":Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    :cond_0
    const-string v2, "MMKernelKeyLogObserver"

    const-string v3, "This kernel does not have mm key log support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x0

    .restart local v0    # "retVal":Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;
    goto :goto_0
.end method

.method private writeMMKeyLog(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v5, 0x137

    .line 824
    const-string v2, "OppoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeMMKeyLog: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n type index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, "issue":Ljava/lang/String;
    const/16 v2, 0x12c

    if-lt p2, v2, :cond_0

    const/16 v2, 0x18f

    if-le p2, v2, :cond_2

    .line 829
    :cond_0
    const-string v2, "MMKernelKeyLogObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ingore switch state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    const/4 v1, -0x1

    .line 833
    .local v1, "ret":I
    const-string v2, "OppoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->getIssueDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-ne v5, p2, :cond_3

    .line 837
    iget-object v2, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    iget-object v3, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.criticaldata.hardware.statistics.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/oppo/OppoService;->bCountUsbSupport:Z
    invoke-static {v2, v3}, Lcom/android/server/oppo/OppoService;->access$2602(Lcom/android/server/oppo/OppoService;Z)Z

    .line 838
    iget-object v2, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->bCountUsbSupport:Z
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$2600(Lcom/android/server/oppo/OppoService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->getIssueDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/os/OppoManager;->incrementCriticalData(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 840
    const-string v2, "OppoService"

    const-string v3, "increment headset plugging times failed!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :cond_3
    const-string v2, "MULTIMEDIA"

    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->getIssueCause(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->getIssueDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p1, v2, v3, v4}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 846
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 847
    const-string v2, "MMKernelKeyLogObserver"

    const-string v3, "failed to OppoManager.writeLogToPartition"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_4
    const-string v2, "MMKernelKeyLogObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has write :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes to critical log partition!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method init()V
    .locals 10

    .prologue
    .line 755
    iget-object v5, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    if-nez v5, :cond_0

    .line 756
    const-string v5, "mUEventInfo is null, should not be here!"

    const-string v6, "init()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v6, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 761
    :try_start_0
    const-string v5, "MMKernelKeyLogObserver"

    const-string v7, "init()"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v5, 0x400

    new-array v0, v5, [C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    .local v0, "buffer":[C
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    invoke-virtual {v5}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 765
    .local v2, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v5, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 766
    .local v4, "len":I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 767
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    # setter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {v5}, Lcom/android/server/oppo/OppoService;->access$2202(I)I

    .line 769
    new-instance v3, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    invoke-virtual {v5}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;->getSwitchNamePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 770
    .local v3, "fileName":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v7, 0x400

    invoke-virtual {v3, v0, v5, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 771
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 772
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/oppo/OppoService;->access$2102(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    const-string v5, "MMKernelKeyLogObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    # getter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2200()I

    move-result v5

    if-gez v5, :cond_1

    .line 776
    # getter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2200()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    # setter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {v5}, Lcom/android/server/oppo/OppoService;->access$2202(I)I

    .line 779
    :cond_1
    # getter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2200()I

    move-result v5

    const/4 v7, 0x1

    if-lt v5, v7, :cond_2

    # getter for: Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2100()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 780
    iget-object v5, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/oppo/OppoService;->access$2500(Lcom/android/server/oppo/OppoService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/oppo/OppoService;->access$2500(Lcom/android/server/oppo/OppoService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "fileName":Ljava/io/FileReader;
    .end local v4    # "len":I
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEVPATH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    invoke-virtual {v6}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->startObserving(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v5, "MMKernelKeyLogObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mUEventInfo:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;

    invoke-virtual {v8}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found while attempting to determine initial switch state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 790
    .end local v0    # "buffer":[C
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 787
    .restart local v0    # "buffer":[C
    :catch_1
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "MMKernelKeyLogObserver"

    const-string v7, ""

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 809
    const-string v3, "OppoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MM Key LogEvent UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :try_start_0
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "name":Ljava/lang/String;
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 814
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :try_start_1
    const-string v3, "OppoService"

    const-string v5, "onUEvent: start write log"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->writeMMKeyLog(Ljava/lang/String;I)V

    .line 817
    monitor-exit v4

    .line 821
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "state":I
    :goto_0
    return-void

    .line 817
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "state":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 818
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "state":I
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MMKernelKeyLogObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
