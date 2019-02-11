.class public Lcom/android/server/am/OppoAbnormalAppManager;
.super Ljava/lang/Object;
.source "OppoAbnormalAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;
    }
.end annotation


# static fields
.field private static final BROADCAST_MSG:I = 0x65

.field private static final BROADCAST_TOP_MSG:I = 0x67

.field public static DEBUG_DETAIL:Z = false

.field public static MAX_LIST_COUNT:I = 0x0

.field private static final SERVICE_MSG:I = 0x66

.field public static TAG:Ljava/lang/String;

.field private static mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;


# instance fields
.field final ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_TIME_INFO:Ljava/lang/String;

.field DEBUG:Z

.field DEBUG_SWITCH:Z

.field DynamicDebug:Z

.field final GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBroadcastComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastTimeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCountRestrictedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerReady:Z

.field mLastCheckBroadcastTime:J

.field mLastCheckServiceTime:J

.field mLastCheckTime:J

.field mPersistRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOffRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mServiceTimeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mServiceTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStartAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAppStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStartInfoWhiteList:Ljava/util/List;
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

.field mTopBroadcastInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTopBroadcastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTopThirdBroadcastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUploadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "OppoAbnormalAppManager"

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    .line 61
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OppoAbnormalAppManager;->MAX_LIST_COUNT:I

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    .line 75
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    .line 79
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    .line 86
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

    .line 88
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

    .line 90
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_COUNT_RESTRICT_LIST"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

    .line 92
    const-string v0, "oppo.guard.elf.support"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    .line 112
    iput-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 116
    const-string v0, "android.intent.action.OPPO_GUARD_TIME_INFO"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_TIME_INFO:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeInfo:Ljava/util/ArrayList;

    .line 119
    iput-wide v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckBroadcastTime:J

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeInfo:Ljava/util/ArrayList;

    .line 122
    iput-wide v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckServiceTime:J

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastInfo:Ljava/util/ArrayList;

    .line 131
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    .line 132
    iput-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    .line 816
    new-instance v0, Lcom/android/server/am/OppoAbnormalAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoAbnormalAppManager$1;-><init>(Lcom/android/server/am/OppoAbnormalAppManager;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastComparator:Ljava/util/Comparator;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoAbnormalAppManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoAbnormalAppManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # I

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/OppoAbnormalAppManager;->sendTimeBroadcast(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoAbnormalAppManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoAbnormalAppManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->sendTopBroadcast()V

    return-void
.end method

.method private cpuSumInfo()J
    .locals 10

    .prologue
    .line 861
    const/4 v5, 0x0

    .line 862
    .local v5, "i":I
    const-wide/16 v6, 0x0

    .line 863
    .local v6, "sum_freq":J
    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_0

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 865
    .local v0, "begintime":J
    new-instance v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 866
    .local v4, "fn":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/OppoAbnormalAppManager;->readCpu(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 868
    .local v2, "endtime":J
    add-int/lit8 v5, v5, 0x1

    .line 869
    goto :goto_0

    .line 870
    .end local v0    # "begintime":J
    .end local v2    # "endtime":J
    .end local v4    # "fn":Ljava/lang/String;
    :cond_0
    return-wide v6
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAbnormalAppManager;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAbnormalAppManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    .line 161
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    return-object v0
.end method

.method private handleCountRestrictedList()V
    .locals 6

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v4

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 508
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST! count == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPPO_GUARD_ELF_COUNT_RESTRICT_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "count"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 515
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    :cond_0
    return-void

    .line 508
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private readCpu(Ljava/lang/String;)J
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 827
    const-wide/16 v4, 0x0

    .line 828
    .local v4, "freq":J
    const/4 v3, 0x0

    .line 831
    .local v3, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 833
    const-wide/16 v10, 0x0

    .line 849
    if-eqz v3, :cond_0

    .line 851
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 857
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v10

    .line 836
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    .end local v3    # "inStream":Ljava/io/InputStream;
    .local v6, "inStream":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 838
    :try_start_3
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 839
    .local v7, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 840
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "line":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_2

    .line 842
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v4, v9

    .line 843
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 849
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v7    # "inputReader":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_5

    .line 851
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v6

    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    move-wide v10, v4

    .line 857
    goto :goto_0

    .line 852
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v3, v6

    .line 853
    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_2

    .line 846
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v9, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readCpu exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 849
    if-eqz v3, :cond_3

    .line 851
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 852
    :catch_2
    move-exception v9

    goto :goto_2

    .line 849
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v3, :cond_4

    .line 851
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 853
    :cond_4
    :goto_5
    throw v9

    .line 852
    .restart local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_5

    .line 849
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_4

    .line 846
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v3, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :cond_5
    move-object v3, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private sendTimeBroadcast(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;JI)V
    .locals 6
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "msg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/OppoAnrAppInfo;>;"
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    if-nez v4, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 769
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p6}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 771
    const-string v4, "ServicesTime"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 772
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAnrAppInfo;

    .line 773
    .local v0, "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    if-eqz v0, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->serviceToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 778
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v4, "BroadcastTime"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 779
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAnrAppInfo;

    .line 780
    .restart local v0    # "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    if-eqz v0, :cond_4

    .line 783
    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->broadcastToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 786
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_6

    .line 787
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_GUARD_TIME_INFO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v3, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 789
    .local v1, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 790
    const-string v4, "eventId"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 793
    .end local v1    # "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 794
    const-wide/16 p4, -0x1

    .line 795
    goto :goto_0
.end method

.method private sendTopBroadcast()V
    .locals 12

    .prologue
    .line 721
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 722
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 723
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 724
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 725
    .local v6, "topSize":I
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 726
    .local v5, "thirdSize":I
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/OppoGuardElfConfigUtil;->getTopBroadcastNumber()I

    move-result v4

    .line 727
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 728
    if-lt v1, v4, :cond_3

    .line 737
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 738
    if-lt v1, v4, :cond_5

    .line 747
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v7, :cond_2

    .line 748
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastInfo:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 749
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 750
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.OPPO_GUARD_TIME_INFO"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "data"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 752
    const-string v7, "eventId"

    const-string v8, "TopBroadcastTime"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 757
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 758
    return-void

    .line 731
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAnrAppInfo;

    .line 733
    .local v0, "anrApp":Lcom/android/server/am/OppoAnrAppInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v7

    int-to-long v8, v7

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/OppoGuardElfConfigUtil;->getBroadcastSendCount()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 734
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->topBroadcastToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v0    # "anrApp":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAnrAppInfo;

    .line 743
    .restart local v0    # "anrApp":Lcom/android/server/am/OppoAnrAppInfo;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v7

    int-to-long v8, v7

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/OppoGuardElfConfigUtil;->getBroadcastSendCount()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 744
    iget-object v7, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->topBroadcastToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public cleanStartAppList()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanAbnormalAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    return-void
.end method

.method public cleanUploadInfoList()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanUploadInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    return-void
.end method

.method public collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v0

    .line 236
    .local v0, "appStartInfo":Lcom/android/server/am/OppoAppStartInfo;
    if-nez v0, :cond_0

    .line 237
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OppoAppStartInfo;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v1

    .line 238
    .local v1, "info":Lcom/android/server/am/OppoAppStartInfo;
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v1    # "info":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/am/OppoAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OppoAppStartInfo;->setCurStartTime(J)V

    goto :goto_0
.end method

.method public getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 247
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBroadcastInfoInList(Ljava/util/List;Ljava/lang/String;I)Lcom/android/server/am/OppoAnrAppInfo;
    .locals 5
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAnrAppInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/am/OppoAnrAppInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/OppoAnrAppInfo;>;"
    const/4 v3, 0x0

    .line 798
    if-nez p1, :cond_0

    move-object v0, v3

    .line 810
    :goto_0
    return-object v0

    .line 801
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAnrAppInfo;

    .line 802
    .local v0, "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getBroadcastName()Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getUid()I

    move-result v4

    if-ne v4, p3, :cond_1

    goto :goto_0

    .end local v0    # "appinfo":Lcom/android/server/am/OppoAnrAppInfo;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 810
    goto :goto_0
.end method

.method public handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)Z
    .locals 6
    .param p1, "appinfo"    # Lcom/android/server/am/OppoAppStartInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getIsThird()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 381
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 383
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "don\'t handle! return for top activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    .line 390
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "com.android.cts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "CTS TEST! don\'t handle!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_1
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "handleAbnormalApp setPackageRestricted true!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    .line 398
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->killAbnormalApp(Ljava/lang/String;)V

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    move v2, v3

    .line 405
    goto :goto_0

    .line 402
    :cond_3
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAbnormalApp! pkg isn\'t third app    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleBroadcastTimeInfo(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;ZZZLcom/android/server/am/BroadcastQueue;)V
    .locals 10
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "receiverTime"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "isTimeout"    # Z
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 543
    iget-boolean v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    if-nez v6, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/OppoGuardElfConfigUtil;->getCloseFlag()Z

    move-result v2

    .line 549
    .local v2, "closeFlag":Z
    if-eqz v2, :cond_0

    .line 553
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckBroadcastTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 554
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckBroadcastTime:J

    .line 557
    :cond_3
    const-string v6, "android.intent.action.OPPO_GUARD_TIME_INFO"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 561
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 565
    if-eqz p8, :cond_4

    const-string v6, "background"

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p5, :cond_0

    .line 569
    :cond_4
    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 570
    new-instance v3, Lcom/android/server/am/OppoAnrAppInfo;

    invoke-direct {v3}, Lcom/android/server/am/OppoAnrAppInfo;-><init>()V

    .line 571
    .local v3, "info":Lcom/android/server/am/OppoAnrAppInfo;
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setProcessName(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastReceiverTime(J)V

    .line 573
    invoke-virtual {v3, p4}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastName(Ljava/lang/String;)V

    .line 574
    if-eqz p6, :cond_6

    .line 575
    const-string v6, "ordered"

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    .line 582
    :goto_1
    const-string v6, "foreground"

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 583
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    .line 587
    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cpuSumInfo()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/am/OppoAnrAppInfo;->mCpu:J

    .line 588
    invoke-virtual {v3, p5}, Lcom/android/server/am/OppoAnrAppInfo;->setGuardTimeout(Z)V

    .line 589
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mBroadcastTimeList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v3    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_5
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/OppoGuardElfConfigUtil;->getCheckBroadcastServiceTime()J

    move-result-wide v4

    .line 593
    .local v4, "delay":J
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 594
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 576
    .end local v4    # "delay":J
    .restart local v3    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_6
    if-eqz p7, :cond_7

    .line 577
    const-string v6, "sticky"

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_1

    .line 579
    :cond_7
    const-string v6, "any"

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    goto :goto_2
.end method

.method public handleServicesTimeInfo(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "isTimeout"    # Z

    .prologue
    const/16 v10, 0x66

    .line 600
    iget-boolean v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    if-nez v6, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/OppoGuardElfConfigUtil;->getCloseFlag()Z

    move-result v0

    .line 606
    .local v0, "closeFlag":Z
    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 611
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckServiceTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 612
    :cond_2
    iput-wide v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckServiceTime:J

    .line 615
    :cond_3
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_0

    .line 619
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v6, :cond_4

    if-eqz p2, :cond_0

    .line 623
    :cond_4
    if-eqz p1, :cond_5

    .line 624
    new-instance v1, Lcom/android/server/am/OppoAnrAppInfo;

    invoke-direct {v1}, Lcom/android/server/am/OppoAnrAppInfo;-><init>()V

    .line 625
    .local v1, "info":Lcom/android/server/am/OppoAnrAppInfo;
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setProcessName(Ljava/lang/String;)V

    .line 626
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v6, v4, v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastReceiverTime(J)V

    .line 627
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {v1, v6}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    .line 628
    invoke-virtual {v1, p2}, Lcom/android/server/am/OppoAnrAppInfo;->setGuardTimeout(Z)V

    .line 629
    invoke-direct {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cpuSumInfo()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/OppoAnrAppInfo;->mCpu:J

    .line 630
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mServiceTimeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v1    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_5
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/OppoGuardElfConfigUtil;->getCheckBroadcastServiceTime()J

    move-result-wide v2

    .line 634
    .local v2, "delay":J
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 635
    iget-object v6, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public handleStartAppInfo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startType"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 261
    .local v0, "isThird":Z
    const-string v1, ""

    .line 262
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 264
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 269
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 273
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo processName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 277
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iput-wide v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 279
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now Begin Monitor App StartInfo\'s Time == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OppoAbnormalAppManager;->collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    iget-wide v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/OppoGuardElfConfigUtil;->getCheckStartTimeInterval()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->notifyAbnormalInfo()V

    .line 290
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_3

    .line 291
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo cost time ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_3
    return-void
.end method

.method public handleTopBroadcast(Ljava/lang/String;IILjava/lang/String;ZZLcom/android/server/am/BroadcastQueue;)V
    .locals 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 642
    iget-boolean v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    if-nez v5, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getCloseFlag()Z

    move-result v1

    .line 648
    .local v1, "closeFlag":Z
    if-eqz v1, :cond_0

    .line 652
    if-eqz p1, :cond_0

    const-string v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 656
    const-string v5, "android.intent.action.OPPO_GUARD_TIME_INFO"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 660
    if-ltz p2, :cond_8

    const/16 v5, 0x2710

    if-ge p3, v5, :cond_8

    if-nez p4, :cond_2

    const-string v5, ""

    if-eq p4, v5, :cond_8

    .line 661
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    invoke-virtual {p0, v5, p4, p3}, Lcom/android/server/am/OppoAbnormalAppManager;->getBroadcastInfoInList(Ljava/util/List;Ljava/lang/String;I)Lcom/android/server/am/OppoAnrAppInfo;

    move-result-object v0

    .line 662
    .local v0, "broadcastInfo":Lcom/android/server/am/OppoAnrAppInfo;
    if-nez v0, :cond_7

    .line 663
    new-instance v4, Lcom/android/server/am/OppoAnrAppInfo;

    invoke-direct {v4}, Lcom/android/server/am/OppoAnrAppInfo;-><init>()V

    .line 664
    .local v4, "info":Lcom/android/server/am/OppoAnrAppInfo;
    invoke-virtual {v4, p1}, Lcom/android/server/am/OppoAnrAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v4, p2}, Lcom/android/server/am/OppoAnrAppInfo;->setPid(I)V

    .line 666
    invoke-virtual {v4, p3}, Lcom/android/server/am/OppoAnrAppInfo;->setUid(I)V

    .line 667
    invoke-virtual {v4, p4}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastName(Ljava/lang/String;)V

    .line 668
    if-eqz p5, :cond_4

    .line 669
    const-string v5, "ordered"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    .line 676
    :goto_1
    const-string v5, "foreground"

    iget-object v6, p7, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 677
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    .line 681
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setCount(I)V

    .line 682
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopBroadcastList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v0    # "broadcastInfo":Lcom/android/server/am/OppoAnrAppInfo;
    .end local v4    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getCheckTopBroadcastTime()J

    move-result-wide v2

    .line 715
    .local v2, "delay":J
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 670
    .end local v2    # "delay":J
    .restart local v0    # "broadcastInfo":Lcom/android/server/am/OppoAnrAppInfo;
    .restart local v4    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_4
    if-eqz p6, :cond_5

    .line 671
    const-string v5, "sticky"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_1

    .line 673
    :cond_5
    const-string v5, "any"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    goto :goto_2

    .line 684
    .end local v4    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setCount(I)V

    goto :goto_3

    .line 686
    .end local v0    # "broadcastInfo":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_8
    if-ltz p2, :cond_3

    const/16 v5, 0x2710

    if-le p3, v5, :cond_3

    if-nez p4, :cond_9

    const-string v5, ""

    if-eq p4, v5, :cond_3

    .line 687
    :cond_9
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    invoke-virtual {p0, v5, p4, p3}, Lcom/android/server/am/OppoAbnormalAppManager;->getBroadcastInfoInList(Ljava/util/List;Ljava/lang/String;I)Lcom/android/server/am/OppoAnrAppInfo;

    move-result-object v0

    .line 688
    .restart local v0    # "broadcastInfo":Lcom/android/server/am/OppoAnrAppInfo;
    if-nez v0, :cond_d

    .line 689
    new-instance v4, Lcom/android/server/am/OppoAnrAppInfo;

    invoke-direct {v4}, Lcom/android/server/am/OppoAnrAppInfo;-><init>()V

    .line 690
    .restart local v4    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    invoke-virtual {v4, p1}, Lcom/android/server/am/OppoAnrAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v4, p2}, Lcom/android/server/am/OppoAnrAppInfo;->setPid(I)V

    .line 692
    invoke-virtual {v4, p3}, Lcom/android/server/am/OppoAnrAppInfo;->setUid(I)V

    .line 693
    invoke-virtual {v4, p4}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastName(Ljava/lang/String;)V

    .line 694
    if-eqz p5, :cond_a

    .line 695
    const-string v5, "ordered"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    .line 702
    :goto_4
    const-string v5, "foreground"

    iget-object v6, p7, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 703
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    .line 707
    :goto_5
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setCount(I)V

    .line 708
    iget-object v5, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mTopThirdBroadcastList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 696
    :cond_a
    if-eqz p6, :cond_b

    .line 697
    const-string v5, "sticky"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_4

    .line 699
    :cond_b
    const-string v5, "any"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setBroadcastType(Ljava/lang/String;)V

    goto :goto_4

    .line 705
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setForeground(Z)V

    goto :goto_5

    .line 710
    .end local v4    # "info":Lcom/android/server/am/OppoAnrAppInfo;
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAnrAppInfo;->setCount(I)V

    goto/16 :goto_3
.end method

.method protected inRestrictAppList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "result":Z
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const/4 v0, 0x1

    .line 879
    :cond_0
    monitor-exit v2

    .line 880
    return v0

    .line 879
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readScreenOffResrictFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    .line 167
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readStartInfoWhiteFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    .line 168
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readPersistRestrictFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    .line 169
    return-void
.end method

.method public initStatus(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 529
    .local v1, "pms":Landroid/content/pm/PackageManager;
    const-string v2, "oppo.guard.elf.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 530
    .local v0, "hasGuardElfFeature":Z
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStatus hasGuardElfFeature is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eqz v0, :cond_0

    .line 533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    .line 534
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->initData()V

    .line 535
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->registerLogModule()V

    .line 537
    :cond_0
    return-void
.end method

.method public isPackageRestricted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    monitor-exit v1

    .line 301
    :goto_0
    return v0

    .line 300
    :cond_0
    monitor-exit v1

    .line 301
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOffRestrictApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "result":Z
    invoke-static {}, Lcom/android/server/coloros/OppoSysStateManager;->getInstance()Lcom/android/server/coloros/OppoSysStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/coloros/OppoSysStateManager;->restrictStartupBg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    const/4 v0, 0x1

    .line 934
    :cond_0
    monitor-exit v2

    .line 936
    :cond_1
    return v0

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public killAbnormalApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killAbnormalApp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 414
    :cond_0
    return-void
.end method

.method public notifyAbnormalInfo()V
    .locals 6

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "hasAbnormalApp":Z
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 190
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v4

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getAbnormalStartCount()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 191
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 192
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "#################  AbnormalInfo app  ##########################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v4, "abnormal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "###############################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    const/4 v3, 0x0

    .line 197
    .local v3, "isHandled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)Z

    move-result v3

    .line 199
    if-eqz v3, :cond_0

    .line 200
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "abnormal appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v1, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "isHandled":Z
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v4

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getCollectStartCount()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 204
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_3

    .line 205
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "---------------------  warning app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v4, "warning appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 207
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "warning appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_0

    .line 212
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------  normalInfo app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v4, "normal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 214
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->sendAbnormalNotify()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanStartAppList()V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanUploadInfoList()V

    .line 226
    if-eqz v1, :cond_7

    .line 227
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_6

    .line 228
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "hasAbnormalApp savePersistRestrictedFile!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoAbnormalAppManager;->savePersistRestrictedFile(Ljava/util/List;)V

    .line 231
    :cond_7
    return-void
.end method

.method public openLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 890
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "#####openlog####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->setDynamicDebugSwitch(Z)V

    .line 893
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method public registerLogModule()V
    .locals 7

    .prologue
    .line 898
    :try_start_0
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "registerLogModule!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v3, "com.android.server.OppoDynamicLogManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 900
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

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

    .line 901
    const-string v3, "invokeRegisterLogModule"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 902
    .local v2, "m":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

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

    .line 903
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "invoke end!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 924
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v1

    .line 907
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 908
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 911
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 914
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 919
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 920
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 922
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public savePersistRestrictedFile(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "restrictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "savePersistRestrictedFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoAamUtils;->savePersistRestrictFile(Ljava/util/List;)V

    .line 499
    return-void
.end method

.method public sendAbnormalNotify()V
    .locals 4

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "startinfo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    :cond_0
    return-void
.end method

.method public sendUnRestrictNotify(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "unrestrict"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 522
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->initStatus(Landroid/content/Context;)V

    .line 523
    new-instance v0, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAbnormalAppManager$AbnormalAppManagerHandler;-><init>(Lcom/android/server/am/OppoAbnormalAppManager;Lcom/android/server/am/OppoAbnormalAppManager$1;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandler:Landroid/os/Handler;

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mHandlerReady:Z

    .line 525
    return-void
.end method

.method public setDynamicDebugSwitch(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    .line 885
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    .line 886
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->setDynamicDebugSwitch()V

    .line 887
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 1
    .param p1, "lastCheckTime"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 173
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "isChange":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    if-nez p2, :cond_1

    .line 308
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted remove packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    const/4 v0, 0x1

    .line 313
    monitor-exit v2

    .line 326
    :cond_1
    :goto_0
    return v0

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 316
    :cond_2
    if-eqz p2, :cond_1

    .line 317
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 318
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted add packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 320
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v0, 0x1

    .line 322
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public setPackageUnRestricted(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    move-result v0

    .line 335
    .local v0, "isChange":Z
    if-eqz v0, :cond_0

    .line 336
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v2, "setPackageUnRestricted updateRestrictedFile!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->savePersistRestrictedFile(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateScreenOffRestrictedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "screenoffRestrictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_0

    .line 439
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "updateScreenOffRestrictedList!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    if-eqz v2, :cond_1

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 444
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOffRestrictedList str == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 449
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    monitor-exit v3

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateScreenStatus(Z)V
    .locals 3
    .param p1, "isScreenOn"    # Z

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenStatus isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    if-eqz p1, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleCountRestrictedList()V

    .line 493
    :cond_1
    return-void
.end method

.method public updateStartInfoWhiteList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "startInfoWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_0

    .line 455
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "updateStartInfoWhiteList!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DynamicDebug:Z

    if-eqz v3, :cond_1

    .line 459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStartInfoWhiteList str == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "cancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v4

    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 469
    .restart local v2    # "str":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 473
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 474
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 475
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_4

    .line 480
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  cancel from startinfo whitelist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_2

    .line 484
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public validNewProc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x1

    .line 344
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 374
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 348
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    const/4 v0, 0x0

    .line 359
    :cond_1
    monitor-exit v3

    :cond_2
    :goto_1
    move v1, v0

    .line 374
    .restart local v1    # "result":I
    goto :goto_0

    .line 359
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 361
    :cond_3
    invoke-static {}, Lcom/android/server/coloros/OppoSysStateManager;->getInstance()Lcom/android/server/coloros/OppoSysStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/coloros/OppoSysStateManager;->restrictStartupBg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 363
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 364
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 365
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCountRestrictedList add packageName == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_4
    const/4 v0, 0x0

    .line 370
    :cond_5
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
