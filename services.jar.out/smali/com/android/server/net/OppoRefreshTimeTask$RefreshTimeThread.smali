.class Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;
.super Ljava/lang/Thread;
.source "OppoRefreshTimeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/OppoRefreshTimeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTimeThread"
.end annotation


# instance fields
.field private mIsWaiting:Z

.field private mRefreshRes:Z

.field private mRunning:Z

.field final synthetic this$0:Lcom/android/server/net/OppoRefreshTimeTask;


# direct methods
.method public constructor <init>(Lcom/android/server/net/OppoRefreshTimeTask;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->this$0:Lcom/android/server/net/OppoRefreshTimeTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRunning:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRefreshRes:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mIsWaiting:Z

    .line 58
    return-void
.end method


# virtual methods
.method public exitRunning()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRunning:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRefreshRes()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRefreshRes:Z

    return v0
.end method

.method public notifyToRefreshTime()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mIsWaiting:Z

    if-eqz v0, :cond_0

    .line 70
    monitor-enter p0

    .line 71
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRefreshRes:Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit p0

    .line 77
    :cond_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRunning:Z

    if-eqz v0, :cond_1

    .line 85
    monitor-enter p0

    .line 87
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mIsWaiting:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mIsWaiting:Z

    .line 94
    iget-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->this$0:Lcom/android/server/net/OppoRefreshTimeTask;

    # getter for: Lcom/android/server/net/OppoRefreshTimeTask;->mTime:Landroid/util/TrustedTime;
    invoke-static {v0}, Lcom/android/server/net/OppoRefreshTimeTask;->access$000(Lcom/android/server/net/OppoRefreshTimeTask;)Landroid/util/TrustedTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->this$0:Lcom/android/server/net/OppoRefreshTimeTask;

    # getter for: Lcom/android/server/net/OppoRefreshTimeTask;->mTime:Landroid/util/TrustedTime;
    invoke-static {v0}, Lcom/android/server/net/OppoRefreshTimeTask;->access$000(Lcom/android/server/net/OppoRefreshTimeTask;)Landroid/util/TrustedTime;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 98
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/net/OppoRefreshTimeTask$RefreshTimeThread;->mRefreshRes:Z

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :cond_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_1
.end method
