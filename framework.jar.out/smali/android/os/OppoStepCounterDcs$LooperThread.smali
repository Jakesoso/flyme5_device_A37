.class Landroid/os/OppoStepCounterDcs$LooperThread;
.super Ljava/lang/Thread;
.source "OppoStepCounterDcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OppoStepCounterDcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LooperThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 120
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 121
    new-instance v0, Landroid/os/OppoStepCounterDcs$StatisticHandler;

    invoke-direct {v0}, Landroid/os/OppoStepCounterDcs$StatisticHandler;-><init>()V

    # setter for: Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;
    invoke-static {v0}, Landroid/os/OppoStepCounterDcs;->access$102(Landroid/os/OppoStepCounterDcs$StatisticHandler;)Landroid/os/OppoStepCounterDcs$StatisticHandler;

    .line 122
    # getter for: Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;
    invoke-static {}, Landroid/os/OppoStepCounterDcs;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    const-string v0, "OppoStepCounterDcs"

    const-string/jumbo v2, "nofity"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    # getter for: Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;
    invoke-static {}, Landroid/os/OppoStepCounterDcs;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
