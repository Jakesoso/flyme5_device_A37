.class Lcom/android/server/display/AutomaticBrightnessController$6;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1403
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1404
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 1405
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLux:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800()F

    move-result v0

    const v1, 0x469c4000    # 20000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/power/PowerManagerService;->mCameraMode:I

    if-eq v0, v2, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const-string v1, "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_HBM"

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_DISABLE:I
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$3400(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v2

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->writeHighbrightnessNodeValue(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$3500(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;I)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z
    invoke-static {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1410
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->mHighBrightness:Z

    .line 1411
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->stopTimer()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$3600(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1417
    :cond_0
    return-void
.end method
