.class Lcom/android/server/power/OppoPartialWakeLockCheck;
.super Ljava/lang/Object;
.source "OppoPartialWakeLockCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    }
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR"

.field private static final ACTION_OPPO_GUARD_ELF_MONITOR_FORCESTOP:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

.field private static final ATAG:Ljava/lang/String; = "OppoWakeLockCheck"


# instance fields
.field private final ADBG:Z

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPms:Lcom/android/server/power/PowerManagerService;

.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncWakeLock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtil:Lcom/android/server/power/CommonUtil;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/CommonUtil;Z)V
    .locals 1
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "pms"    # Lcom/android/server/power/PowerManagerService;
    .param p5, "util"    # Lcom/android/server/power/CommonUtil;
    .param p6, "dbg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/android/server/power/PowerManagerService;",
            "Lcom/android/server/power/CommonUtil;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mSyncWakeLock:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    .line 52
    iput-object p2, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mContext:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    .line 55
    iput-object p5, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    .line 56
    iput-boolean p6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->ADBG:Z

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/OppoPartialWakeLockCheck;)Lcom/android/server/power/CommonUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoPartialWakeLockCheck;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    return-object v0
.end method

.method private addReportListLocked(IJLjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "hold"    # J
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/power/OppoPartialWakeLockCheck;->getTimeoutWakeLock(I)Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    move-result-object v1

    .line 235
    .local v1, "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->updateTagLocked(JLjava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    .end local v1    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;-><init>(Lcom/android/server/power/OppoPartialWakeLockCheck;IJLjava/lang/String;)V

    .line 239
    .restart local v1    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    iget-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTimeoutWakeLock(I)Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 223
    iget-object v3, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    .line 224
    .local v2, "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    iget v3, v2, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->mUid:I

    if-ne p1, v3, :cond_0

    .line 229
    .end local v2    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    :goto_1
    return-object v2

    .line 222
    .restart local v2    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleAudioMixWsNull(JI)V
    .locals 5
    .param p1, "hold"    # J
    .param p3, "uid"    # I

    .prologue
    .line 178
    iget-object v3, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    invoke-virtual {v3}, Lcom/android/server/power/CommonUtil;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "pids":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 180
    const-string v3, "AudioMix"

    invoke-direct {p0, p3, p1, p2, v3}, Lcom/android/server/power/OppoPartialWakeLockCheck;->addReportListLocked(IJLjava/lang/String;)V

    .line 193
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 185
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/android/server/power/CommonUtil;->getProcessForPid(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v2

    .line 189
    .local v2, "trackApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_2

    .line 190
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const-string v4, "AudioMix"

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/power/OppoPartialWakeLockCheck;->addReportListLocked(IJLjava/lang/String;)V

    goto :goto_1
.end method

.method private reportTimeoutWakeLockForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 196
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 197
    .local v2, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 200
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    .line 201
    .local v3, "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    iget-boolean v6, v3, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->isForcestopReported:Z

    if-ne v6, v9, :cond_1

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iput-boolean v9, v3, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->isForcestopReported:Z

    .line 206
    const/4 v6, 0x0

    # invokes: Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->getReportString(Z)Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->access$000(Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;Z)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "reportString":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->ADBG:Z

    if-eqz v6, :cond_0

    const-string v6, "OppoWakeLockCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportTimeoutWakeLockForceStop: reportString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    .end local v3    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    .end local v4    # "reportString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 214
    const-string v6, "type"

    const-string v7, "wakelock"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 217
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method


# virtual methods
.method public canSyncWakeLockAcq(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mSyncWakeLock:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "OppoWakeLockCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canSyncWakeLockAcq: tag{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} can not Acquire, for it\'s detected waste power before!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public check()V
    .locals 26

    .prologue
    .line 106
    const/4 v10, 0x0

    .line 107
    .local v10, "isAudioMixWsNull":Z
    const-wide/16 v6, 0x0

    .line 108
    .local v6, "holdAudioMix":J
    const/16 v18, 0x0

    .line 109
    .local v18, "uidAudioMix":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 111
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/power/PowerManagerService;->needPartialWakelockCheck()Z

    move-result v21

    if-nez v21, :cond_0

    .line 175
    :goto_0
    return-void

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 116
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_8

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 119
    .local v20, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v21, v0

    const v23, 0xffff

    and-int v21, v21, v23

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 116
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 123
    :cond_2
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    move-wide/from16 v24, v0

    sub-long v4, v14, v24

    .line 124
    .local v4, "hold":J
    const-wide/32 v24, 0x493e0

    cmp-long v21, v4, v24

    if-ltz v21, :cond_1

    .line 128
    const-wide/16 v24, 0x3e8

    div-long v4, v4, v24

    .line 129
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 130
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/WorkSource;->size()I

    move-result v16

    .line 131
    .local v16, "size":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 132
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v17

    .line 133
    .local v17, "uid":I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/power/OppoPartialWakeLockCheck;->addReportListLocked(IJLjava/lang/String;)V

    .line 131
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 136
    .end local v11    # "k":I
    .end local v16    # "size":I
    .end local v17    # "uid":I
    :cond_3
    const-string v21, "AudioMix"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->ADBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const-string v21, "OppoWakeLockCheck"

    const-string v23, "check: \'AudioMix\' is held, worksource is null!!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    const/4 v10, 0x1

    .line 139
    move-wide v6, v4

    .line 140
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move/from16 v18, v0

    .line 148
    :cond_5
    :goto_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v23, "*sync*"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move/from16 v21, v0

    const/16 v23, 0x3e8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockByGuardElf(Landroid/os/IBinder;I)V

    .line 150
    add-int/lit8 v9, v9, -0x1

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mSyncWakeLock:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mSyncWakeLock:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_6
    const-string v21, "OppoWakeLockCheck"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check: Internally releasing the wakelock{"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "} acquired by SyncManager"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 159
    .end local v4    # "hold":J
    .end local v20    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 142
    .restart local v4    # "hold":J
    .restart local v20    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_7
    :try_start_1
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move/from16 v17, v0

    .line 143
    .restart local v17    # "uid":I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/power/OppoPartialWakeLockCheck;->addReportListLocked(IJLjava/lang/String;)V

    goto/16 :goto_4

    .line 159
    .end local v4    # "hold":J
    .end local v17    # "uid":I
    .end local v20    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_8
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz v10, :cond_9

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/power/OppoPartialWakeLockCheck;->handleAudioMixWsNull(JI)V

    .line 165
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 166
    .local v12, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v12, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    .line 168
    .local v13, "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    invoke-virtual {v13}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->updatePkgNameNotLocked()V

    .line 169
    invoke-virtual {v13}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->getWarningString()Ljava/lang/String;

    move-result-object v19

    .line 170
    .local v19, "warningString":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/OppoPartialWakeLockCheck;->ADBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const-string v21, "OppoWakeLockCheck"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 174
    .end local v13    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    .end local v19    # "warningString":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OppoPartialWakeLockCheck;->reportTimeoutWakeLockForceStop()V

    goto/16 :goto_0
.end method

.method public clearSyncWakelock()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mSyncWakeLock:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method public reportTimeoutWakeLock()V
    .locals 9

    .prologue
    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 89
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;

    .line 90
    .local v3, "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    const/4 v6, 0x1

    # invokes: Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->getReportString(Z)Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;->access$000(Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;Z)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "reportString":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-boolean v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->ADBG:Z

    if-eqz v6, :cond_0

    const-string v6, "OppoWakeLockCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportTimeoutWakeLock: reportString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "r":Lcom/android/server/power/OppoPartialWakeLockCheck$WakeLockTimeoutRecord;
    .end local v4    # "reportString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 98
    const-string v6, "type"

    const-string v7, "wakelock"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 102
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 103
    return-void
.end method

.method public restampWakeLock()V
    .locals 6

    .prologue
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 76
    .local v2, "uptime":J
    iget-object v5, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/server/power/OppoPartialWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 79
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    monitor-exit v5

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
