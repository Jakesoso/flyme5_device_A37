.class Lcom/android/server/display/AutomaticBrightnessController$5;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevProximityNear:Z

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->mPrevProximityNear:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1397
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x0

    .line 1379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1380
    .local v2, "time":J
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 1381
    .local v0, "its":[F
    aget v1, v0, v8

    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_2

    .line 1382
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1702(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1383
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    const-string v4, "Proximity is near"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->mPrevProximityNear:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorChangeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$3302(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1392
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->mPrevProximityNear:Z

    .line 1393
    return-void

    .line 1385
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z
    invoke-static {v1, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$1702(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1386
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    const-string v4, "Proximity is far"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
