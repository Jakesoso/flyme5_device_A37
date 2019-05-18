.class Lcom/android/server/display/AutomaticBrightnessController$2;
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
    .line 346
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 349
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 352
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 354
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v3, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v3, v3, v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 356
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v3, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v3, v3, v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 363
    .end local v0    # "time":J
    :cond_1
    return-void

    .line 358
    .restart local v0    # "time":J
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v3, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v3, v3, v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 359
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v3, 0x40000000    # 2.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_0
.end method
