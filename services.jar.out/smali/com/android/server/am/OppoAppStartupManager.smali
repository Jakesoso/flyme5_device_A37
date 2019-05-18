.class public Lcom/android/server/am/OppoAppStartupManager;
.super Ljava/lang/Object;
.source "OppoAppStartupManager.java"


# static fields
.field public static DEBUG_DETAIL:Z

.field public static TAG:Ljava/lang/String;

.field private static mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;


# instance fields
.field DEBUG_SWITCH:Z

.field DynamicDebug:Z

.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionLock:Ljava/lang/Object;

.field mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLock:Ljava/lang/Object;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlackguardLock:Ljava/lang/Object;

.field mProviderBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLock:Ljava/lang/Object;

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiverLock:Ljava/lang/Object;

.field private final mServiceLock:Ljava/lang/Object;

.field mSeviceCpnBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "OppoAppStartupManager"

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    .line 40
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    .line 46
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    .line 49
    const-string v0, "persist.sys.startupmanager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mServiceLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    .line 46
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    .line 49
    const-string v0, "persist.sys.startupmanager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mServiceLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManager;->initData()V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManager;->registerLogModule()V

    .line 79
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAppStartupManager;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/server/am/OppoAppStartupManager;

    const-string v1, "OppoAppStartupManager"

    invoke-direct {v0, v1}, Lcom/android/server/am/OppoAppStartupManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    return-object v0
.end method

.method private updateActionBlackList()V
    .locals 3

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateActionBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 446
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getActionBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateActivityBlackList()V
    .locals 3

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateActivityBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getActivityBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBlackguardList()V
    .locals 3

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateBlackguardList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 456
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getBlackguardList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateProviderBlackList()V
    .locals 3

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateProviderBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getProviderBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateReceiverBlackList()V
    .locals 3

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateReceiverBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getReceiverBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSeviceCpnBlacklist()V
    .locals 3

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateSeviceCpnBlacklist!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getSeviceCpnBlacklist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleBroadcastIncludeForceStop(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 102
    const-string v0, "com.android.cts.robot.ACTION_POST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is CTS app. do not remove the flag!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is the thirdparty app. remove the flag! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    xor-int/lit8 v0, v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public handleSpecialBroadcast(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-nez v5, :cond_0

    move v4, v3

    .line 248
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 214
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 215
    :cond_1
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "intent == null || callerApp == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 216
    .restart local v4    # "result":I
    goto :goto_0

    .line 219
    .end local v4    # "result":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_3

    .line 220
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast callerApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_5

    .line 225
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_4

    .line 226
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleSpecialBroadcast callerApp.uid <= 10000 return"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v3

    .line 227
    .restart local v4    # "result":I
    goto :goto_0

    .line 230
    .end local v4    # "result":I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 231
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_8

    .line 232
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "cpnClassName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_6

    .line 235
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast cpnPkgName == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast cpnClassName == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast callerApp.processName == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAppStartupManager;->inReceiverlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 242
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_7

    .line 243
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "#######handleSpecialBroadcast return skip!!!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_7
    const/4 v3, 0x1

    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_8
    move v4, v3

    .line 248
    .restart local v4    # "result":I
    goto/16 :goto_0
.end method

.method public handleStartActivity(Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "result":Z
    iget-boolean v3, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 277
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 257
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    const/16 v3, 0x2710

    if-gt p3, v3, :cond_3

    .line 258
    iget-boolean v3, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_2

    .line 259
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    .line 260
    .restart local v2    # "result":I
    goto :goto_0

    .line 263
    .end local v2    # "result":I
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 264
    .local v0, "cpnClassName":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v3, :cond_4

    .line 265
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStartActivity cpnPkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStartActivity cpnClassName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStartActivity callerPkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 272
    iget-boolean v3, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_5

    .line 273
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "handleStartActivity return undo!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_5
    const/4 v1, 0x1

    :cond_6
    move v2, v1

    .line 277
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public handleStartActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "beCalledApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v5, v4

    .line 320
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 286
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_2

    .line 287
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartActivity callerApp.uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_2
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_4

    .line 291
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_3

    .line 292
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v4

    .line 293
    .restart local v5    # "result":I
    goto :goto_0

    .line 297
    .end local v5    # "result":I
    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 298
    .local v2, "cpnPkgName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 299
    .local v0, "callerPkgName":Ljava/lang/String;
    const-string v1, ""

    .line 301
    .local v1, "cpnClassName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 302
    .local v6, "shortComponentName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 303
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 304
    .local v3, "index":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .end local v3    # "index":I
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_6

    .line 308
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartActivity cpnPkgName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartActivity cpnClassName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartActivity callerPkgName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 315
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_7

    .line 316
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartActivity return undo!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_7
    const/4 v4, 0x1

    :cond_8
    move v5, v4

    .line 320
    .restart local v5    # "result":I
    goto/16 :goto_0
.end method

.method public handleStartOrBindService(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v5

    .line 176
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 121
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    iget v7, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_3

    .line 122
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_2

    .line 123
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService callerApp.uid <= 10000 return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService callerApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v6, v5

    .line 126
    .restart local v6    # "result":I
    goto :goto_0

    .line 129
    .end local v6    # "result":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_4

    .line 130
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " args="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService callerApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 135
    .local v1, "cpn":Landroid/content/ComponentName;
    if-eqz v1, :cond_8

    .line 136
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "cpnClassName":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_5

    .line 139
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService cpnPkgName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService cpnClassName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService callerApp.processName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoAppStartupManager;->inSeviceCpnlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 146
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_6

    .line 147
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "#######handleStartOrBindService return undo!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_6
    const/4 v5, 0x1

    .end local v2    # "cpnClassName":Ljava/lang/String;
    .end local v3    # "cpnPkgName":Ljava/lang/String;
    :cond_7
    :goto_1
    move v6, v5

    .line 176
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 151
    .end local v6    # "result":I
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_9

    .line 152
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService cpn = null!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 156
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_a

    .line 157
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService action == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "pkgName":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_b

    .line 160
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService pkgName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAppStartupManager;->inActionlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v4, :cond_d

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_d

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 165
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_c

    .line 166
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "#######handleStartOrBindService return undo!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_c
    const/4 v5, 0x1

    goto :goto_1

    .line 168
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAppStartupManager;->inBlackguardList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 169
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_e

    .line 170
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "#######handleStartOrBindService inBlackguardList return undo!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method public handleStartProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v3

    .line 205
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 185
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_3

    .line 186
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_2

    .line 187
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleStartProvider callerApp.uid <= 10000 return"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 188
    .restart local v4    # "result":I
    goto :goto_0

    .line 191
    .end local v4    # "result":I
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 192
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "cpnClassName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "%s %s %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAppStartupManager;->inProviderlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 199
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_4

    .line 200
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleStartProvider return undo!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    const/4 v3, 0x1

    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_5
    move v4, v3

    .line 205
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public inActionlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 371
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 374
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inActionlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    return v0

    .line 371
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inActivitylist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 360
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inActivitylist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return v0

    .line 360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inBlackguardList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 382
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 385
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inBlackguardList result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    return v0

    .line 382
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inProviderlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 349
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inProviderlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return v0

    .line 349
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inReceiverlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 341
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inReceiverlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    return v0

    .line 338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inSeviceCpnlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OppoAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 330
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inSeviceCpnlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    return v0

    .line 327
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateBlacklist()V

    .line 91
    return-void
.end method

.method public openLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 467
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "#####openlog####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoAppStartupManager;->setDynamicDebugSwitch(Z)V

    .line 470
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public registerLogModule()V
    .locals 7

    .prologue
    .line 475
    :try_start_0
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "registerLogModule!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v3, "com.android.server.OppoDynamicLogManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v3, "invokeRegisterLogModule"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 479
    .local v2, "m":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/android/server/am/OppoAppStartupManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v3, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "invoke end!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 501
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 485
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDynamicDebugSwitch(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    .line 462
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    .line 463
    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->setDynamicDebugSwitch()V

    .line 464
    return-void
.end method

.method public updateBlacklist()V
    .locals 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateBlacklist!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateSeviceCpnBlacklist()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateReceiverBlackList()V

    .line 394
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateProviderBlackList()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateActivityBlackList()V

    .line 396
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateActionBlackList()V

    .line 397
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateBlackguardList()V

    .line 398
    return-void
.end method
