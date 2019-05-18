.class Lcom/android/server/power/OppoScreenOnWakeLockCheck;
.super Ljava/lang/Object;
.source "OppoScreenOnWakeLockCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    }
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_SCREENON_WAKELOCK:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_SCREENON_WAKELOCK"

.field private static final ATAG:Ljava/lang/String; = "OppoWakeLockCheck"

.field private static final DCS_MORE_DEBUG_INFO:Z = true


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
            "Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;",
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
    .line 46
    .local p1, "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p3, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    .line 52
    iput-object p5, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    .line 53
    iput-boolean p6, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/OppoScreenOnWakeLockCheck;)Lcom/android/server/power/CommonUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/OppoScreenOnWakeLockCheck;)Lcom/android/server/power/PowerManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/OppoScreenOnWakeLockCheck;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    return-object v0
.end method

.method private addScreenOnReportListLocked(IJLjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "hold"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    move-result-object v1

    .line 109
    .local v1, "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    .end local v1    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;-><init>(Lcom/android/server/power/OppoScreenOnWakeLockCheck;IJLjava/lang/String;I)V

    .line 111
    .restart local v1    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    iget-object v0, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method private getScreenOnWakeLock(I)Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 96
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    .line 98
    .local v2, "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    iget v3, v2, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    if-ne p1, v3, :cond_0

    .line 103
    .end local v2    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    :goto_1
    return-object v2

    .line 96
    .restart local v2    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private removeFlagOnAfterRelease()V
    .locals 11

    .prologue
    const v10, -0x20000001

    .line 116
    iget-object v7, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 148
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v8, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 121
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 123
    iget-object v7, p0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 125
    .local v6, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v9, 0xffff

    and-int v4, v7, v9

    .line 126
    .local v4, "type":I
    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    const/16 v7, 0xa

    if-eq v4, v7, :cond_2

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_2

    .line 122
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v7, :cond_4

    .line 133
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7}, Landroid/os/WorkSource;->size()I

    move-result v3

    .line 134
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    if-ge v2, v3, :cond_1

    .line 135
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 136
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 137
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v7, v10

    iput v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    goto :goto_2

    .line 147
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "size":I
    .end local v4    # "type":I
    .end local v5    # "uid":I
    .end local v6    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 134
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    .restart local v3    # "size":I
    .restart local v4    # "type":I
    .restart local v5    # "uid":I
    .restart local v6    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    .end local v2    # "k":I
    .end local v3    # "size":I
    .end local v5    # "uid":I
    :cond_4
    :try_start_1
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-direct {p0, v7}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 143
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v7, v10

    iput v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    goto :goto_2

    .line 147
    .end local v4    # "type":I
    .end local v6    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private reportScreenOnWakelock()V
    .locals 20

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 152
    .local v12, "len":I
    if-nez v12, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    invoke-virtual {v2}, Lcom/android/server/power/CommonUtil;->getForegroundPackage()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "foregroundPackage":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoWakeLockCheck"

    const-string v17, "reportScreenOnWakelock: foregroundPackage is null, return!!!"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_3
    const/4 v6, -0x1

    .line 163
    .local v6, "foregroundPackageUid":I
    const-string v4, ""

    .line 164
    .local v4, "topAppName":Ljava/lang/String;
    const-string v5, ""

    .line 166
    .local v5, "layers":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    invoke-virtual {v2, v3}, Lcom/android/server/power/CommonUtil;->getUidForPkgName(Ljava/lang/String;)I

    move-result v6

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    invoke-virtual {v2}, Lcom/android/server/power/CommonUtil;->getTopAppName()Ljava/lang/String;

    move-result-object v4

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    invoke-virtual {v2}, Lcom/android/server/power/CommonUtil;->getSurfceLayers()Ljava/lang/String;

    move-result-object v5

    .line 171
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v16, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 173
    .local v11, "isForegroundPackage":Z
    add-int/lit8 v8, v12, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_c

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;

    .line 175
    .local v1, "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    invoke-virtual {v1}, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->updatePkgNameNotLocked()V

    .line 176
    iget-object v2, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    if-nez v2, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    if-eqz v2, :cond_4

    const-string v2, "OppoWakeLockCheck"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: wakeLockScreenOnRecord.mPkgs is null, ignore!!!  uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 182
    :cond_5
    iget-object v7, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v13, :cond_6

    aget-object v14, v7, v9

    .line 183
    .local v14, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 184
    const/4 v11, 0x1

    .line 188
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    if-eqz v2, :cond_7

    const-string v2, "OppoWakeLockCheck"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: current package is foregroundPackage ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), ignore all pkgs, return!!!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 191
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 182
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 195
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mUtil:Lcom/android/server/power/CommonUtil;

    iget v0, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/power/CommonUtil;->isWindowShownForUid(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    if-eqz v2, :cond_a

    const-string v2, "OppoWakeLockCheck"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: current package has window shown ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), ignore all pkgs, return!!!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 202
    :cond_b
    iget-object v2, v1, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v2, v2, v17

    # invokes: Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->getReportString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;->access$000(Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "reportString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 206
    .end local v1    # "rcd":Lcom/android/server/power/OppoScreenOnWakeLockCheck$WakeLockScreenOnRecord;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "reportString":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_e

    .line 207
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->ADBG:Z

    if-eqz v2, :cond_d

    const-string v17, "OppoWakeLockCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: reportString="

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 210
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->needScreenOnWakelockCheck()Z

    move-result v2

    if-nez v2, :cond_f

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 215
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 216
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_SCREENON_WAKELOCK"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mContext:Landroid/content/Context;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-virtual {v2, v10, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public check()V
    .locals 22

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mPms:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->needScreenOnWakelockCheck()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 64
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 65
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 68
    .local v20, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int v7, v2, v6

    .line 69
    .local v7, "type":I
    const/4 v2, 0x6

    if-eq v7, v2, :cond_2

    const/16 v2, 0xa

    if-eq v7, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v7, v2, :cond_2

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 75
    :cond_2
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long v8, v18, v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 76
    .local v4, "hold":J
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3

    .line 77
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v17

    .line 78
    .local v17, "size":I
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 79
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 80
    .local v3, "uid":I
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->addScreenOnReportListLocked(IJLjava/lang/String;I)V

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 83
    .end local v3    # "uid":I
    .end local v16    # "k":I
    .end local v17    # "size":I
    :cond_3
    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v8, p0

    move-wide v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->addScreenOnReportListLocked(IJLjava/lang/String;I)V

    goto :goto_2

    .line 86
    .end local v4    # "hold":J
    .end local v7    # "type":I
    .end local v14    # "N":I
    .end local v15    # "i":I
    .end local v18    # "now":J
    .end local v20    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v14    # "N":I
    .restart local v15    # "i":I
    .restart local v18    # "now":J
    :cond_4
    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->reportScreenOnWakelock()V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->removeFlagOnAfterRelease()V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/OppoScreenOnWakeLockCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
