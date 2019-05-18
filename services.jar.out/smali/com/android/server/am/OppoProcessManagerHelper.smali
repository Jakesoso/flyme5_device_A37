.class public Lcom/android/server/am/OppoProcessManagerHelper;
.super Ljava/lang/Object;
.source "OppoProcessManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoProcessManager"

.field public static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public static mBroadcastTimeOutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    sput-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 82
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " died but not restart......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 88
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v4, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 89
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 90
    iput-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 92
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 95
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_1
    sget-object v4, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 97
    sget-object v4, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 98
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_2

    .line 99
    sget-object v4, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 100
    sget-object v4, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_3
    return-void
.end method

.method static final checkAutoBootForbiddenStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-boolean v1, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/OppoProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM skip: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    .line 252
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/OppoProcessManager;->checkPackageCanStart(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 265
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OppoProcessManager;->checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    const-string v5, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkProcessWhileBroadcastTimeout proc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p0, :cond_0

    move v5, v8

    .line 203
    :goto_0
    return v5

    .line 155
    :cond_0
    if-eqz p0, :cond_1

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v10, 0x2710

    if-ge v5, v10, :cond_1

    move v5, v8

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v5}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v5, p0}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 160
    :cond_2
    const-string v5, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkProcessWhileBroadcastTimeout !  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 162
    .local v6, "time":J
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 164
    .local v4, "procName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v5, p0}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    const-string v5, "OppoProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "broadcast proc is suspend, resume it in background!  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_1
    iget v5, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, 0x12

    invoke-static {v5, v8}, Landroid/os/Process;->sendSignal(II)V

    move v5, v9

    .line 183
    goto :goto_0

    .line 176
    :cond_3
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/16 v8, 0x1e

    if-le v5, v8, :cond_4

    .line 177
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 179
    :cond_4
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 186
    :cond_5
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mBroadcastTimeOutMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 188
    .local v2, "lastSupendTime":J
    sub-long v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 190
    .local v0, "interval":J
    const-wide/16 v10, 0x4e20

    cmp-long v5, v0, v10

    if-gez v5, :cond_6

    .line 191
    const-string v5, "OppoProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkProcessWhileBroadcastTimeout maybe proc is suspend!  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 192
    goto/16 :goto_0

    .line 196
    .end local v0    # "interval":J
    .end local v2    # "lastSupendTime":J
    :cond_6
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v5, p0}, Lcom/android/server/am/OppoProcessManager;->isUidGroupHasSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 197
    const-string v5, "OppoProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkProcessWhileBroadcastTimeout ths same uid\'s proc has suspend!  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v5, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    move v5, v9

    .line 199
    goto/16 :goto_0

    .end local v4    # "procName":Ljava/lang/String;
    .end local v6    # "time":J
    :cond_7
    move v5, v8

    .line 203
    goto/16 :goto_0
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    if-eqz p0, :cond_2

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 124
    :cond_2
    sget-object v1, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v1, p0}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :cond_3
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout !  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v1, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v1, p0}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service is suspend, resume it in background!  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v1, 0x12

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 287
    return-void
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 314
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/server/am/OppoProcessManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoProcessManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 58
    sput-object p0, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    return-void
.end method

.method static final resumeProcessByUID(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 110
    return-void
.end method

.method static final resumeProvider(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 2
    .param p0, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 69
    :cond_0
    return-void
.end method

.method static final setPhoneAppReadyState(Z)V
    .locals 0
    .param p0, "isPhoneAppReady"    # Z

    .prologue
    .line 273
    return-void
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 3
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    .line 235
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-object v1, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OppoProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final updateProcessState(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 210
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/android/server/am/OppoProcessManagerHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OppoProcessManager;->updateProcessState(Lcom/android/server/am/ProcessRecord;)V

    .line 213
    :cond_0
    return-void
.end method
