.class Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintScreenOnCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 1760
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onVerifyDone(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v3, 0x3

    .line 1767
    const-string v0, "ray"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerprintScreenOnCallBack : onVerifyDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFingerprintHook:Lcom/oppo/FingerprintHook;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/oppo/FingerprintHook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFingerprintHook:Lcom/oppo/FingerprintHook;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/oppo/FingerprintHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/FingerprintHook;->onVerifyDone(I)V

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mFingerprintScreenOnCallBack:Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3102(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;)Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;

    .line 1774
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenOnCpuBoostHelper:Lcom/android/server/power/ScreenOnCpuBoostHelper;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/ScreenOnCpuBoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ScreenOnCpuBoostHelper;->releaseCpuBoost()V

    .line 1775
    packed-switch p1, :pswitch_data_0

    .line 1795
    :goto_0
    return-void

    .line 1781
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mStartGoToSleep:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 1783
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JI)V
    invoke-static {v0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;JI)V

    goto :goto_0

    .line 1790
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$FingerprintScreenOnCallBack;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternalEx(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;JIII)V

    goto :goto_0

    .line 1775
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
