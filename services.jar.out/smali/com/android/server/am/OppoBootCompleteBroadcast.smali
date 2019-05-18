.class Lcom/android/server/am/OppoBootCompleteBroadcast;
.super Ljava/lang/Object;
.source "OppoBootCompleteBroadcast.java"


# static fields
.field private static final ACTION_OPPO_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.OPPO_BOOT_COMPLETED"

.field private static final BROADCAST_COUNT_MIN:I = 0x14

.field static final CHECK_IDLE_MSG:I = 0x190

.field private static final DEBUG_OPPO_BT:Z = false

.field private static final DEBUG_OPPO_BT_LIGHT:Z = true

.field private static final FEATURE_OPPO_BOOT_COMPLETE:Ljava/lang/String; = "oppo.ams.broadcast.oppobt"

.field static final MAX_COUNT_TO_CHECK:I = 0x3

.field private static final MIN_SCORE:I = 0x1e

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TIME_DELAY_FOR_CHECK_IDLE:I = 0x7530

.field static final TIME_DELAY_FOR_NEXT_CHECK:I = 0x9c40

.field private static mInstance:Lcom/android/server/am/OppoBootCompleteBroadcast;


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mCheckIdleCallBack:Ljava/lang/Runnable;

.field private mEnableOppoBootComplete:Z

.field private mIdleCheckCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mInstance:Lcom/android/server/am/OppoBootCompleteBroadcast;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mEnableOppoBootComplete:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I

    .line 75
    new-instance v0, Lcom/android/server/am/OppoBootCompleteBroadcast$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoBootCompleteBroadcast$1;-><init>(Lcom/android/server/am/OppoBootCompleteBroadcast;)V

    iput-object v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mCheckIdleCallBack:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.ams.broadcast.oppobt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mEnableOppoBootComplete:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoBootCompleteBroadcast;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoBootCompleteBroadcast;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/am/OppoBootCompleteBroadcast;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OppoBootCompleteBroadcast;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mIdleCheckCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoBootCompleteBroadcast;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoBootCompleteBroadcast;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/am/OppoBootCompleteBroadcast;->isSystemIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoBootCompleteBroadcast;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoBootCompleteBroadcast;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoBootCompleteBroadcast;->postCheckIdleCallBack(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OppoBootCompleteBroadcast;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoBootCompleteBroadcast;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/am/OppoBootCompleteBroadcast;->sendOppoBootCompleteBroadcast()V

    return-void
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoBootCompleteBroadcast;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mInstance:Lcom/android/server/am/OppoBootCompleteBroadcast;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/am/OppoBootCompleteBroadcast;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoBootCompleteBroadcast;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mInstance:Lcom/android/server/am/OppoBootCompleteBroadcast;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mInstance:Lcom/android/server/am/OppoBootCompleteBroadcast;

    return-object v0
.end method

.method private isBroadcastQueueIdle()Z
    .locals 5

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v0, v3, v4

    .line 145
    .local v0, "bgBroadcastCount":I
    iget-object v3, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    .line 147
    .local v1, "fgBroadcastCount":I
    add-int v2, v0, v1

    .line 152
    .local v2, "totalBroadcastCount":I
    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isProcStartIdle()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemIdle()Z
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "idleScore":I
    invoke-direct {p0}, Lcom/android/server/am/OppoBootCompleteBroadcast;->isBroadcastQueueIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    add-int/lit8 v0, v0, 0x14

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OppoBootCompleteBroadcast;->isProcStartIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    add-int/lit8 v0, v0, 0xa

    .line 111
    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postCheckIdleCallBack(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mEnableOppoBootComplete:Z

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-lez p1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mCheckIdleCallBack:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 70
    :cond_2
    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mCheckIdleCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private sendOppoBootCompleteBroadcast()V
    .locals 8

    .prologue
    .line 115
    iget-object v6, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserStartedState;

    .line 118
    .local v4, "uss":Lcom/android/server/am/UserStartedState;
    iget-object v5, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 120
    .local v3, "userId":I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPPO_BOOT_COMPLETED"

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const/high16 v5, 0x8000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const-string v5, "ActivityManager"

    const-string v7, "AMS: sendOppoBootCompleteBroadcast begin:"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v2, Lcom/android/server/am/OppoBootCompleteBroadcast$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/OppoBootCompleteBroadcast$2;-><init>(Lcom/android/server/am/OppoBootCompleteBroadcast;)V

    .line 134
    .local v2, "resultTo":Landroid/content/IIntentReceiver;
    iget-object v5, p0, Lcom/android/server/am/OppoBootCompleteBroadcast;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->broadcastOppoBootComleteLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;I)I

    .line 135
    const-string v5, "ActivityManager"

    const-string v7, "AMS: sendOppoBootCompleteBroadcast end."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v3    # "userId":I
    .end local v4    # "uss":Lcom/android/server/am/UserStartedState;
    :cond_0
    monitor-exit v6

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public triggerOppoBootcompleteBroadcast()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoBootCompleteBroadcast;->postCheckIdleCallBack(I)V

    .line 61
    return-void
.end method
