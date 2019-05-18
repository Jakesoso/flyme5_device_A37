.class public Lcom/mediatek/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;,
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    }
.end annotation


# static fields
.field private static HALF_HANDLER_TIMEOUT:I = 0x0

.field private static final HEAP_UTILIZATION_DURING_FRAME_UPDATE:F = 0.5f

.field private static final LUCKYMONEY_BOARDCAST:Ljava/lang/String; = "com.mediatek.perfservice.luckymoney"

.field private static final OPPO_LUCKMONEY:I = 0x7df

.field private static final OPPO_LUCKMONEY_DISABLE_AUTO:I = 0x4eb8

.field private static final OPPO_LUCKMONEY_ENABLE_AUTO:I = 0x4eb7

.field private static final OPPO_LUCKY_MONEY_CATCHER:Ljava/lang/String; = "com.money.mm"

.field private static final RENDER_BIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static final TOUCH_BOOST_DURATION_MS:I = 0xbb8

.field private static final UI_UPDATE_DURATION_MS:I = 0x1f4

.field private static mHM:Lcom/oppo/hypnus/Hypnus;


# instance fields
.field private autoOpenMM:Z

.field private bDuringTouch:Z

.field private bDuringTouchBoost:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentRaisePid:I

.field private mDefaultUtilization:F

.field private mDisplayType:I

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLuckyMoneyHalfHandler:I

.field private mLuckyMoneyHandler:I

.field private mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

.field private mRuntime:Ldalvik/system/VMRuntime;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManger:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const v0, 0xea60

    sput v0, Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    .line 83
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->autoOpenMM:Z

    .line 98
    iput v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I

    .line 100
    iput v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    .line 101
    iput v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    .line 164
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 165
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 167
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 168
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    .line 172
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 173
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 174
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 175
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    .line 176
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    .line 177
    const-string v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManger:Landroid/net/wifi/WifiManager;

    .line 181
    new-instance v1, Lcom/mediatek/perfservice/LuckyMoneyHelper;

    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/perfservice/LuckyMoneyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    .line 186
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-nez v1, :cond_1

    .line 187
    new-instance v1, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v1}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    sput-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    .line 189
    :cond_1
    return-void
.end method

.method private LuckyMoneyStrategy(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "timeout_ms"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getDelayTimeout()I

    move-result v1

    sput v1, Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I

    .line 303
    :cond_0
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    if-gtz v1, :cond_1

    invoke-direct {p0, p1, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->initHandler(II)V

    .line 304
    :cond_1
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    invoke-virtual {p0, v1, p3}, Lcom/mediatek/perfservice/PerfServiceManager;->userEnableTimeoutMs(II)V

    .line 306
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 309
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    add-int/lit8 v2, p3, 0x64

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManger:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    .line 314
    :cond_2
    return-void
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/mediatek/perfservice/PerfServiceManager;->HALF_HANDLER_TIMEOUT:I

    return v0
.end method

.method static synthetic access$1300()Lcom/oppo/hypnus/Hypnus;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oppo/hypnus/Hypnus;)Lcom/oppo/hypnus/Hypnus;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/hypnus/Hypnus;

    .prologue
    .line 69
    sput-object p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/perfservice/PerfServiceManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->initHalfHandler(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManger:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/perfservice/PerfServiceManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/perfservice/PerfServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/perfservice/PerfServiceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mCurrentRaisePid:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private initHalfHandler(II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    const/4 v4, 0x0

    .line 328
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    if-gtz v0, :cond_0

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScn(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    .line 330
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 331
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    const/4 v2, 0x6

    const v3, 0xd4a58

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 332
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHalfHandler:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 336
    :cond_0
    return-void
.end method

.method private initHandler(II)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 317
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    if-gtz v0, :cond_0

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScn(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    .line 319
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    const/4 v2, 0x2

    move-object v0, p0

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 320
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    const/4 v2, 0x6

    const v3, 0x1dc130

    const v4, 0x1174c0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 321
    iget v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHandler:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    move-object v1, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/perfservice/PerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 325
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 872
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfDumpAll()I
.end method

.method public static native nativePerfGetLastBoostPid()I
.end method

.method public static native nativePerfGetPackName()Ljava/lang/String;
.end method

.method public static native nativePerfLevelBoost(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativePerfNotifyDisplayType(I)I
.end method

.method public static native nativePerfNotifyUserStatus(II)I
.end method

.method public static native nativePerfRestorePolicy(I)I
.end method

.method public static native nativePerfSetFavorPid(I)I
.end method

.method public static native nativePerfUserGetCapability(I)I
.end method

.method public static native nativePerfUserRegScn(II)I
.end method

.method public static native nativePerfUserRegScnConfig(IIIIII)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(IIII)I
.end method

.method public static native nativePerfUserScnRegBigLittle(IIIIII)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnRestoreAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method

.method public static native nativePerfUserUnregScn(I)I
.end method

.method public static native nativeRaisePriorityDisable()I
.end method

.method public static native nativeRaisePriorityEnable(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 225
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 226
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 228
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 230
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v2, 0xbb8

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 240
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    const/4 v2, 0x1

    .line 201
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 202
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 203
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 208
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 209
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 217
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public boostEnableAndRaisePriorityTimeoutMs(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "timeout_ms"    # I
    .param p3, "core"    # I

    .prologue
    .line 269
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 273
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 274
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-nez v1, :cond_2

    .line 280
    new-instance v1, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v1}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    sput-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    .line 281
    :cond_2
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-eqz v1, :cond_3

    .line 282
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, p2}, Lcom/oppo/hypnus/Hypnus;->hypnusSetBurst(III)V

    .line 287
    :cond_3
    if-lez p3, :cond_0

    .line 288
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    invoke-direct {p0, p1, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->LuckyMoneyStrategy(III)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x7df
        :pswitch_0
    .end packed-switch
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 251
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 262
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public dumpAll()V
    .locals 0

    .prologue
    .line 451
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfDumpAll()I

    .line 452
    return-void
.end method

.method public getLastBoostPid()I
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastBoostPid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetLastBoostPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetLastBoostPid()I

    move-result v0

    return v0
.end method

.method public getLuckyMoneyInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getLuckyMoneyInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetPackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetPackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 341
    .local v6, "msg":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v6, Landroid/os/Message;->what:I

    .line 342
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 344
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 482
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 483
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyDisplayType(I)I

    .line 484
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x7

    .line 463
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFrameUpdate - bDuringTouchBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 465
    :cond_0
    if-eqz p1, :cond_1

    .line 466
    const/high16 v1, 0x800000

    or-int/2addr v1, p1

    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 468
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    if-nez v1, :cond_2

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 473
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 475
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 476
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 477
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserStatus - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public restorePolicy(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 459
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfRestorePolicy(I)I

    .line 460
    return-void
.end method

.method public setFavorPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 455
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 456
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 192
    const-string v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mLuckyMoneyHelper:Lcom/mediatek/perfservice/LuckyMoneyHelper;

    invoke-virtual {v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->initUpdateBroadcastReceiver()V

    .line 197
    return-void
.end method

.method public userDisable(I)V
    .locals 4
    .param p1, "handle"    # I

    .prologue
    .line 390
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v1}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    sput-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    .line 392
    :cond_0
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-eqz v1, :cond_1

    .line 393
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    const/16 v2, 0x63

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oppo/hypnus/Hypnus;->hypnusSetAction(II)V

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 399
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 400
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 401
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 441
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 379
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 381
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 384
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 406
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Lcom/oppo/hypnus/Hypnus;

    invoke-direct {v1}, Lcom/oppo/hypnus/Hypnus;-><init>()V

    sput-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    .line 408
    :cond_0
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Lcom/mediatek/perfservice/PerfServiceManager;->mHM:Lcom/oppo/hypnus/Hypnus;

    const/16 v2, 0x63

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oppo/hypnus/Hypnus;->hypnusSetAction(II)V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 412
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 414
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 416
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 417
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 418
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 422
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 423
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 425
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 427
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 428
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 429
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 359
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserGetCapability(I)I

    move-result v0

    return v0
.end method

.method public userReg(IIII)I
    .locals 1
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I
    .param p3, "pid"    # I
    .param p4, "tid"    # I

    .prologue
    .line 347
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 1
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 351
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 363
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 367
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScnConfig(IIIIII)I

    .line 368
    return-void
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 436
    return-void
.end method

.method public userRestoreAll()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 447
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    return-void
.end method

.method public userUnreg(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 355
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnUnreg(I)I

    .line 356
    return-void
.end method

.method public userUnregScn(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 373
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 374
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 375
    return-void
.end method
