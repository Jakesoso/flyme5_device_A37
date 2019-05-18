.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field final MSG_DISABLE:I

.field final MSG_ENABLE:I

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field switchHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 112
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->MSG_ENABLE:I

    .line 113
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->MSG_DISABLE:I

    .line 114
    new-instance v0, Lcom/android/internal/policy/impl/WindowOrientationListener$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$1;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->switchHandler:Landroid/os/Handler;

    .line 99
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 100
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 101
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->sendDisable()V

    .line 205
    return-void
.end method

.method doDisable()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v1

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 140
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 146
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 268
    :cond_0
    monitor-exit v1

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 155
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->sendEnable()V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v1

    .line 175
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_2

    .line 167
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 174
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProposedRotation()I
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method sendDisable()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->switchHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    return-void
.end method

.method sendEnable()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->switchHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    return-void
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
