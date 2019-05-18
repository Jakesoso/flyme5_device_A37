.class public Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;
    }
.end annotation


# static fields
.field public static final GESTURE_CIRCLE:I = 0x6

.field public static final GESTURE_DOUBLE_SWIP:I = 0x7

.field public static final GESTURE_DOUBLE_TAP:I = 0x1

.field public static final GESTURE_DOWN_TO_UP_SWIP:I = 0xb

.field public static final GESTURE_DOWN_VEE:I = 0x3

.field public static final GESTURE_LEFT_TO_RIGHT_SWIP:I = 0x8

.field public static final GESTURE_LEFT_VEE:I = 0x4

.field public static final GESTURE_M:I = 0xc

.field public static final GESTURE_RIGHT_TO_LEFT_SWIP:I = 0x9

.field public static final GESTURE_RIGHT_VEE:I = 0x5

.field public static final GESTURE_UP_TO_DOWN_SWIP:I = 0xa

.field public static final GESTURE_UP_VEE:I = 0x2

.field public static final GESTURE_W:I = 0xd

.field public static final MSG_SCREEN_TURNED_OFF:I = 0x2711

.field public static final MSG_SCREEN_TURNING_ON:I = 0x2710

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_TIME_CPU_LOCK:I = 0x3e8


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mExManager:Landroid/os/IOppoExService;

.field private mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

.field private mIsInOffHook:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "OppoScreenOffGestureManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "keyguardMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .param p4, "broadcastWakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    .line 60
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 91
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 264
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 100
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "OppoScreenOffGestureManager.mAnimCpuLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 106
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 107
    .local v0, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 109
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    return p1
.end method

.method private dealExScreenOffGesture(I)V
    .locals 4
    .param p1, "nGesture"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 227
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 232
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoScreenOffGestureManager  dealScreenoffGesture nGesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mExManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v1, p1}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing dealScreenoffGesture"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private gestureTosString(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGesture"    # I

    .prologue
    .line 174
    const-string v0, ""

    .line 175
    .local v0, "strGesture":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    const-string v0, "GESTURE_DOUBLE_TAP"

    .line 178
    goto :goto_0

    .line 180
    :pswitch_1
    const-string v0, "GESTURE_UP_VEE"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_2
    const-string v0, "GESTURE_DOWN_VEE"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_3
    const-string v0, "GESTURE_LEFT_VEE"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_4
    const-string v0, "GESTURE_RIGHT_VEE"

    .line 190
    goto :goto_0

    .line 192
    :pswitch_5
    const-string v0, "GESTURE_CIRCLE"

    .line 193
    goto :goto_0

    .line 195
    :pswitch_6
    const-string v0, "GESTURE_DOUBLE_SWIP"

    .line 196
    goto :goto_0

    .line 198
    :pswitch_7
    const-string v0, "GESTURE_LEFT_TO_RIGHT_SWIP"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_8
    const-string v0, "GESTURE_RIGHT_TO_LEFT_SWIP"

    .line 202
    goto :goto_0

    .line 204
    :pswitch_9
    const-string v0, "GESTURE_UP_TO_DOWN_SWIP"

    .line 205
    goto :goto_0

    .line 207
    :pswitch_a
    const-string v0, "GESTURE_DOWN_TO_UP_SWIP"

    .line 208
    goto :goto_0

    .line 210
    :pswitch_b
    const-string v0, "GESTURE_M"

    .line 211
    goto :goto_0

    .line 213
    :pswitch_c
    const-string v0, "GESTURE_W"

    .line 214
    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private isGestureExist(I)Z
    .locals 5
    .param p1, "nGesture"    # I

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "isGestureExist":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v2, :cond_0

    .line 246
    const-string v2, "OPPOExService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v2, :cond_1

    .line 251
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v3, "mExManager == null!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v2, 0x0

    .line 261
    :goto_0
    return v2

    .line 256
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v2, p1}, Landroid/os/IOppoExService;->getGestureState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoScreenOffGestureManager isGestureExist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 261
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v3, "Failing getGestureState"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 114
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 115
    .local v0, "down":Z
    :goto_0
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr p2, v3

    .line 116
    if-eqz p3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-nez v3, :cond_2

    .line 117
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "-----  return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_1
    return p2

    .line 114
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    .restart local v0    # "down":Z
    :cond_2
    const/16 v3, 0x86

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v2, v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    .line 123
    .local v2, "nGesture":I
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 129
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealScreenOffGesture is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->gestureTosString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealExScreenOffGesture(I)V

    goto :goto_1
.end method

.method isGestureDoubleTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v1, v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInOffHook()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenoffGestureKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 222
    const/16 v0, 0x86

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method screenTurnedOff()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 140
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 145
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurnedOff"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method screenTurningOn()V
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 157
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 162
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2710

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurningOn"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateGestureInfo()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->updateGestureInfo()V

    .line 297
    return-void
.end method
