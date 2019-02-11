.class Lcom/android/server/display/AutomaticBrightnessController$4;
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
.field private mPrevLogLux:F

.field private mPrevLogTime:J

.field private mPrevTime:J

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1160
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogTime:J

    .line 1163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogLux:F

    .line 1166
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevTime:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1371
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1170
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1180
    .local v2, "time":J
    sget v4, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v4, v8, :cond_0

    .line 1181
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevTime:J

    .line 1182
    sput v9, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 1185
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 1186
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip onSensorChanaged, pre time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    .end local v2    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 1189
    .restart local v2    # "time":J
    :cond_2
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevTime:J

    .line 1192
    sget v4, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-eq v4, v9, :cond_3

    .line 1193
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_PRETEND_PROX_SENSOR_ABSENT:Z

    if-nez v4, :cond_3

    .line 1194
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG_PRETEND_PROX_SENSOR_ABSENT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_PRETEND_PROX_SENSOR_ABSENT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    :cond_3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v10

    .line 1201
    .local v0, "lux":F
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessModeSupport:Z

    if-eqz v4, :cond_4

    .line 1202
    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLux:F
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1802(F)F

    .line 1203
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLux:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800()F

    move-result v4

    const v5, 0x46ea6000    # 30000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1204
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v11, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1208
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F
    invoke-static {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2002(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1209
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1210
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed in: lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: lux_min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lux_max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mLuxCurrent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mGetDataFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_5
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    sget v4, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-eq v4, v9, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1219
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J
    invoke-static {v4, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2202(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1220
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1221
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->startZeroTimer()V
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1223
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1224
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "onSensorChanged: first received lux = 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1229
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1230
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_b

    .line 1231
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1232
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1233
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received 0lux at"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "now received lux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_7
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    if-eqz v4, :cond_12

    .line 1245
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1246
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 1247
    :cond_8
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_c

    .line 1249
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1250
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1251
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->sendBeginCheckCameraBroadcast(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;Landroid/content/Context;)V

    .line 1252
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1253
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1254
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1358
    .end local v1    # "msg":Landroid/os/Message;
    :cond_9
    :goto_1
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_a

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogLux:F

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    cmpg-float v4, v4, v0

    if-lez v4, :cond_a

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogLux:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 1361
    :cond_a
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged: lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogTime:J

    .line 1363
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->mPrevLogLux:F

    goto/16 :goto_0

    .line 1236
    :cond_b
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "it will not go here"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1257
    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_e

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40800000    # 4.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1264
    :goto_2
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed out1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_d
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto :goto_1

    .line 1258
    :cond_e
    const/high16 v4, 0x43be0000    # 380.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_f

    const/high16 v0, 0x43be0000    # 380.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40000000    # 2.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x43d20000    # 420.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 1259
    :cond_f
    const v4, 0x44802000    # 1025.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_10

    const v0, 0x44802000    # 1025.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40000000    # 2.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x448fc000    # 1150.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 1260
    :cond_10
    const v4, 0x4601b000    # 8300.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_11

    const v0, 0x4601b000    # 8300.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x43be0000    # 380.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x460ca000    # 9000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 1261
    :cond_11
    const v0, 0x461c4000    # 10000.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x44802000    # 1025.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x479c4000    # 80000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 1268
    :cond_12
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBacklightStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " marea="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mareabefore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_13
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 1271
    :cond_14
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v4

    if-ne v4, v8, :cond_16

    .line 1272
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemin:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemax:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$3100(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_15

    .line 1273
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$2702(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1274
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->findAmbientLux(I)F
    invoke-static {v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$3200(Lcom/android/server/display/AutomaticBrightnessController;I)F

    move-result v5

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1276
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$2702(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1277
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemin:F
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1278
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemax:F
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3100(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1279
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2900(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_0

    .line 1283
    :cond_15
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_16

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 1286
    :cond_16
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1287
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v10

    cmpl-float v4, v0, v4

    if-nez v4, :cond_18

    .line 1288
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v10

    .line 1289
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v10

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1290
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v10

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1291
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1352
    :goto_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2702(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1353
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed out2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mBacklightStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_17
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto/16 :goto_1

    .line 1292
    :cond_18
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v8

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_19

    .line 1293
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v8

    .line 1294
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1295
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1296
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_3

    .line 1297
    :cond_19
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v9

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1a

    .line 1298
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v9

    .line 1299
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v9

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1300
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v9

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1301
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_3

    .line 1302
    :cond_1a
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v12

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1b

    .line 1303
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v12

    .line 1304
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v12

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1305
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v12

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1306
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v12}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1307
    :cond_1b
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v11

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1c

    .line 1308
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v11

    .line 1309
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v11

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1310
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v11

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1311
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1313
    :cond_1c
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v5, 0x5

    aget v0, v4, v5

    .line 1314
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1315
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1316
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1319
    :cond_1d
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v10

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1e

    .line 1320
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v10

    .line 1321
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v10

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1322
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40000000    # 2.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1323
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1324
    :cond_1e
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v8

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1f

    .line 1325
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v8

    .line 1326
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1327
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x42dc0000    # 110.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1328
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1329
    :cond_1f
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v9

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_20

    .line 1330
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v9

    .line 1331
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40000000    # 2.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1332
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v9

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1333
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1334
    :cond_20
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v12

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_21

    .line 1335
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v12

    .line 1336
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v12

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1337
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v12

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1338
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v12}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1339
    :cond_21
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v4, v4, v11

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_22

    .line 1340
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v4, v11

    .line 1341
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    aget v5, v5, v11

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1342
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    aget v5, v5, v11

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1343
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3

    .line 1345
    :cond_22
    sget-object v4, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v5, 0x5

    aget v0, v4, v5

    .line 1346
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMinLimit:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1347
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLuxMaxLimit:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1348
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->marea:I
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_3
.end method
