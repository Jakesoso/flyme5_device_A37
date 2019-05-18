.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$conn:Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;

.field final synthetic val$falAllData:Z

.field final synthetic val$falCurUser:I

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$ClearStorageConnection;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 12855
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$falCurUser:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$conn:Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$10;->val$falAllData:Z

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$10;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 12858
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDirectoryThread start running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12859
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$falCurUser:I

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 12860
    .local v0, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$conn:Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearDirectory(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V

    .line 12862
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$falAllData:Z

    if-eqz v1, :cond_0

    .line 12863
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$conn:Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearDirectory(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V

    .line 12865
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$conn:Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearDirectory(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)V

    .line 12869
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$lock:Ljava/lang/Object;

    monitor-enter v2

    .line 12870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->backgroundClearIsRunning:Z

    .line 12871
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 12872
    monitor-exit v2

    .line 12873
    return-void

    .line 12872
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
