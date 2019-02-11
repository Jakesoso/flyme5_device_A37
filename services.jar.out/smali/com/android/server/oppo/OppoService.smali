.class public final Lcom/android/server/oppo/OppoService;
.super Landroid/os/IOppoService$Stub;
.source "OppoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GET_IMEI_NO_DELAY:I = 0x4e20

.field private static final HARDWARE_CRITICAL_SUPPORT:Ljava/lang/String; = "oppo.criticaldata.hardware.statistics.support"

.field private static final MSG_GET_IMEI_NO:I = 0x2

.field private static final MSG_GR_DOWN_INSTALL:I = 0x4

.field private static final MSG_GR_EXIT:I = 0x8

.field private static final MSG_GR_INIT:I = 0x3

.field private static final MSG_GR_REINSTALL:I = 0x5

.field private static final MSG_GR_SHOW_EXCEPTION:I = 0x6

.field private static final MSG_GR_SUCC:I = 0x7

.field private static final MSG_WRITE_MM_KEY_LOG:I = 0x1e

.field private static final NAME_MMKEYLOG:Ljava/lang/String; = "oppo_critical_log"

.field private static final TAG:Ljava/lang/String; = "OppoService"

.field private static final WRITE_MM_KEY_LOG_DELAY:I = 0x2710

.field private static curName:Ljava/lang/String;

.field private static curState:I


# instance fields
.field private DEBUG_GR:Ljava/lang/Boolean;

.field private bCountUsbSupport:Z

.field private grAbandon:Ljava/lang/String;

.field private grCancel:Ljava/lang/String;

.field private grDoDown:Ljava/lang/String;

.field private grDownTipContent:Ljava/lang/String;

.field private grExceptionContent:Ljava/lang/String;

.field private grFileName:Ljava/lang/String;

.field private grNetworkContent:Ljava/lang/String;

.field private grNeverRemind:Ljava/lang/String;

.field private grOk:Ljava/lang/String;

.field private grReinstallPTipContent:Ljava/lang/String;

.field private grSpaceContent:Ljava/lang/String;

.field private grSucc:Ljava/lang/String;

.field private grSuccDown:Ljava/lang/String;

.field private grTipContent:Ljava/lang/String;

.field private grTipTitle:Ljava/lang/String;

.field private hasGrInit:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMMKernelKeyLogObserver:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

.field private mRetry:I

.field private notInstalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-direct {p0}, Landroid/os/IOppoService$Stub;-><init>()V

    .line 67
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oppo/OppoService;->mRetry:I

    .line 73
    sget-boolean v1, Landroid/os/OppoManager;->DEBUG_GR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grTipContent:Ljava/lang/String;

    .line 91
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grDownTipContent:Ljava/lang/String;

    .line 93
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grReinstallPTipContent:Ljava/lang/String;

    .line 95
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grNetworkContent:Ljava/lang/String;

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grSpaceContent:Ljava/lang/String;

    .line 99
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grSuccDown:Ljava/lang/String;

    .line 101
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grCancel:Ljava/lang/String;

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;

    .line 107
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grNeverRemind:Ljava/lang/String;

    .line 109
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grDoDown:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grFileName:Ljava/lang/String;

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->hasGrInit:Ljava/lang/Boolean;

    .line 117
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;

    .line 118
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->grSucc:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/android/server/oppo/OppoService;->bCountUsbSupport:Z

    .line 165
    new-instance v1, Lcom/android/server/oppo/OppoService$1;

    invoke-direct {v1, p0}, Lcom/android/server/oppo/OppoService$1;-><init>(Lcom/android/server/oppo/OppoService;)V

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    .line 614
    iput-object p1, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    .line 621
    sget-object v1, Landroid/os/OppoManager;->willUseGrLeader:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oppo/OppoService;->hasGrInit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v1, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

    invoke-direct {v1, p0}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;-><init>(Lcom/android/server/oppo/OppoService;)V

    iput-object v1, p0, Lcom/android/server/oppo/OppoService;->mMMKernelKeyLogObserver:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

    .line 628
    iget-object v1, p0, Lcom/android/server/oppo/OppoService;->mMMKernelKeyLogObserver:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

    invoke-virtual {v1}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->init()V

    .line 630
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/oppo/OppoService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/oppo/OppoService;->mRetry:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/oppo/OppoService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/oppo/OppoService;->mRetry:I

    return p1
.end method

.method static synthetic access$010(Lcom/android/server/oppo/OppoService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/oppo/OppoService;->mRetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oppo/OppoService;->mRetry:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/oppo/OppoService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/oppo/OppoService;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grDoDown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grDownTipContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grReinstallPTipContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grSucc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grSuccDown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/server/oppo/OppoService;->curState:I

    return v0
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 60
    sput p0, Lcom/android/server/oppo/OppoService;->curState:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/oppo/OppoService;)Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->mMMKernelKeyLogObserver:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oppo/OppoService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/oppo/OppoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoService;->bCountUsbSupport:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oppo/OppoService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/oppo/OppoService;->bCountUsbSupport:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/oppo/OppoService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->initGr()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->isNetworkOk()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->isSpaceOk()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grNetworkContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grSpaceContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->grTipContent:Ljava/lang/String;

    return-object v0
.end method

.method private initGr()V
    .locals 7

    .prologue
    .line 467
    const-string v0, ""

    .line 468
    .local v0, "bitDesc":Ljava/lang/String;
    const-string v2, ""

    .line 469
    .local v2, "densityDesc":Ljava/lang/String;
    const-string v4, ""

    .line 470
    .local v4, "sdkVersion":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 471
    const-string v0, "_arm64"

    .line 474
    :cond_0
    const-string v5, "ro.sf.lcd_density"

    const/16 v6, 0xa0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    .local v1, "density":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 490
    const-string v2, "_alldpi"

    .line 495
    :goto_0
    const-string v5, "ro.build.version.sdk"

    const-string v6, "21"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 498
    iget-object v5, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 500
    .local v3, "rs":Landroid/content/res/Resources;
    const v5, 0x10406bd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;

    .line 501
    const v5, 0x10406be

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grTipContent:Ljava/lang/String;

    .line 502
    const v5, 0x10406c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grReinstallPTipContent:Ljava/lang/String;

    .line 504
    const v5, 0x10406c2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;

    .line 505
    const v5, 0x10406c3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grCancel:Ljava/lang/String;

    .line 506
    const v5, 0x10406bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grDownTipContent:Ljava/lang/String;

    .line 507
    const v5, 0x10406c1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;

    .line 508
    const v5, 0x10406c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grNeverRemind:Ljava/lang/String;

    .line 509
    const v5, 0x10406ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grDoDown:Ljava/lang/String;

    .line 510
    const v5, 0x10406c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grNetworkContent:Ljava/lang/String;

    .line 511
    const v5, 0x10406c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grSpaceContent:Ljava/lang/String;

    .line 512
    const v5, 0x10406c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grSuccDown:Ljava/lang/String;

    .line 513
    const v5, 0x10406c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;

    .line 514
    const v5, 0x10406c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grSucc:Ljava/lang/String;

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->grFileName:Ljava/lang/String;

    .line 518
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oppo/OppoService;->hasGrInit:Ljava/lang/Boolean;

    .line 519
    return-void

    .line 478
    .end local v3    # "rs":Landroid/content/res/Resources;
    :sswitch_0
    const-string v2, "_hdpi"

    .line 479
    goto/16 :goto_0

    .line 482
    :sswitch_1
    const-string v2, "_xhdpi"

    .line 483
    goto/16 :goto_0

    .line 486
    :sswitch_2
    const-string v2, "_xxhdpi"

    .line 487
    goto/16 :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method private isFactoryMode()Z
    .locals 7

    .prologue
    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "imei":Ljava/lang/String;
    const/4 v3, 0x0

    .line 596
    .local v3, "result":Z
    :try_start_0
    const-string v4, "iphonesubinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 597
    .local v1, "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_0

    .line 598
    const-string v4, "OppoService"

    const-string v5, "iphonesubinfo service is not ready!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v4, 0x0

    .line 610
    .end local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return v4

    .line 601
    .restart local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 602
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    :cond_1
    const/4 v3, 0x1

    .end local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_2
    :goto_1
    move v4, v3

    .line 610
    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 607
    const-string v4, "OppoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceId remoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isNetworkOk()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isSpaceOk()Ljava/lang/Boolean;
    .locals 10

    .prologue
    .line 457
    new-instance v4, Landroid/os/StatFs;

    const-string v5, "/data/system"

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 458
    .local v4, "fs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 459
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 460
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 461
    .local v6, "size":J
    const-wide/32 v8, 0xfa00000

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private native native_finalizeRawPartition()V
.end method

.method private native native_initRawPartition()Z
.end method

.method private native native_readCriticalData(II)Ljava/lang/String;
.end method

.method private native native_readRawPartition(II)Ljava/lang/String;
.end method

.method private native native_writeCriticalData(ILjava/lang/String;)I
.end method

.method private native native_writeRawPartition(Ljava/lang/String;)I
.end method


# virtual methods
.method public doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "what":Ljava/lang/Integer;
    if-eqz p4, :cond_5

    .line 527
    const-string v3, "DO_GR_SHOW_EXCEPTION"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 528
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 529
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 530
    .local v1, "msg":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "exceptionType"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 535
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 537
    :cond_2
    const-string v3, "DO_GR_SUCC"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 538
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 540
    .restart local v1    # "msg":Landroid/os/Message;
    if-eqz p2, :cond_4

    .line 542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 543
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "appName"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 552
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 545
    :cond_4
    if-eqz p1, :cond_3

    .line 547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 548
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "baseCodePath"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 557
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    if-eqz p4, :cond_1

    .line 561
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->hasGrInit:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 562
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->initGr()V

    .line 565
    :cond_6
    sget-object v3, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    const-string v3, "DO_GR_DOWN_INSTALL"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 570
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 579
    :cond_7
    :goto_2
    if-eqz v2, :cond_1

    .line 580
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 581
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 582
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "baseCodePath"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v3, "appName"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 586
    iget-object v3, p0, Lcom/android/server/oppo/OppoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 571
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    const-string v3, "DO_GR_REINSTALL"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 572
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 573
    :cond_9
    const-string v3, "DO_GR_EXIT"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 574
    if-eqz p3, :cond_7

    .line 575
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 634
    invoke-super {p0}, Landroid/os/IOppoService$Stub;->finalize()V

    .line 635
    return-void
.end method

.method public readCriticalData(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "size"    # I

    .prologue
    .line 660
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService;->native_readCriticalData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readRawPartition(II)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 652
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService;->native_readRawPartition(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeCriticalData(ILjava/lang/String;)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService;->native_writeCriticalData(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeRawPartition(Ljava/lang/String;)I
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoService;->native_writeRawPartition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
