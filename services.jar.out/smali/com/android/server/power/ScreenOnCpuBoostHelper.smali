.class public Lcom/android/server/power/ScreenOnCpuBoostHelper;
.super Ljava/lang/Object;
.source "ScreenOnCpuBoostHelper.java"


# static fields
.field private static final BIG_CORE_FREQ:I = 0x1dc130

.field private static final BIG_CORE_NUM:I = 0x4

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BOOST_TIMEOUT:I = 0x3e8

.field private static final LITTLE_CORE_FREQ:I = 0x1174c0

.field private static final LITTLE_CORE_NUM:I = 0x4

.field private static final MAX_BOOST_NUM:I = 0x5

.field private static final MIN_INTERVAL:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "ScreenOnCpuBoostHelper"

.field private static enableBoost:Z


# instance fields
.field private isBoostCpu:Z

.field private mBoostNum:J

.field private mLastBoostTime:J

.field private mPerfHandler:I

.field private mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->enableBoost:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 36
    iput-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mLastBoostTime:J

    .line 37
    iput-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mBoostNum:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->isBoostCpu:Z

    .line 42
    invoke-direct {p0}, Lcom/android/server/power/ScreenOnCpuBoostHelper;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScn()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    .line 50
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v1, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v2, 0x2

    move v4, v3

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScnConfig(IIIIII)V

    .line 51
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v1, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v2, 0x6

    const v3, 0x1dc130

    const v4, 0x1174c0

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScnConfig(IIIIII)V

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public acquireCpuBoost()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/server/power/ScreenOnCpuBoostHelper;->acquireCpuBoost(I)V

    .line 61
    return-void
.end method

.method public acquireCpuBoost(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    .line 64
    sget-boolean v2, Lcom/android/server/power/ScreenOnCpuBoostHelper;->enableBoost:Z

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mLastBoostTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mBoostNum:J

    .line 73
    :goto_1
    iget-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mBoostNum:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 75
    iput-wide v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mLastBoostTime:J

    .line 76
    iget-object v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/ScreenOnCpuBoostHelper;->init()V

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v3, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    invoke-interface {v2, v3, p1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userEnableTimeoutMs(II)V

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->isBoostCpu:Z

    goto :goto_0

    .line 71
    :cond_4
    iget-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mBoostNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mBoostNum:J

    goto :goto_1
.end method

.method public releaseCpuBoost()V
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->enableBoost:Z

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->isBoostCpu:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v1, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->mPerfHandler:I

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userDisable(I)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenOnCpuBoostHelper;->isBoostCpu:Z

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 57
    sput-boolean p1, Lcom/android/server/power/ScreenOnCpuBoostHelper;->enableBoost:Z

    .line 58
    return-void
.end method
