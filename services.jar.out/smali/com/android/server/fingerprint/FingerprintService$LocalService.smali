.class final Lcom/android/server/fingerprint/FingerprintService$LocalService;
.super Landroid/hardware/fingerprint/FingerprintInternal;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 2433
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .prologue
    .line 2433
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$LocalService;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public notifyGotoSleep()V
    .locals 2

    .prologue
    .line 2450
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "notifyGotoSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->notifyGotoSleep()V

    .line 2452
    return-void
.end method

.method public notifyPowerKeyPressed()V
    .locals 2

    .prologue
    .line 2444
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "notifyPowerKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->notifyPowerKeyPressed()V

    .line 2446
    return-void
.end method

.method public onGoToSleep()V
    .locals 2

    .prologue
    .line 2468
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onGoToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->onGoToSleep()V

    .line 2470
    return-void
.end method

.method public onGoToSleepFinish()V
    .locals 2

    .prologue
    .line 2474
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onGoToSleepFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->onGoToSleepFinish()V

    .line 2476
    return-void
.end method

.method public onHomeKeyDown()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 2480
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onHomeKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2482
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    const-string v1, "remove MSG_RESET_HOMEKEY_DISPATCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2485
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$3202(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 2486
    return-void
.end method

.method public onHomeKeyUp()V
    .locals 2

    .prologue
    .line 2490
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onHomeKeyUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$3202(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 2492
    return-void
.end method

.method public onWakeUp(Z)V
    .locals 2
    .param p1, "wakeupReason"    # Z

    .prologue
    .line 2456
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onWakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->onWakeUp(Z)V

    .line 2458
    return-void
.end method

.method public onWakeUpFinish()V
    .locals 2

    .prologue
    .line 2462
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onWakeUpFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->onWakeUpFinish()V

    .line 2464
    return-void
.end method

.method public setOnVerifyMonitor(Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .prologue
    .line 2436
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    monitor-enter v1

    .line 2437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;
    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$3002(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;)Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .line 2438
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnVerifyMonitor --> mScreenOnCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LocalService;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_0
    return-void

    .line 2438
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
