.class final Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnCpuBoostHelper"
.end annotation


# static fields
.field private static final BIG_CORE_FREQ:I = 0x0

.field private static final BIG_CORE_NUM:I = 0x2

.field private static final BOOST_TIMEOUT:I = 0x5dc

.field private static final DEBUG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "ScreenOnCpuBoostHelper"

.field private static final LITTLE_CORE_FREQ:I = 0x1174c0

.field private static final LITTLE_CORE_NUM:I = 0x4

.field private static final MAX_BOOST_NUM:I = 0x3

.field private static final MIN_INTERVAL:J = 0xea60L

.field private static final enableBoost:Z = true


# instance fields
.field private isBoostCpu:Z

.field private mBoostNum:J

.field private mLastBoostTime:J

.field private mPerfHandler:I

.field private mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 8161
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    .line 8156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 8157
    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mLastBoostTime:J

    .line 8158
    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mBoostNum:J

    .line 8159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->isBoostCpu:Z

    .line 8162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->init()V

    .line 8163
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 8166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 8167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8169
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScn()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    .line 8170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v4, 0x4

    move v3, v2

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScnConfig(IIIIII)V

    .line 8171
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v4, 0x6

    const v6, 0x1174c0

    move v7, v5

    move v8, v5

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userRegScnConfig(IIIIII)V

    .line 8175
    :cond_1
    return-void
.end method


# virtual methods
.method public acquireCpuBoost()V
    .locals 6

    .prologue
    .line 8181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8182
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mLastBoostTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 8183
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mBoostNum:J

    .line 8187
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mBoostNum:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 8195
    :goto_1
    return-void

    .line 8185
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mBoostNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mBoostNum:J

    goto :goto_0

    .line 8189
    :cond_1
    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mLastBoostTime:J

    .line 8190
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->init()V

    .line 8192
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/16 v4, 0x5dc

    invoke-interface {v2, v3, v4}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userEnableTimeoutMs(II)V

    .line 8193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->isBoostCpu:Z

    goto :goto_1
.end method

.method public releaseCpuBoost()V
    .locals 2

    .prologue
    .line 8200
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->isBoostCpu:Z

    if-eqz v0, :cond_0

    .line 8201
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8206
    :cond_0
    :goto_0
    return-void

    .line 8202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->mPerfHandler:I

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userDisable(I)V

    .line 8203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenOnCpuBoostHelper;->isBoostCpu:Z

    goto :goto_0
.end method
