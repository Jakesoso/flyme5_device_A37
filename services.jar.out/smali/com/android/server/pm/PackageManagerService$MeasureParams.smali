.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private backgroundThreadIsRunning:Z

.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field private threadState:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 3
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    const/4 v2, 0x0

    .line 9784
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9785
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 9800
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    .line 9801
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I

    .line 9786
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 9787
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    .line 9788
    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MeasureParams;

    .prologue
    .line 9778
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/pm/PackageManagerService$MeasureParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MeasureParams;
    .param p1, "x1"    # I

    .prologue
    .line 9778
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I

    return p1
.end method

.method static synthetic access$3602(Lcom/android/server/pm/PackageManagerService$MeasureParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MeasureParams;
    .param p1, "x1"    # Z

    .prologue
    .line 9778
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    return p1
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 9924
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_0

    .line 9926
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9931
    :cond_0
    :goto_0
    return-void

    .line 9927
    :catch_0
    move-exception v0

    .line 9928
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    .prologue
    .line 9935
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9937
    return-void
.end method

.method handleStartCopy()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 9806
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 9807
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v10, v10, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    .line 9808
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9810
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    if-eqz v7, :cond_1

    .line 9812
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9813
    const/4 v4, 0x1

    .line 9820
    .local v4, "mounted":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 9841
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 9842
    .local v3, "lock":Ljava/lang/Object;
    new-instance v1, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;

    invoke-direct {v7, p0, v3}, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;Ljava/lang/Object;)V

    invoke-direct {v1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9886
    .local v1, "backgroundThread":Ljava/lang/Thread;
    monitor-enter v3

    .line 9888
    const/4 v7, 0x0

    :try_start_1
    iput v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I

    .line 9889
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    .line 9890
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 9891
    const-wide/16 v8, 0x7530

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 9892
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I

    if-ne v7, v6, :cond_5

    .line 9893
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I

    .line 9894
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    .line 9895
    new-instance v6, Landroid/os/RemoteException;

    const-string v7, "backgroundThread catch RemoteException"

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9913
    :catch_0
    move-exception v2

    .line 9914
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 9916
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9920
    .end local v1    # "backgroundThread":Ljava/lang/Thread;
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v4    # "mounted":Z
    :cond_1
    return-void

    .line 9808
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 9815
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 9816
    .local v5, "status":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v4, v6

    .restart local v4    # "mounted":Z
    :cond_4
    goto :goto_0

    .line 9897
    .end local v5    # "status":Ljava/lang/String;
    .restart local v1    # "backgroundThread":Ljava/lang/Thread;
    .restart local v3    # "lock":Ljava/lang/Object;
    :cond_5
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    if-eqz v6, :cond_0

    .line 9898
    const-string v6, "PackageManager"

    const-string v7, "backgroundThread is running, calculateDirectorySize 30s timeout"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9901
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 9902
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundThread give up "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " measure"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9903
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 9904
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z

    .line 9905
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9906
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v6, "com.android.defcontainer"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9908
    const-wide/16 v6, 0x7d0

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 9911
    :goto_1
    :try_start_6
    new-instance v6, Landroid/os/RemoteException;

    const-string v7, "default container service CalculateDirectory timeout"

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9916
    .end local v0    # "am":Landroid/app/ActivityManager;
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 9909
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasureParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
