.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/oppo/ota/OppoOtaUtils;->notifyOTAUpdateResult(Landroid/content/Context;)V

    .line 115
    const-string v3, "BootReceiver"

    const-string/jumbo v4, "send delayed message"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, v3, Lcom/android/server/BootReceiver;->mGetStateHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    sget v3, Landroid/os/OppoManager;->TYPE_REBOOT:I

    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    # getter for: Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10406e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/OppoManager;->incrementCriticalData(ILjava/lang/String;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 121
    const-string v3, "BootReceiver"

    const-string/jumbo v4, "increment reboot times failed!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    # invokes: Lcom/android/server/BootReceiver;->updateSerialNoNVLid()V
    invoke-static {v3}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;)V

    .line 131
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    # invokes: Lcom/android/server/BootReceiver;->isRebootExceptionFromBolckException()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BootReceiver;->access$200(Lcom/android/server/BootReceiver;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "lastReboot":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 133
    sget v3, Landroid/os/OppoManager;->TYPE_REBOOT_FROM_BLOCKED:I

    const-string v4, "ANDROID"

    const-string/jumbo v5, "reboot_from_blocked"

    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    # getter for: Lcom/android/server/BootReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v4, v5, v6}, Landroid/os/OppoManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->access$300(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v2, 0x0

    .line 145
    .local v2, "onlyCore":Z
    :try_start_1
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 149
    :goto_1
    if-nez v2, :cond_2

    .line 150
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->access$400(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    :cond_2
    :goto_2
    return-void

    .line 139
    .end local v2    # "onlyCore":Z
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BootReceiver"

    const-string v4, "Can\'t log boot events"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "onlyCore":Z
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "BootReceiver"

    const-string v4, "Can\'t remove old update packages"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_1
.end method
