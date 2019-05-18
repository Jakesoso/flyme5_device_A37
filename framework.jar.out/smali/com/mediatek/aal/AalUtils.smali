.class public final Lcom/mediatek/aal/AalUtils;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/aal/AalUtils$AalIndex;,
        Lcom/mediatek/aal/AalUtils$AalConfig;
    }
.end annotation


# static fields
.field private static final AAL_DEFAULT_LEVEL:I = 0x80

.field private static final AAL_MAX_LEVEL:I = 0x100

.field private static final AAL_MIN_LEVEL:I = 0x0

.field public static final AAL_MODE_BALANCE:I = 0x1

.field public static final AAL_MODE_LOWPOWER:I = 0x2

.field public static final AAL_MODE_PERFORMANCE:I = 0x0

.field public static final AAL_MODE_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AalUtils"

.field private static sDebug:Z

.field private static sEnabled:Z

.field private static sInstance:Lcom/mediatek/aal/AalUtils;

.field private static sIsAalSupported:Z


# instance fields
.field private mAalMode:I

.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mediatek/aal/AalUtils$AalIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

.field private mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    sput-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    .line 61
    const-string/jumbo v0, "ro.mtk_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    .line 64
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1
.end method

.method constructor <init>(Z)V
    .locals 8
    .param p1, "init"    # Z

    .prologue
    const/16 v7, 0xc0

    const/16 v6, 0xa0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v3, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;)V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 75
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 76
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "AalUtils"

    const-string v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.android.launcher3"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.android.launcher3"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.android.launcher3"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/aal/AalUtils;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/aal/AalUtils;

    .prologue
    .line 52
    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/aal/AalUtils;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/aal/AalUtils;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    return v0
.end method

.method private ensureBacklightLevel(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v0, 0x100

    .line 406
    if-gez p1, :cond_2

    .line 407
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AAL backlight level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    const/4 p1, 0x0

    .line 418
    .end local p1    # "level":I
    :cond_1
    :goto_0
    return p1

    .line 411
    .restart local p1    # "level":I
    :cond_2
    if-le p1, v0, :cond_1

    .line 412
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_3

    .line 413
    const-string v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid AAL backlight level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move p1, v0

    .line 415
    goto :goto_0
.end method

.method private getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;
    .locals 4
    .param p1, "index"    # Lcom/mediatek/aal/AalUtils$AalIndex;

    .prologue
    .line 422
    const/16 v0, 0x80

    .line 423
    .local v0, "level":I
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 430
    :cond_0
    :goto_0
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalConfig;

    invoke-virtual {p1}, Lcom/mediatek/aal/AalUtils$AalIndex;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    return-object v1

    .line 426
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No config for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/aal/AalUtils;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/aal/AalUtils;->getInstance(Z)Lcom/mediatek/aal/AalUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lcom/mediatek/aal/AalUtils;
    .locals 1
    .param p0, "init"    # Z

    .prologue
    .line 199
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/mediatek/aal/AalUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils;-><init>(Z)V

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    .line 202
    :cond_0
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 3

    .prologue
    .line 133
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    return v0
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 576
    packed-switch p1, :pswitch_data_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 578
    :pswitch_0
    const-string v0, "AAL_MODE_PERFORMANCE"

    goto :goto_0

    .line 580
    :pswitch_1
    const-string v0, "AAL_MODE_BALANCE"

    goto :goto_0

    .line 582
    :pswitch_2
    const-string v0, "AAL_MODE_LOWPOWER"

    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native setSmartBacklightStrength(I)V
.end method


# virtual methods
.method public declared-synchronized dumpDebugUsageInternal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nUsage:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, "1. App-based AAL help:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, "    adb shell dumpsys activity aal\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, "2. Dump App-based AAL settings:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, "    adb shell dumpsys activity aal dump\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, "1. App-based AAL debug on:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, "    adb shell dumpsys activity aal debugon\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "1. App-based AAL debug off:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, "    adb shell dumpsys activity aal debugoff\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, "3. Enable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, "    adb shell dumpsys activity aal on\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, "4. Disable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, "    adb shell dumpsys activity aal off\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, "5. Set App-based AAL mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "    adb shell dumpsys activity aal mode <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, "6. Set App-based AAL config for current mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, "    adb shell dumpsys activity aal set <pacakge> <value>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "7. Set App-based AAL config for the mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "    adb shell dumpsys activity aal set <pacakge> <value> <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 479
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpInternal()Ljava/lang/String;
    .locals 8

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nApp-based AAL Mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v6}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), Supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Debug: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const/4 v0, 0x1

    .line 458
    .local v0, "i":I
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 459
    .local v2, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "level":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v0, v0, 0x1

    .line 462
    goto :goto_0

    .line 463
    .end local v2    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    .end local v3    # "level":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 464
    const-string v5, "\nThere is no App-based AAL configuration.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Lcom/mediatek/aal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_1
    sget-boolean v5, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v5, :cond_2

    .line 468
    const-string v5, "AalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 452
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setAalMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 155
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 156
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "AalUtils"

    const-string v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 163
    const-string v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAalMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 167
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalMode(I)V

    goto :goto_0
.end method

.method public declared-synchronized setAalModeInternal(I)Ljava/lang/String;
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v2, :cond_1

    .line 213
    const-string v0, "AAL is not enabled"

    .line 214
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "AalUtils"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v1, v0

    .line 229
    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 220
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 221
    .restart local v0    # "msg":Ljava/lang/String;
    if-ltz p1, :cond_2

    const/4 v2, 0x3

    if-ge p1, v2, :cond_2

    .line 222
    :try_start_1
    iput p1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAalModeInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v3}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_1
    const-string v2, "AalUtils"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 229
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 212
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setDebugInternal(Z)Ljava/lang/String;
    .locals 3
    .param p1, "debug"    # Z

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-object v0

    .line 263
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDefaultSmartBacklightInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 388
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 389
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "AalUtils"

    const-string v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 395
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v0, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v0, v1, :cond_0

    .line 396
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartBacklightStrength(128) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/16 v1, 0x80

    iput v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 398
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 399
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 177
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 178
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "AalUtils"

    const-string v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 189
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalEnabled(Z)V

    goto :goto_0
.end method

.method public declared-synchronized setEnabledInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 239
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "AalUtils"

    const-string v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    :try_start_1
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 246
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_2

    .line 247
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/aal/AalUtils;->setDefaultSmartBacklightInternal(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabledInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_2
    :try_start_2
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 328
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "AalUtils"

    const-string v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 334
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightInternal(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v3, :cond_1

    .line 345
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_0

    .line 346
    const-string v3, "AalUtils"

    const-string v4, "AAL is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_1
    if-ltz p2, :cond_2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_3

    .line 352
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_0

    .line 353
    const-string v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 358
    :cond_3
    :try_start_2
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v1, p0, p2, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 359
    .local v1, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-nez v3, :cond_5

    .line 360
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_4

    .line 361
    const-string v3, "AalUtils"

    const-string/jumbo v4, "mCurrentConfig == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_4
    new-instance v3, Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 367
    :cond_5
    invoke-direct {p0, v1}, Lcom/mediatek/aal/AalUtils;->getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;

    move-result-object v0

    .line 368
    .local v0, "config":Lcom/mediatek/aal/AalUtils$AalConfig;
    iget v3, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-direct {p0, v3}, Lcom/mediatek/aal/AalUtils;->ensureBacklightLevel(I)I

    move-result v2

    .line 369
    .local v2, "validLevel":I
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_6

    .line 370
    const-string v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklight current level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v5, v5, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_6
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v3, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v3, v2, :cond_0

    .line 375
    const-string v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklightStrength("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput v2, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 377
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput-object p1, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 378
    invoke-direct {p0, v2}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v1, :cond_1

    .line 278
    const-string v0, "AAL is not enabled"

    .line 279
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 280
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mode"    # I

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v2, :cond_1

    .line 298
    const-string v1, "AAL is not enabled"

    .line 299
    .local v1, "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_0

    .line 300
    const-string v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 305
    :cond_1
    if-ltz p3, :cond_2

    const/4 v2, 0x3

    if-lt p3, v2, :cond_3

    .line 306
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_0

    .line 308
    const-string v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 313
    :cond_3
    :try_start_2
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0, p3, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 314
    .local v0, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_4

    .line 315
    const-string v2, "AalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSmartBacklightTable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_4
    iget-object v2, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method
