.class Lcom/android/server/am/OppoProcessManager$2;
.super Ljava/lang/Thread;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoProcessManager;->initPhoneStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoProcessManager;)V
    .locals 0

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$2;->this$0:Lcom/android/server/am/OppoProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1504
    :cond_0
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$2;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1509
    const-string v0, "OppoProcessManager"

    const-string v1, "initPhoneStateReceiver SystemReady!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    new-instance v0, Lcom/android/server/am/OppoPhoneStateReceiver;

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager$2;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/OppoPhoneStateReceiver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1511
    return-void

    .line 1505
    :catch_0
    move-exception v0

    goto :goto_0
.end method
