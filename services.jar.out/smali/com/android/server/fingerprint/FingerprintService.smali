.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$LocalService;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$PendingResult;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$ClientInfo;,
        Lcom/android/server/fingerprint/FingerprintService$MyHandler;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMode;,
        Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;,
        Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x6

.field private static final MAX_TIMEOUT_WAITFOR_REBUILD_CONNECTION:J = 0xbb8L

.field private static final MSG_DAEMON_CALLBACK:I = 0xb

.field private static final MSG_RESET_HOMEKEY_DISPATCH:I = 0x66

.field private static final MSG_USER_ACTIVITY:I = 0x65

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final OPERATION_AUTHENTICATE:I = 0x100

.field private static final OPERATION_CANCEL_AUTHENTICATION:I = 0x101

.field private static final OPERATION_CANCEL_ENROLLMENT:I = 0x103

.field private static final OPERATION_CONTINUE_ENROLL:I = 0x113

.field private static final OPERATION_ENROLL:I = 0x102

.field private static final OPERATION_GET_AUTHENTICATOR_ID:I = 0x108

.field private static final OPERATION_GET_AUTH_TOKEN:I = 0x109

.field private static final OPERATION_GET_ENROLLMENT_TOTALTIMES:I = 0x115

.field private static final OPERATION_GET_FP_IDS:I = 0x111

.field private static final OPERATION_GET_FP_NAME:I = 0x110

.field private static final OPERATION_PAUSE_ENROLL:I = 0x112

.field private static final OPERATION_POST_ENROLL:I = 0x107

.field private static final OPERATION_PRE_ENROLL:I = 0x106

.field private static final OPERATION_REMOVE_FP:I = 0x104

.field private static final OPERATION_RENAME_FP:I = 0x105

.field private static final OPERATION_TOUCH_EVENT:I = 0x114

.field public static final RESET_HOMEKEY_DISPATCH_WAITING_TIME:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field public static final TIMEOUT_GET_FINGERPRINTD:J = 0xc350L


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mClientLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Ljava/lang/String;

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mDaemonCallbackQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mEnrollmentTotalTimes:I

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

.field private mHomeKeyDown:Z

.field private mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLockoutReset:Ljava/lang/Runnable;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

.field private mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

.field final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z

    .line 119
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 120
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 121
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 125
    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollmentTotalTimes:I

    .line 126
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 129
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentApp:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallbackQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 201
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 208
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    .line 1684
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 2431
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .line 2778
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mSystemReady:Z

    .line 217
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "FingerprintService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 220
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 221
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "FingerprintService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 223
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 224
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$MyHandler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService$MyHandler;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Looper;Lcom/android/server/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/android/server/fingerprint/ScreenOffUnlocker;

    const-string v1, "FingerprintService"

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/fingerprint/FingerprintService;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    .line 226
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 227
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 228
    new-instance v0, Lcom/android/server/fingerprint/HealthMonitor;

    const-string v1, "FingerprintService"

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/HealthMonitor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallbackQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivityAsync()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollmentTotalTimes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->startFpManager()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;)Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ScreenOffUnlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/fingerprint/FingerprintService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/HealthMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintDaemon;)Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method private addTemplateForUser(II)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 706
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1215
    const-string v1, "com.excelliance.dualaid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2680
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2682
    :try_start_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "cleanUp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cleanUp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2688
    :cond_1
    :goto_0
    return-void

    .line 2684
    :catch_0
    move-exception v1

    .line 2685
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "cleanUp failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 2787
    .local v16, "uid":I
    const/16 v4, 0x3e8

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump Fingerprint Service from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    :goto_0
    return-void

    .line 2795
    :cond_0
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "<fingerprint daemon started>"

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2796
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintService"

    const-string v5, "received fingerprintd started msg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/HealthMonitor;->fingerprintdSystemReady()V

    .line 2798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2808
    :cond_2
    const/4 v13, 0x0

    .line 2809
    .local v13, "dumpAll":Z
    const/4 v15, 0x0

    .line 2810
    .local v15, "opti":I
    :goto_1
    move-object/from16 v0, p3

    array-length v4, v0

    if-ge v15, v4, :cond_3

    .line 2811
    aget-object v14, p3, v15

    .line 2812
    .local v14, "opt":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_5

    .line 2827
    .end local v14    # "opt":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    array-length v4, v0

    if-ge v15, v4, :cond_9

    .line 2828
    aget-object v12, p3, v15

    .line 2829
    .local v12, "cmd":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    .line 2830
    const-string v4, "log"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "l"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2831
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 2815
    .end local v12    # "cmd":Ljava/lang/String;
    .restart local v14    # "opt":Ljava/lang/String;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 2816
    const-string v4, "-h"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2817
    const-string v4, "fingerprint service dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    const-string v4, "  [-h] [cmd] ..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    const-string v4, "  cmd may be one of:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    const-string v4, "    l[log]: dynamically adjust fingerprint log "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2823
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2835
    .end local v14    # "opt":Ljava/lang/String;
    .restart local v12    # "cmd":Ljava/lang/String;
    :cond_7
    const-string v4, "debug_switch"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  all="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    sget-boolean v4, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintServiceTest;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintsUserState;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 2842
    .end local v12    # "cmd":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2843
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentApp = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFailedAttempts = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHalDeviceId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKeyguardLocked = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKeyguardSecure = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenOnCallback = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getScreenState()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEnrollClient = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAuthClient = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRemoveClient = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImageQualityClient = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    const-string v4, "mScreenOffUnlocker dump"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    const-string v5, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    const-string v4, "mFingerprintUtils dump"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2860
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2861
    .local v10, "userId":I
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 2862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    const-string v8, "  "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/fingerprint/FingerprintUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    .line 2864
    :cond_a
    const-string v4, "mHealthMonitor dump"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    const-string v5, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/fingerprint/HealthMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/HealthMonitor;->getFingerprintdPid()I

    goto/16 :goto_0

    .line 2856
    .end local v10    # "userId":I
    .end local v11    # "callingUid":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getGroups([I)Ljava/util/Vector;
    .locals 3
    .param p1, "gids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 748
    .local v1, "res":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 749
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_1
    return-object v1
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 687
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    if-eqz p1, :cond_0

    const/4 v0, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const-string v0, "FingerprintService"

    const-string v1, "Cannot send lockout message to client"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLockModeDisableList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string v0, "com.android.keyguard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listenForUserSwitches()V
    .locals 3

    .prologue
    .line 2565
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    :goto_0
    return-void

    .line 2586
    :catch_0
    move-exception v0

    .line 2587
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    .line 669
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 661
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_2

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 668
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 663
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_1

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_1

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private removeTemplateForUser(II)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 702
    return-void
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    .line 676
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "FingerprintService"

    const-string v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 680
    return-void
.end method

.method private startFpManager()I
    .locals 1

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/fingerprint/ActivityUtil;->startFpManager(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private stopPendingOperations(Z)V
    .locals 2
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 963
    :cond_1
    monitor-exit v1

    .line 965
    return-void

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncTemplateForUser(ILjava/util/Vector;)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "fids"    # Ljava/util/Vector;

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprintNum(I)I

    move-result v0

    .line 732
    .local v0, "fingerprintNum":I
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 733
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getEnrolledFingerprintNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 735
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fids["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 740
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->syncFingerprintIdForUser(Landroid/content/Context;Ljava/util/Vector;I)V

    .line 744
    :goto_1
    return-void

    .line 742
    :cond_1
    const-string v2, "FingerprintService"

    const-string v3, "templates are synchronized, do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private syncTemplates([I[I)V
    .locals 6
    .param p1, "fingerIds"    # [I
    .param p2, "groupIds"    # [I

    .prologue
    .line 710
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FingerprintService"

    const-string v5, "syncTemplates started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 728
    :cond_1
    return-void

    .line 714
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getGroups([I)Ljava/util/Vector;

    move-result-object v1

    .line 715
    .local v1, "gids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 716
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 717
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 718
    .local v0, "fids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 719
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, p2, v3

    if-ne v4, v5, :cond_3

    .line 720
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 723
    :cond_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 724
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/fingerprint/FingerprintService;->syncTemplateForUser(ILjava/util/Vector;)V

    .line 716
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateActiveGroup(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2536
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2537
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_0

    .line 2539
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    .line 2540
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 2541
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2542
    .local v2, "fpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2543
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2544
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 2550
    .restart local v2    # "fpDir":Ljava/io/File;
    .restart local v3    # "systemDir":Ljava/io/File;
    :cond_1
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2551
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2557
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2558
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2555
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "fpDir":Ljava/io/File;
    .restart local v3    # "systemDir":Ljava/io/File;
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActiveGroup setActiveGroup userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    .line 620
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 621
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 622
    return-void
.end method

.method private userActivityAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 627
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    return-void
.end method


# virtual methods
.method public allowWakeupSpeed()Z
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->allowWakeupSpeed()Z

    move-result v0

    monitor-exit v1

    .line 552
    :goto_0
    return v0

    .line 551
    :cond_0
    monitor-exit v1

    .line 552
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 234
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallbackQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public cancelGetImageQualityInternal()V
    .locals 6

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2659
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2661
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    const-string v4, "cancelGetImageQualityInternal"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelGetImageQuality()I

    move-result v2

    .line 2663
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 2664
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelGetImageQuality failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2670
    .end local v2    # "result":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2671
    :try_start_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_2

    .line 2672
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 2673
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 2675
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2676
    return-void

    .line 2666
    :catch_0
    move-exception v1

    .line 2667
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "cancelGetImageQuality failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2675
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "operationCode"    # I

    .prologue
    .line 1851
    packed-switch p1, :pswitch_data_0

    .line 1868
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1852
    :pswitch_1
    const-string v0, "OPERATION_AUTHENTICATE"

    goto :goto_0

    .line 1853
    :pswitch_2
    const-string v0, "OPERATION_CANCEL_AUTHENTICATION"

    goto :goto_0

    .line 1854
    :pswitch_3
    const-string v0, "OPERATION_ENROLL"

    goto :goto_0

    .line 1855
    :pswitch_4
    const-string v0, "OPERATION_CANCEL_ENROLLMENT"

    goto :goto_0

    .line 1856
    :pswitch_5
    const-string v0, "OPERATION_REMOVE_FP"

    goto :goto_0

    .line 1857
    :pswitch_6
    const-string v0, "OPERATION_RENAME_FP"

    goto :goto_0

    .line 1858
    :pswitch_7
    const-string v0, "OPERATION_PRE_ENROLL"

    goto :goto_0

    .line 1859
    :pswitch_8
    const-string v0, "OPERATION_POST_ENROLL"

    goto :goto_0

    .line 1860
    :pswitch_9
    const-string v0, "OPERATION_GET_AUTHENTICATOR_ID"

    goto :goto_0

    .line 1861
    :pswitch_a
    const-string v0, "OPERATION_GET_AUTH_TOKEN"

    goto :goto_0

    .line 1862
    :pswitch_b
    const-string v0, "OPERATION_GET_FP_NAME"

    goto :goto_0

    .line 1863
    :pswitch_c
    const-string v0, "OPERATION_GET_FP_IDS"

    goto :goto_0

    .line 1864
    :pswitch_d
    const-string v0, "OPERATION_PAUSE_ENROLL"

    goto :goto_0

    .line 1865
    :pswitch_e
    const-string v0, "OPERATION_CONTINUE_ENROLL"

    goto :goto_0

    .line 1866
    :pswitch_f
    const-string v0, "OPERATION_TOUCH_EVENT"

    goto :goto_0

    .line 1851
    nop

    :pswitch_data_0
    .packed-switch 0x100
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method dealUnsentAuthenticated()V
    .locals 7

    .prologue
    .line 500
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v3}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    .line 501
    .local v0, "black":Z
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 502
    .local v2, "isKeyguardLocked":Z
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->hasDelayedSuccessResult(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v1

    .line 503
    .local v1, "hasDelayedSuccessResult":Z
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealUnsentAuthenticated, black = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasDelayedSuccessResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isKeyguardLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v4

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->isAuthKeyguard(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 506
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealUnsentAuthenticated skip, not AuthKeyguard, mAuthClient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    monitor-exit v4

    .line 518
    :goto_0
    return-void

    .line 509
    :cond_2
    if-eqz v0, :cond_4

    .line 510
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FingerprintService"

    const-string v5, "is black just do nothing"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 513
    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->hasValidAuthenticatedResult()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isAuthenticatedResultSent()Z

    move-result v3

    if-nez v3, :cond_5

    .line 514
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->dispatchDelayedAuthenticated()V

    .line 515
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "FingerprintService"

    const-string v5, " dispatchDelayedAuthenticated in dealUnsentAuthenticated"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected dispatchAcquired(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAcquired acquiredInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 396
    :cond_1
    :goto_0
    monitor-exit v1

    .line 397
    return-void

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchAuthenticated(JII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    .line 328
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v3}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    .line 329
    .local v0, "isBlack":Z
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchAuthenticated , isBlack = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_a

    .line 332
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z

    if-eqz v4, :cond_2

    .line 333
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintService"

    const-string v5, "drop home key"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drop_home_key_when_use_fingerprint"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    :cond_2
    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    iget-boolean v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHomeKeyDown:Z

    if-nez v4, :cond_6

    .line 337
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FingerprintService"

    const-string v5, "drop home key within 300ms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "FingerprintService"

    const-string v5, "remove MSG_RESET_HOMEKEY_DISPATCH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    :cond_5
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drop_home_key_when_use_fingerprint"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    :cond_6
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->storeAuthenticatedInfo(JII)V

    .line 348
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->shouldDelayDispatchAuthenticated(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 349
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delay DispatchAuthenticated, fingerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_7
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    if-eqz p3, :cond_8

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->notifyAuthenticated(I)V

    .line 351
    monitor-exit v3

    .line 361
    :goto_1
    return-void

    .line 350
    :cond_8
    const/4 v2, -0x1

    goto :goto_0

    .line 354
    :cond_9
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v1, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 355
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 356
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 357
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 360
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_a
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dispatchEnrollResult(JIII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    if-nez p5, :cond_0

    .line 639
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(II)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 642
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchEnrollResult , fingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    if-nez p5, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 650
    :cond_2
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 277
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 278
    :cond_0
    const-string v0, "FingerprintService"

    const-string v1, "fingerIds and groupIds are null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_3

    .line 282
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->syncTemplates([I[I)V

    .line 290
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchError(JI)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v5, 0x5

    .line 309
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchError error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 313
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 324
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 325
    return-void

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_3

    if-eq p3, v5, :cond_3

    .line 317
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 318
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 324
    .end local v0    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 321
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    if-eq p3, v5, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected dispatchHomeKeyDown(J)V
    .locals 3
    .param p1, "deviceId"    # J

    .prologue
    .line 411
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHomeKeyDown, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSystemReady:Z

    if-nez v0, :cond_2

    .line 413
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    const-string v1, "System is not ready, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->dispatchHomeKeyDown()V

    goto :goto_0
.end method

.method protected dispatchImageQualityUpdated(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "successed"    # I
    .param p4, "image_quality"    # I

    .prologue
    .line 402
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchImageQualityUpdated, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", successed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image_quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendImageQualityUpdated(JII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;JII)V

    .line 407
    :cond_1
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchRemoved(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 295
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchRemoved fingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    if-eqz p3, :cond_1

    .line 297
    invoke-direct {p0, p4, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(II)V

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 301
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_3

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FingerprintService"

    const-string v3, "dispatchRemoved remove mRemoveClient"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 305
    :cond_3
    monitor-exit v2

    .line 306
    return-void

    .line 305
    .end local v0    # "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchTouchDown(J)V
    .locals 3
    .param p1, "deviceId"    # J

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchDown, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivityAsync()V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->dispatchTouchDown()V

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_DOWN:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setFingerState(Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;)V

    .line 447
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    const-string v2, "sendTouchDownEvent"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendTouchDownEvent()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    .line 450
    :cond_4
    monitor-exit v1

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchTouchUp(J)V
    .locals 3
    .param p1, "deviceId"    # J

    .prologue
    .line 455
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchUp, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAuthClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isBlack  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v2}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->dispatchTouchUp()V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_UP:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setFingerState(Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;)V

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    move-result-object v0

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->hasValidAuthenticatedResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasDelayedSuccessResult(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/16 v2, 0x8

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 468
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    const-string v2, " sendError FINGERPRINT_SCREENOFF_CANCELED "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_4

    .line 474
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clearAuthenticatedInfo()V

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_6

    .line 477
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "FingerprintService"

    const-string v2, "send touchup event to enroll client"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendTouchUpEvent()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1600(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    .line 480
    :cond_6
    monitor-exit v1

    .line 481
    return-void

    .line 470
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->dealUnsentAuthenticated()V

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchWaitingForFinger(J)V
    .locals 3
    .param p1, "deviceId"    # J

    .prologue
    .line 420
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWaitingForFinger, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendWatingForFinger()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    .line 427
    :cond_1
    :goto_0
    monitor-exit v1

    .line 428
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendWatingForFinger()Z
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2870
    const/4 v4, 0x0

    .line 2871
    .local v4, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2872
    .local v3, "on":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dynamicallyConfigLogTag, args.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_0

    .line 2874
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dynamicallyConfigLogTag, args["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2876
    :cond_0
    array-length v7, p2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    .line 2877
    const-string v5, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V

    .line 2900
    :cond_1
    :goto_1
    return-void

    .line 2881
    :cond_2
    aget-object v4, p2, v5

    .line 2882
    const-string v7, "1"

    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 2883
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dynamicallyConfigLogTag, tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", on: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    const-string v7, "all"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2885
    sput-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    .line 2886
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    sput-boolean v3, Lcom/android/server/fingerprint/ScreenOffUnlocker;->DEBUG:Z

    .line 2887
    sput-boolean v3, Lcom/android/server/fingerprint/FingerprintServiceTest;->DEBUG:Z

    .line 2888
    sput-boolean v3, Lcom/android/server/fingerprint/FingerprintsUserState;->DEBUG:Z

    .line 2889
    sput-boolean v3, Lcom/android/server/fingerprint/HealthMonitor;->DEBUG:Z

    .line 2890
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2891
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2893
    if-eqz v3, :cond_4

    :goto_3
    :try_start_0
    invoke-interface {v0, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon;->dynamicallyConfigLog(I)V

    .line 2894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "daemon.dynamicallyConfigLog on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2895
    :catch_0
    move-exception v1

    .line 2896
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "dynamicallyConfigLog failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    move v3, v6

    .line 2882
    goto :goto_2

    .restart local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_4
    move v5, v6

    .line 2893
    goto :goto_3
.end method

.method public fusingCurrentOperation()V
    .locals 2

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->allowSetFusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusingCurrentOperation()Z

    .line 574
    :cond_0
    monitor-exit v1

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlikeyStatus()I
    .locals 4

    .prologue
    .line 2622
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2623
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2625
    :try_start_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "getAlikeyStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAlikeyStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2631
    :goto_0
    return v2

    .line 2627
    :catch_0
    move-exception v1

    .line 2628
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getAlikeyStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2631
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2593
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2595
    :try_start_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "getAuthenticatorId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2601
    :goto_0
    return-wide v2

    .line 2597
    :catch_0
    move-exception v1

    .line 2598
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getAuthenticatorId failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2601
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentAuthenticatedResult()Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getAuthenticatedResult()Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    move-result-object v0

    monitor-exit v1

    .line 601
    :goto_0
    return-object v0

    .line 600
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1190
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 1191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1192
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 1193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    .line 1195
    :cond_0
    const-string v3, "FingerprintService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprintNum(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprints number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_1

    .line 248
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "getFingerprintDaemon:start HealthMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    const-string v2, "asInterface"

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 250
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 251
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    const-string v2, "asInterface"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    .line 254
    :try_start_0
    new-instance v1, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    invoke-direct {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;-><init>(Landroid/hardware/fingerprint/IFingerprintDaemon;Lcom/android/server/fingerprint/HealthMonitor;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 255
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 256
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 257
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 258
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 260
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getEnrollmentTotalTimes()I

    move-result v1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollmentTotalTimes:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object v1

    .line 262
    :cond_2
    :try_start_1
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getFpIDs(I)[I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2708
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FingerprintService"

    const-string v6, "getFpIDs called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 2710
    .local v0, "fingerData":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2711
    .local v4, "listSize":I
    new-array v3, v4, [I

    .line 2712
    .local v3, "ids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2713
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 2714
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    aput v5, v3, v2

    .line 2712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2716
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    return-object v3
.end method

.method getFpName(II)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2695
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFpName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 2697
    .local v0, "fingerData":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2698
    .local v3, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2699
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 2700
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 2701
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2704
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_1
    return-object v4

    .line 2698
    .restart local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2704
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getImageQualityInternal(Landroid/os/IBinder;ZILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "restricted"    # Z
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "info"    # Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    .prologue
    .line 2636
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v6

    .line 2637
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v6, :cond_1

    .line 2638
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 2639
    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2640
    :try_start_0
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 2641
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget v1, p5, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPid:I

    iget-object v2, p5, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientInfo(ILjava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mImageQualityClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->IMAGE_QUALITY:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V

    .line 2643
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    :try_start_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageQualityInternal, client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_0
    invoke-interface {v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getImageQuality()I

    move-result v8

    .line 2647
    .local v8, "result":I
    if-eqz v8, :cond_1

    .line 2648
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageQualityInternal failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2654
    .end local v8    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 2643
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2650
    :catch_0
    move-exception v7

    .line 2651
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "getImageQualityInternal failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPackageForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 607
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 608
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 609
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageForUid==>packageNames["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    .end local v0    # "index":I
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 614
    :goto_1
    return-object v2

    :cond_1
    const-string v2, "unknown"

    goto :goto_1
.end method

.method gotoSleepImmediately(Z)V
    .locals 4
    .param p1, "normal"    # Z

    .prologue
    .line 2763
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoSleepImmediately( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ), mScreenOnCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_0
    if-eqz p1, :cond_2

    .line 2765
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2766
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    const-string v1, "goToSleep normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_1
    :goto_0
    return-void

    .line 2768
    :cond_2
    monitor-enter p0

    .line 2769
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    if-eqz v0, :cond_4

    .line 2770
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;->onVerifyDone(I)V

    .line 2771
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    const-string v1, "gotoSleepImmediately --> onVerifyDone( 0 )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .line 2774
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 634
    return-void
.end method

.method handleVerifyResult(Lcom/android/server/fingerprint/FingerprintService$VerifyResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    .prologue
    .line 2724
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVerifyResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ), mScreenOnCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_0
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-eq v0, p1, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->cleanUpBeforeWakeup()V

    .line 2728
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2729
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2730
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-ne v0, p1, :cond_2

    .line 2731
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->openAllFramesDrawForKeyguard()V

    .line 2733
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->dispatchDelayedAuthenticated()V

    .line 2735
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2736
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->FAILED:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-ne v0, p1, :cond_5

    .line 2737
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->wakeupScreenImmediately(I)V

    .line 2744
    :cond_4
    :goto_0
    return-void

    .line 2735
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2738
    :cond_5
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-ne v0, p1, :cond_7

    .line 2739
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FingerprintService"

    const-string v1, "wait call back from keyguard to wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_6
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->beginTimeoutForWaitingKeyguardFinished()V

    goto :goto_0

    .line 2741
    :cond_7
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-ne v0, p1, :cond_4

    .line 2742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->wakeupScreenImmediately(I)V

    goto :goto_0
.end method

.method hasDelayedSuccessResult(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x0

    .line 489
    if-nez p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isAuthenticatedResultSuccess()Z

    move-result v2

    .line 493
    .local v2, "isAuthenticatedResultSuccess":Z
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isAuthenticatedResultSent()Z

    move-result v1

    .line 494
    .local v1, "isAuthenticatedResultSent":Z
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 495
    .local v0, "hasDelayedSuccessResult":Z
    :cond_2
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasDelayedSuccessResult, hasDelayedSuccessResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuccessAuthenticatedResult()Z
    .locals 2

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isAuthenticatedResultSuccess()Z

    move-result v0

    monitor-exit v1

    .line 592
    :goto_0
    return v0

    .line 591
    :cond_0
    monitor-exit v1

    .line 592
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasValidAuthenticatedResult()Z
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isAuthenticatedResultValid()Z

    move-result v0

    monitor-exit v1

    .line 535
    :goto_0
    return v0

    .line 534
    :cond_0
    monitor-exit v1

    .line 535
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAuthClientFingerDown()Z
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    move-result-object v0

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    if-ne v0, v2, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFingerDown()Z

    move-result v0

    monitor-exit v1

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_0
    monitor-exit v1

    .line 526
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAuthClientFusing()Z
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->allowSetFusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFusing()Z

    move-result v0

    monitor-exit v1

    .line 561
    :goto_0
    return v0

    .line 560
    :cond_0
    monitor-exit v1

    .line 561
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAuthKeyguard(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    move-result-object v0

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1201
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1203
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1204
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1205
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1206
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_0

    .line 1207
    const/4 v4, 0x1

    .line 1210
    :goto_1
    return v4

    .line 1205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1210
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isFingerprintUnlockEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/fingerprint/SupportUtil;->isFingerprintUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2903
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    const-string v0, "1. open all log in FingerprintService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    const-string v0, "cmd: dumpsys fingerprint log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    return-void
.end method

.method notifyOperationCanceled(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 1911
    if-eqz p1, :cond_0

    .line 1913
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v1, 0x5

    invoke-interface {p1, v2, v3, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to send error to receiver: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2500
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_0
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2504
    const-class v0, Landroid/hardware/fingerprint/FingerprintInternal;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$LocalService;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2510
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/HealthMonitor;->getFingerprintdPid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2511
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/HealthMonitor;->fingerprintdSystemReady()V

    .line 2513
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->tryToRebuildConnection(J)V

    .line 2516
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 2517
    return-void
.end method

.method public resumeCurrentOperation()V
    .locals 2

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->allowSetFusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->resumeCurrentOperation()Z

    .line 582
    :cond_0
    monitor-exit v1

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfTest()Z
    .locals 5

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 2607
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 2609
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    const-string v4, "selfTest"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->selfTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2611
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 2612
    const/4 v3, 0x1

    .line 2618
    .end local v2    # "result":I
    :goto_0
    return v3

    .line 2614
    :catch_0
    move-exception v1

    .line 2615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "selfTest failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2618
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method shouldDelayDispatchAuthenticated(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v1}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZI[ILcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "timeout"    # I
    .param p9, "ids"    # [I
    .param p10, "info"    # Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v9

    .line 1024
    .local v9, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v9, :cond_3

    .line 1025
    if-eqz p5, :cond_1

    .line 1027
    :try_start_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "startAuthentication: no fingeprintd! send error FINGERPRINT_ERROR_HW_UNAVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :cond_1
    :goto_0
    const-string v2, "FingerprintService"

    const-string v3, "startAuthentication: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_2
    :goto_1
    return-void

    .line 1029
    :catch_0
    move-exception v10

    .line 1030
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendError:"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1036
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1037
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has died ,just skip this startAuthentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1042
    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1045
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1046
    :try_start_1
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 1047
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p10

    iget v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPid:I

    move-object/from16 v0, p10

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientInfo(ILjava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setIsKeyguard(Ljava/lang/String;)Z

    .line 1049
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V

    .line 1050
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    :try_start_2
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate , client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",opId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBlack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v4}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_5
    if-eqz p9, :cond_6

    move-object v3, v9

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 1072
    invoke-interface/range {v3 .. v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->identify(JII[I)I

    move-result v11

    .line 1078
    .local v11, "result":I
    :goto_2
    if-eqz v11, :cond_2

    .line 1079
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAuthentication failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1082
    .end local v11    # "result":I
    :catch_1
    move-exception v10

    .line 1083
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "startAuthentication failed"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1050
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1074
    :cond_6
    :try_start_4
    move/from16 v0, p4

    invoke-interface {v9, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v11

    .restart local v11    # "result":I
    goto :goto_2
.end method

.method public startContinueEnroll()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 864
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 865
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 866
    const-string v3, "FingerprintService"

    const-string v4, "startContinueEnroll: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return v2

    .line 870
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "continueEnroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->continueEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "continueEnroll failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startContinueIdentify()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 894
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 895
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 896
    const-string v3, "FingerprintService"

    const-string v4, "startContinueIdentify: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    return v2

    .line 900
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "continueIdentify"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->continueIdentify()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "continueIdentify failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "info"    # Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v8

    .line 764
    .local v8, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v8, :cond_3

    .line 767
    if-eqz p4, :cond_1

    .line 769
    :try_start_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "startEnrollment: no fingeprintd! send error FINGERPRINT_ERROR_HW_UNAVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_1
    :goto_0
    const-string v2, "FingerprintService"

    const-string v3, "enroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_2
    :goto_1
    return-void

    .line 771
    :catch_0
    move-exception v9

    .line 772
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendError:"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 779
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 780
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v12

    .line 781
    :try_start_1
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 784
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPid:I

    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientInfo(ILjava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->ENROLL:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V

    .line 787
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    const/16 v11, 0x3c

    .line 791
    .local v11, "timeout":I
    const/16 v2, 0x3c

    :try_start_2
    move/from16 v0, p3

    invoke-interface {v8, p2, v0, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v10

    .line 792
    .local v10, "result":I
    if-eqz v10, :cond_2

    .line 793
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 796
    .end local v10    # "result":I
    :catch_1
    move-exception v9

    .line 797
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "startEnroll failed"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 787
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v11    # "timeout":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public startFinishUnLockedScreen(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isfinished"    # Z
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 934
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startFinishUnLockedScreen, isfinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", opPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->clearTimeoutForWaitingKeyguardFinished()V

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->wakeupScreenImmediately(I)V

    .line 937
    return-void
.end method

.method public startGetAuthToken(JI)[B
    .locals 5
    .param p1, "challenge"    # J
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 835
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 836
    const-string v3, "FingerprintService"

    const-string v4, "startPreEnroll: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    return-object v2

    .line 840
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "startGetAuthToken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthToken(JI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 842
    :catch_0
    move-exception v1

    .line 843
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "startPreEnroll failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startGetEnrollmentTotalTimes(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 818
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 819
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 820
    const-string v3, "FingerprintService"

    const-string v4, "startGetEnrollmentTotalTimes: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_0
    return v2

    .line 824
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "startGetEnrollmentTotalTimes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getEnrollmentTotalTimes()I

    move-result v3

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollmentTotalTimes:I

    .line 826
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollmentTotalTimes:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "startGetEnrollmentTotalTimes failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPauseEnroll()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 849
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 850
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 851
    const-string v3, "FingerprintService"

    const-string v4, "startPauseEnroll: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return v2

    .line 855
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "pauseEnroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->pauseEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "pauseEnroll failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPauseIdentify()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 879
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 880
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 881
    const-string v3, "FingerprintService"

    const-string v4, "startPauseIdentify: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_0
    return v2

    .line 885
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "pauseIdentify"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->pauseIdentify()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 887
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "pauseIdentify failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 941
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 942
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 943
    const-string v3, "FingerprintService"

    const-string v4, "startPostEnroll: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :goto_0
    return v2

    .line 947
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    const-string v4, "postEnroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "startPostEnroll failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v2, 0x0

    .line 802
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 803
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 804
    const-string v4, "FingerprintService"

    const-string v5, "startPreEnroll: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-wide v2

    .line 808
    :cond_0
    :try_start_0
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintService"

    const-string v5, "startPreEnroll"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "startPreEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z
    .param p6, "info"    # Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v8

    .line 1142
    .local v8, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v8, :cond_1

    .line 1143
    const-string v2, "FingerprintService"

    const-string v3, "startRemove: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1147
    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1148
    :try_start_0
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move v6, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 1151
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p6

    iget v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPid:I

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientInfo(ILjava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->REMOVE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V

    .line 1154
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    :try_start_1
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemove fingerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_2
    invoke-interface {v8, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v10

    .line 1160
    .local v10, "result":I
    if-eqz v10, :cond_0

    .line 1161
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1164
    .end local v10    # "result":I
    :catch_0
    move-exception v9

    .line 1165
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "startRemove failed"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1154
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public startSetTouchEventListener(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p3, "groupId"    # I
    .param p4, "restricted"    # Z
    .param p5, "info"    # Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v6

    .line 910
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_1

    .line 911
    const-string v0, "FingerprintService"

    const-string v1, "startSetTouchEventListener: no fingeprintd!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 915
    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v9

    .line 916
    :try_start_0
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 917
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget v1, p5, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPid:I

    iget-object v2, p5, Lcom/android/server/fingerprint/FingerprintService$ClientInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientInfo(ILjava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->TOUCH_LISTEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V

    .line 919
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    if-eqz v6, :cond_0

    .line 922
    :try_start_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchEventListener in keyguard lockout mode, client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_2
    invoke-interface {v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setTouchEventListener()I

    move-result v8

    .line 924
    .local v8, "result":I
    if-eqz v8, :cond_0

    .line 925
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSetTouchEventListener failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 927
    .end local v8    # "result":I
    :catch_0
    move-exception v7

    .line 928
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "setTouchEventListener failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 919
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 1095
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_1

    .line 1096
    const-string v4, "FingerprintService"

    const-string v5, "stopAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 1100
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    .line 1103
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1104
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has died ,just skip this stopAuthentication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    :cond_2
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelAuthentication initiatedByClient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_3
    if-eqz p2, :cond_5

    .line 1112
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v3

    .line 1113
    .local v3, "result":I
    if-eqz v3, :cond_4

    .line 1114
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v3    # "result":I
    :cond_4
    :goto_1
    const-string v4, "com.tencent.mm"

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1126
    const-string v4, "FingerprintService"

    const-string v5, "skip sendError(FINGERPRINT_ERROR_CANCELED)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_5
    :goto_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentApp:Ljava/lang/String;

    .line 1136
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v2

    .line 1117
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "stopAuthentication failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1128
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v4, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    goto :goto_2
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 975
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_1

    .line 976
    const-string v4, "FingerprintService"

    const-string v5, "stopEnrollment: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 980
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    .line 983
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 984
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has died ,just skip this stopEnrollment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_2
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopEnrollment initiatedByClient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_3
    if-eqz p2, :cond_5

    .line 991
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v3

    .line 992
    .local v3, "result":I
    if-eqz v3, :cond_4

    .line 993
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startEnrollCancel failed, result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    .end local v3    # "result":I
    :cond_4
    :goto_1
    const/4 v4, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 1000
    :cond_5
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 995
    :catch_0
    move-exception v2

    .line 996
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "stopEnrollment failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2780
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSystemReady:Z

    .line 2782
    return-void
.end method

.method tryPreOperation(Landroid/os/IBinder;I)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operation"    # I

    .prologue
    const/16 v6, 0x103

    const/16 v5, 0x101

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1872
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->codeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1907
    :goto_0
    return v0

    .line 1878
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1879
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->isAuthKeyguard(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1881
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne p1, v3, :cond_2

    move v0, v1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 1905
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1884
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    move-result-object v3

    sget-object v4, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->AUTHEN:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v3, p1, :cond_6

    if-eqz p1, :cond_6

    .line 1886
    if-eq p2, v5, :cond_4

    if-ne p2, v6, :cond_5

    .line 1889
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 1892
    :cond_5
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1895
    :cond_6
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    move-result-object v3

    sget-object v4, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->ENROLL:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v3, p1, :cond_9

    if-eqz p1, :cond_9

    .line 1897
    if-eq p2, v5, :cond_7

    if-ne p2, v6, :cond_8

    .line 1900
    :cond_7
    monitor-exit v2

    goto :goto_0

    .line 1903
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1905
    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 1907
    goto :goto_0
.end method

.method tryToRebuildConnection(J)V
    .locals 5
    .param p1, "atTime"    # J

    .prologue
    .line 2522
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToRebuildConnection --> at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2524
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2532
    :cond_1
    return-void
.end method

.method public updateWakupSpeedTime(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->updateWakupSpeedTime(Z)V

    .line 543
    :cond_0
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wakeupScreenImmediately(I)V
    .locals 3
    .param p1, "verifyCode"    # I

    .prologue
    .line 2747
    monitor-enter p0

    .line 2748
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    if-eqz v0, :cond_2

    .line 2749
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->clearAllFramesDrawForKeyguard()V

    .line 2750
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;->onVerifyDone(I)V

    .line 2751
    if-eqz p1, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->resetWakeupSpeedTime()V

    .line 2754
    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeupScreenImmediately --> onVerifyDone( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOnCallback:Landroid/hardware/fingerprint/FingerprintManager$ScreenOnCallback;

    .line 2759
    :goto_0
    monitor-exit p0

    .line 2760
    return-void

    .line 2757
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mScreenOffUnlocker:Lcom/android/server/fingerprint/ScreenOffUnlocker;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/ScreenOffUnlocker;->wakeupScreen(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2759
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
