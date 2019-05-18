.class Lcom/android/server/pm/PackageManagerService$MeasureParams$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$MeasureParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9842
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 9845
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundThread start running "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9847
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9848
    .local v0, "BGThreadStartTime":J
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v5, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 9850
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 9853
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9857
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-wide v8, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v7

    iget-wide v10, v7, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9859
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 9862
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 9864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 9865
    .local v2, "costTime":J
    const-wide/16 v6, 0x7530

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 9866
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundThread calcaulate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # getter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3300(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timeout, cost time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9880
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->val$lock:Ljava/lang/Object;

    monitor-enter v7

    .line 9881
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->backgroundThreadIsRunning:Z
    invoke-static {v6, v8}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3602(Lcom/android/server/pm/PackageManagerService$MeasureParams;Z)Z

    .line 9882
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 9883
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9884
    .end local v0    # "BGThreadStartTime":J
    .end local v2    # "costTime":J
    .end local v5    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :goto_0
    return-void

    .line 9869
    :catch_0
    move-exception v4

    .line 9870
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundThread catch RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9871
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # setter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I
    invoke-static {v6, v12}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3502(Lcom/android/server/pm/PackageManagerService$MeasureParams;I)I

    goto :goto_0

    .line 9873
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 9875
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundThread catch IllegalArgumentException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9876
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    # setter for: Lcom/android/server/pm/PackageManagerService$MeasureParams;->threadState:I
    invoke-static {v6, v12}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->access$3502(Lcom/android/server/pm/PackageManagerService$MeasureParams;I)I

    goto :goto_0

    .line 9883
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "BGThreadStartTime":J
    .restart local v2    # "costTime":J
    .restart local v5    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method
