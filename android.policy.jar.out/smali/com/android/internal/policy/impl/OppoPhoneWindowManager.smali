.class public Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Landroid/view/OppoWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_END_CALL:Ljava/lang/String; = "android.intent.action.END_CALL"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oppo.intent.action.SCREEN_SHOT"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final CAMERA_PKG:Ljava/lang/String; = "com.oppo.camera"

.field private static final CAPTURE_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.CaptureActivity"

.field private static final CTS_PROJECTION_TOUCH:Ljava/lang/String; = "com.android.cts.verifier.projection.touch.ProjectionTouchActivity"

.field private static final DURATION_START_SPEECH:I = 0x4b0

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME:I = 0xfa

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xc8

.field private static final KEY_EXIT_DRAG_WINDOW:Ljava/lang/String; = "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field static final KEY_OFFSET_VALUE:I = 0x320

.field private static final LAYER_WALLPAPER:Ljava/lang/String; = "LAYER_WALLPAPER"

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final MSG_ISCAMERAMODE:I = 0x11

.field private static final MSG_ISHOMEMODE:I = 0x10

.field private static final MSG_ISINGESTUREGUIDE:I = 0x13

.field private static final MSG_SET_WALLPAPER_LAYER:I = 0x12

.field private static final MULTI_TOUCH_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

.field private static final OPPO_IGNORE_DRIVE_MODE:Ljava/lang/String; = "com.oppo.drivemode"

.field private static final OPPO_IGNORE_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

.field private static final OPPO_IGNORE_SPEECH_ASSIST:Ljava/lang/String; = "com.coloros.speechassist"

.field private static final OPPO_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoInCallActivity"

.field private static final OPPO_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final PRACTICAL_HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xfa

.field private static final PROXIMITY_THRESHOLD:F = 2.0f

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_OFF:J = 0x12cL

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_ON:J = 0xc8L

.field public static final START_SPEECH_DISABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_DISABLE"

.field public static final START_SPEECH_ENABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_ENABLE"

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_FOR_START_TIME:J = 0x7d0L


# instance fields
.field private final DEFALUT_LONG_VIBRATION_DURING_TIME:J

.field private FORCE_RESUME_FOR_CHANGING_THEME:J

.field private OPPODEBUG:Z

.field private flashlights:Z

.field private final hideStatusBar:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private homeKeyUpTime:J

.field private lastDoubleHomeKeyTime:J

.field private lastHomeKeyTime:J

.field listener:Landroid/telephony/PhoneStateListener;

.field mApkLockScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mBackKeyUpIgnore:Z

.field private mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentKeyMode:I

.field private mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

.field private mHomeDoubleTrigged:Z

.field private final mHomeKeyLongPress:Ljava/lang/Runnable;

.field private final mHomeKeyTap:Ljava/lang/Runnable;

.field private mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

.field private mIsAnimatingKeyDown:Z

.field private mIsCameraShow:Z

.field private mIsHomeKeyDown:Z

.field private mIsInGestureGuide:Z

.field private mIsMenuKeyDown:Z

.field private final mKeyLockIntentProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

.field private mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenuKeyUpIgnore:Z

.field private mMyHandler:Landroid/os/Handler;

.field mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mOppoAppFrozen:Lcom/android/internal/policy/impl/OppoAppFrozen;

.field mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

.field private mOppoLastLidState:I

.field private mOppoPowerDownKeyConsumedByScreenshotChord:Z

.field private mOppoPowerKeyTime:J

.field private mOppoPowerKeyTriggered:Z

.field private mOppoScreenshotChordEnabled:Z

.field private mOppoVolumeDownKeyConsumedByScreenshotChord:Z

.field private mOppoVolumeDownKeyTime:J

.field private mOppoVolumeDownKeyTriggered:Z

.field private mOppoVolumeUpKeyTriggered:Z

.field private mPauseForChangingTheme:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mResumeForChangingTheme:Ljava/lang/Runnable;

.field private mRingingTime:J

.field private mScreenDragStatusBarHeight:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

.field private mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

.field private mSupportDoubleHome:Z

.field private mSupportQuickShot:Z

.field private mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final mUpDownRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeDownKeyConsumedByUpDownChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByUpDownChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWallpaperLayer:I

.field private mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private object:Ljava/lang/Object;

.field private startSpeechEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "OppoPhoneWindowManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 164
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 166
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 169
    iput v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    .line 172
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    .line 188
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    .line 201
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    .line 202
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    .line 206
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->startSpeechEnabled:Z

    .line 220
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    .line 224
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 225
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    .line 230
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    .line 245
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 246
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    .line 249
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 270
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportDoubleHome:Z

    .line 284
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->DEFALUT_LONG_VIBRATION_DURING_TIME:J

    .line 299
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 927
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 964
    iput v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 967
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    .line 1006
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    .line 1354
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    .line 1357
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    .line 1364
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 1477
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    .line 1517
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 1536
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 1537
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 1538
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1539
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1540
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1543
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1550
    iput v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 1555
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    .line 2042
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    .line 2135
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setWallpaperLayer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->startSpeechAssist()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->startSpeechEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    return-wide v0
.end method

.method private adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1037
    move-object v1, p1

    .line 1038
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1039
    .local v0, "keyCode":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_1

    .line 1040
    packed-switch v0, :pswitch_data_0

    .line 1067
    :cond_0
    :goto_0
    return-object v1

    .line 1042
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1044
    goto :goto_0

    .line 1047
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_2

    .line 1048
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1052
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1054
    goto :goto_0

    .line 1057
    :cond_2
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_0

    .line 1058
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1061
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1063
    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 1048
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 1058
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkLiveWallpaperLayer()V
    .locals 4

    .prologue
    .line 1928
    const/4 v0, -0x1

    .line 1929
    .local v0, "wallpaperLayer":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 1930
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 1933
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    if-eq v1, v0, :cond_1

    if-lez v0, :cond_1

    .line 1934
    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 1935
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1937
    sget-boolean v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishPostLayoutPolicyLw changed mWallpaperLayer ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_1
    return-void
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 1402
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "disableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 1405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1407
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1408
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 1415
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1419
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1410
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dumpWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1642
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====getOwningPackage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAttrs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceLayer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAppShownWindows :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleOrBehindKeyguardLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisplayedLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnimatingLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGoneForLayoutLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDrawnLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-void
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 1386
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 1389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1391
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1394
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1399
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1396
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 1882
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1885
    .local v2, "targetClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1886
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1887
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1890
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1890
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleDoubleClickOnHome()V
    .locals 4

    .prologue
    .line 1490
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1491
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1492
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1497
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleDoubleKeyEvents(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "double click time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 954
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    goto :goto_0
.end method

.method private handleScreenoffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 1424
    .local v0, "down":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1426
    .local v1, "keyCode":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isScreenoffGestureKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1427
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.black.gesture.proximitysensor.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1428
    .local v2, "proximityDetectCanceled":Z
    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proximityDetectCanceled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->updateGestureInfo()V

    .line 1430
    if-eqz v2, :cond_3

    .line 1431
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidState:I

    if-nez v3, :cond_2

    .line 1432
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1433
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 1465
    .end local v2    # "proximityDetectCanceled":Z
    :cond_1
    :goto_0
    return p2

    .line 1436
    .restart local v2    # "proximityDetectCanceled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    goto :goto_0

    .line 1439
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    monitor-enter v4

    .line 1440
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->enableProximitySensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-nez v3, :cond_4

    .line 1450
    const-string v3, "oppo.dt.wakeupnum"

    const-string v5, "oppo.dt.wakeupnum"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProximitySensorActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidState:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1457
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 1460
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableProximitySensor()V

    .line 1461
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1444
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private interceptUpDownChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const-wide/16 v6, 0xc8

    const/4 v4, 0x1

    .line 1780
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 1781
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enter interceptUpDownChord"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1783
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1784
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1786
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 1787
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 1788
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1799
    .end local v0    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1791
    .restart local v0    # "now":J
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1793
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 1794
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 1795
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isLeatherModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "leatherEnable":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oppo_leather_mode_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1303
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLeatherModeEnabled: leatherEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return v1

    .line 1298
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isLogKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1507
    const/16 v0, 0x1a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-eq v0, p1, :cond_0

    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/16 v0, 0x4f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1873
    const-string v2, "mAttachedWindow"

    invoke-static {p1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1874
    .local v1, "parent":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v0, 0x0

    .line 1875
    .local v0, "isParentLock":Z
    if-eqz v1, :cond_0

    .line 1876
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1878
    :cond_0
    :goto_0
    return v0

    .line 1876
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1071
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    add-int/lit16 v5, v5, 0x320

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private setVideoMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1033
    iput p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 1034
    return-void
.end method

.method private setWallpaperLayer()V
    .locals 3
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LAYER_WALLPAPER"

    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1810
    return-void
.end method

.method private startSpeechAssist()V
    .locals 4

    .prologue
    .line 1079
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1080
    .local v1, "intentOppoAssist":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1081
    const-string v2, "com.coloros.speechassist.start_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "startSpeechAssist:send com.coloros.speechassist.start_action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "startSpeechAssist: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/high16 v5, 0x80000

    const/4 v4, 0x3

    .line 1593
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1594
    sget-boolean v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->dumpWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1596
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_4

    .line 1599
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1602
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_1

    .line 1603
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1619
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1622
    .local v0, "isLauncher":Z
    if-eqz v0, :cond_6

    .line 1623
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1629
    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1630
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    .line 1632
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 1633
    sget-boolean v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastAppWin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mKeyguardDoShowLw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_3
    :goto_2
    return-void

    .line 1607
    .end local v0    # "isLauncher":Z
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1610
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_5

    .line 1611
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1614
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1624
    .restart local v0    # "isLauncher":Z
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_2

    .line 1625
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 1635
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    goto :goto_2
.end method

.method public beginLayoutLw(ZIII)V
    .locals 1
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 1767
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    .line 1773
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 1774
    return-void

    .line 1770
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_0
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1581
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 1582
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1583
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1584
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 1589
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1829
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    const/4 v0, 0x1

    .line 1837
    :goto_0
    return v0

    .line 1833
    :cond_0
    const/16 v0, 0x7d4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_1

    .line 1834
    const/4 v0, 0x0

    goto :goto_0

    .line 1837
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 1746
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    sparse-switch p1, :sswitch_data_0

    .line 1759
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canMagnifyWindow(I)Z

    move-result v0

    :goto_0
    return v0

    .line 1751
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1755
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1747
    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x8fd -> :sswitch_1
        0x8fe -> :sswitch_1
    .end sparse-switch
.end method

.method public doesNeedWaitingKeyguard()Z
    .locals 1

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .prologue
    .line 1255
    const/4 v1, 0x0

    .line 1256
    .local v1, "changes":I
    const/4 v3, 0x0

    .line 1257
    .local v3, "isCameraShow":Z
    sget-boolean v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "========shouldTans============"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.oppo.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1259
    const/4 v3, 0x1

    .line 1262
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eq v3, v6, :cond_2

    .line 1263
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 1264
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1265
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x11

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_0
    const/4 v9, 0x0

    invoke-static {v7, v8, v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 1267
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1270
    .end local v5    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v0, 0x0

    .line 1271
    .local v0, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1272
    .local v4, "isInGestureGuide":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1273
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    .line 1274
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1275
    .local v2, "index":I
    if-lez v2, :cond_3

    .line 1276
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "appName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1278
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_3
    const-string v6, "com.oppo.gestureguide.activity.CaptureActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.android.cts.verifier.projection.touch.ProjectionTouchActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1279
    :cond_4
    const/4 v4, 0x1

    .line 1282
    .end local v2    # "index":I
    :cond_5
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    if-eq v4, v6, :cond_6

    .line 1283
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 1284
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1285
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x13

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_1
    const/4 v9, 0x0

    invoke-static {v7, v8, v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 1287
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1290
    .end local v5    # "msg":Landroid/os/Message;
    :cond_6
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v6

    or-int/2addr v1, v6

    .line 1292
    return v1

    .line 1265
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "isInGestureGuide":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 1285
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v4    # "isInGestureGuide":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public finishPostLayoutPolicyLwKeyguard(I)I
    .locals 7
    .param p1, "changes"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1943
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->checkLiveWallpaperLayer()V

    .line 1945
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1946
    .local v1, "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_0

    .line 1947
    sget-boolean v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishPostLayoutPolicyLwOppoFramework: mHideKeyguard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1950
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1951
    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1952
    or-int/lit8 p1, p1, 0x7

    .line 1956
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1959
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1960
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1967
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v2, :cond_5

    .line 1968
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1969
    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1970
    or-int/lit8 p1, p1, 0x7

    .line 1974
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto :goto_0

    .line 1976
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-eqz v2, :cond_7

    .line 1978
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-ne v2, v6, :cond_0

    .line 1980
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1981
    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1982
    or-int/lit8 p1, p1, 0x7

    .line 1986
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1988
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1996
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    if-eqz v2, :cond_0

    .line 1997
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1998
    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1999
    or-int/lit8 p1, p1, 0x7

    .line 2003
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto/16 :goto_0

    .line 2009
    .end local v1    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_9
    return p1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x1

    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 370
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v2, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.END_CALL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v4, "com.oppo.intent.action.START_SPEECH_ENABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v4, "com.oppo.intent.action.START_SPEECH_DISABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v4, "oppo.intent.action.SCREEN_SHOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 397
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 400
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 402
    new-instance v4, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 404
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 405
    .local v3, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 408
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.disable.small.window.leather"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidControlsSleep:Z

    .line 413
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.quick.shot.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.double.click.home.not.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportDoubleHome:Z

    .line 420
    sget-object v4, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v5, "has feature oppo.double.click.home.not.support!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2
    new-instance v4, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/os/PowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 426
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->resetState()V

    .line 428
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "notifyLidSwitchWakeLock"

    invoke-virtual {v4, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 434
    new-instance v4, Lcom/android/internal/policy/impl/OppoAppFrozen;

    invoke-direct {v4, p1, p0}, Lcom/android/internal/policy/impl/OppoAppFrozen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoAppFrozen:Lcom/android/internal/policy/impl/OppoAppFrozen;

    .line 435
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_4

    const/4 v7, 0x1

    .line 608
    .local v7, "down1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_5

    const/4 v6, 0x1

    .line 609
    .local v6, "down":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 610
    .local v13, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 611
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 612
    .local v4, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 614
    .local v20, "repeatCount":I
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_0

    if-nez v6, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoAppFrozen:Lcom/android/internal/policy/impl/OppoAppFrozen;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/OppoAppFrozen;->clearHomeDispatchTimeoutMsg()V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoAppFrozen:Lcom/android/internal/policy/impl/OppoAppFrozen;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/OppoAppFrozen;->appFrozenHandle()V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 639
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 640
    new-instance v26, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 642
    :cond_1
    if-eqz p1, :cond_11

    .line 644
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v13, v0, :cond_a

    .line 645
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_8

    .line 646
    if-nez v20, :cond_6

    .line 647
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    .line 648
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when animating or window rotating!-KeyEvent.ACTION_DOWN-1"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    .line 651
    const-wide/16 v26, -0x1

    .line 876
    :goto_2
    return-wide v26

    .line 605
    .end local v4    # "canceled":Z
    .end local v6    # "down":Z
    .end local v7    # "down1":Z
    .end local v9    # "flags":I
    .end local v13    # "keyCode":I
    .end local v20    # "repeatCount":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 608
    .restart local v7    # "down1":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 654
    .restart local v4    # "canceled":Z
    .restart local v6    # "down":Z
    .restart local v9    # "flags":I
    .restart local v13    # "keyCode":I
    .restart local v20    # "repeatCount":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when animating or window rotating!-KeyEvent.ACTION_DOWN-2"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_7
    const-wide/16 v26, -0x1

    goto :goto_2

    .line 659
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when animating or window rotating!-KeyEvent.ACTION_UP-3"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_9
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsAnimatingKeyDown:Z

    .line 662
    const-wide/16 v26, -0x1

    goto :goto_2

    .line 665
    :cond_a
    if-nez v20, :cond_e

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 667
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when animating or window rotating!-KeyEvent.KEYCODE_HOME-4"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_d

    .line 669
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 671
    :cond_d
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 673
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v26

    if-eqz v26, :cond_11

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 674
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when isCanceled and animating or window rotating!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_10
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 677
    :catch_0
    move-exception v26

    .line 682
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 683
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "interceptKeyBeforeDispatching key: win="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  event = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 689
    and-int/lit16 v0, v9, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_1a

    .line 690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_14

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 693
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 694
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0xc8

    add-long v24, v26, v28

    .line 698
    .local v24, "timeoutTime":J
    :goto_3
    cmp-long v26, v16, v24

    if-gez v26, :cond_14

    .line 699
    sub-long v26, v24, v16

    goto/16 :goto_2

    .line 696
    .end local v24    # "timeoutTime":J
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x12c

    add-long v24, v26, v28

    .restart local v24    # "timeoutTime":J
    goto :goto_3

    .line 703
    .end local v16    # "now":J
    .end local v24    # "timeoutTime":J
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_16

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 706
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 707
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0xc8

    add-long v24, v26, v28

    .line 711
    .restart local v24    # "timeoutTime":J
    :goto_4
    cmp-long v26, v16, v24

    if-gez v26, :cond_16

    .line 712
    sub-long v26, v24, v16

    goto/16 :goto_2

    .line 709
    .end local v24    # "timeoutTime":J
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x12c

    add-long v24, v26, v28

    .restart local v24    # "timeoutTime":J
    goto :goto_4

    .line 716
    .end local v16    # "now":J
    .end local v24    # "timeoutTime":J
    :cond_16
    const/16 v26, 0x19

    move/from16 v0, v26

    if-ne v13, v0, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 718
    if-nez v6, :cond_17

    .line 719
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 721
    :cond_17
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 724
    :cond_18
    const/16 v26, 0x18

    move/from16 v0, v26

    if-ne v13, v0, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 726
    if-nez v6, :cond_19

    .line 727
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 729
    :cond_19
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 735
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 737
    .local v15, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 738
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "interceptKeyBeforeDispatching newEvent keyCode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_1b
    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 744
    if-nez v6, :cond_28

    .line 745
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 747
    .local v10, "homeWasLongPressed":Z
    if-nez v10, :cond_28

    .line 748
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 749
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 751
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 752
    .local v21, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_1c

    .line 753
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    .end local v21    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1c
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 762
    if-nez v4, :cond_27

    .line 766
    const/4 v11, 0x0

    .line 767
    .local v11, "incomingRinging":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v22

    .line 768
    .local v22, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v22, :cond_1d

    .line 769
    invoke-virtual/range {v22 .. v22}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v11

    .line 772
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 783
    .local v18, "nowTime":J
    if-eqz v11, :cond_21

    if-eqz p1, :cond_1e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v27, "com.android.incallui/com.android.incallui.OppoInCallActivity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v27, "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    move-wide/from16 v26, v0

    sub-long v26, v18, v26

    const-wide/16 v28, 0x7d0

    cmp-long v26, v26, v28

    if-gez v26, :cond_21

    .line 785
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_20

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v11    # "incomingRinging":Z
    .end local v18    # "nowTime":J
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_20
    :goto_6
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 755
    :catch_1
    move-exception v8

    .line 756
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "RemoteException when showing recent apps"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_5

    .line 799
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "incomingRinging":Z
    .restart local v18    # "nowTime":J
    .restart local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_21
    const-string v26, "persist.sys.oppo.region"

    const-string v27, "CN"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 801
    .local v5, "currRegion":Ljava/lang/String;
    const-string v26, "CN"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_23

    .line 802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 804
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    move-wide/from16 v26, v0

    sub-long v26, v16, v26

    const-wide/16 v28, 0xfa

    cmp-long v26, v26, v28

    if-gez v26, :cond_22

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleClickOnHome()V

    .line 811
    :goto_7
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    goto :goto_6

    .line 808
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0xfa

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 817
    .end local v16    # "now":J
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "oppo_double_press_home_lock_screen"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    const/4 v12, 0x1

    .line 819
    .local v12, "isDoubleHomeEnable":Z
    :goto_8
    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportDoubleHome:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26

    .line 820
    and-int/lit8 v26, p3, 0x2

    if-eqz v26, :cond_25

    .line 821
    const-wide/16 v26, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_6

    .line 817
    .end local v12    # "isDoubleHomeEnable":Z
    :cond_24
    const/4 v12, 0x0

    goto :goto_8

    .line 823
    .restart local v12    # "isDoubleHomeEnable":Z
    :cond_25
    const-wide/16 v26, 0xfa

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_6

    .line 826
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_6

    .line 833
    .end local v5    # "currRegion":Ljava/lang/String;
    .end local v11    # "incomingRinging":Z
    .end local v12    # "isDoubleHomeEnable":Z
    .end local v18    # "nowTime":J
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_20

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "Ignoring HOME; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 862
    .end local v10    # "homeWasLongPressed":Z
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->startSpeechEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    if-eqz v6, :cond_29

    if-nez v20, :cond_29

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 864
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v23

    .line 865
    .local v23, "telephoneManager":Landroid/telecom/TelecomManager;
    if-nez v14, :cond_29

    if-eqz p1, :cond_29

    const-string v26, "com.coloros.speechassist"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "com.oppo.drivemode"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v26

    if-nez v26, :cond_29

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x4b0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    .end local v14    # "keyguardOn":Z
    .end local v23    # "telephoneManager":Landroid/telecom/TelecomManager;
    :cond_29
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    goto/16 :goto_2

    .line 876
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 439
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemBooted:Z

    if-nez v8, :cond_1

    .line 441
    const/4 v6, 0x0

    .line 600
    :cond_0
    :goto_0
    return v6

    .line 444
    :cond_1
    const/high16 v8, 0x20000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_7

    const/4 v1, 0x1

    .line 445
    .local v1, "interactive":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v0, 0x1

    .line 446
    .local v0, "down":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 447
    .local v3, "keyCode":I
    const/4 v6, 0x0

    .line 450
    .local v6, "result":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 451
    .local v5, "repeatCount":I
    const/4 v8, 0x3

    if-ne v8, v3, :cond_9

    .line 452
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsHomeKeyDown:Z

    .line 456
    :cond_2
    :goto_3
    const/4 v8, 0x4

    if-ne v8, v3, :cond_3

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    .line 458
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBackKeyUpIgnore:Z

    .line 460
    :cond_3
    const/16 v8, 0x52

    if-ne v8, v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    .line 462
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMenuKeyUpIgnore:Z

    .line 465
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsHomeKeyDown:Z

    if-eqz v8, :cond_e

    .line 466
    const/4 v8, 0x4

    if-ne v8, v3, :cond_a

    if-eqz v0, :cond_a

    .line 467
    if-nez v5, :cond_5

    .line 468
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBackKeyUpIgnore:Z

    .line 470
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "interceptKeyBeforeQueueing: Home Pressed, ignore KEYCODE_BACK DOWN!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 444
    .end local v0    # "down":Z
    .end local v1    # "interactive":Z
    .end local v3    # "keyCode":I
    .end local v5    # "repeatCount":I
    .end local v6    # "result":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 445
    .restart local v1    # "interactive":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 453
    .restart local v0    # "down":Z
    .restart local v3    # "keyCode":I
    .restart local v5    # "repeatCount":I
    .restart local v6    # "result":I
    :cond_9
    const/16 v8, 0x52

    if-ne v8, v3, :cond_2

    .line 454
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsMenuKeyDown:Z

    goto :goto_3

    .line 474
    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsMenuKeyDown:Z

    if-eqz v8, :cond_b

    .line 475
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMenuKeyUpIgnore:Z

    .line 476
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_b

    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "interceptKeyBeforeQueueing: Home and Menu all Pressed, set mMenuKeyUpIgnore true!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_b
    const/16 v8, 0x52

    if-ne v8, v3, :cond_e

    .line 479
    if-nez v0, :cond_c

    .line 480
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMenuKeyUpIgnore:Z

    .line 482
    :cond_c
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_d

    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyBeforeQueueing: Home Pressed, ignore KEYCODE_MENU. down="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 487
    :cond_e
    const/4 v8, 0x4

    if-ne v8, v3, :cond_10

    if-nez v0, :cond_10

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBackKeyUpIgnore:Z

    if-eqz v8, :cond_10

    .line 489
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBackKeyUpIgnore:Z

    .line 490
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_f

    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "interceptKeyBeforeQueueing: KEYCODE_BACK DOWN has been ignored, ignore KEYCODE_BACK UP now!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 493
    :cond_10
    const/16 v8, 0x52

    if-ne v8, v3, :cond_12

    if-nez v0, :cond_12

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMenuKeyUpIgnore:Z

    if-eqz v8, :cond_12

    .line 495
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMenuKeyUpIgnore:Z

    .line 496
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_11

    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "interceptKeyBeforeQueueing: KEYCODE_MENU DOWN has been ignored, ignore KEYCODE_MENU UP now!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 501
    :cond_12
    const/4 v8, 0x3

    if-ne v3, v8, :cond_13

    if-nez v0, :cond_13

    .line 502
    iget-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 504
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    :cond_13
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    sget-boolean v8, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    if-eqz v8, :cond_14

    .line 509
    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "OppoPhoneWindowManager block key at shutdown/restart sequence"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 514
    :cond_14
    const/16 v8, 0x19

    if-eq v8, v3, :cond_15

    const/16 v8, 0x18

    if-eq v8, v3, :cond_15

    const/16 v8, 0xa4

    if-ne v8, v3, :cond_18

    .line 517
    :cond_15
    if-eqz v0, :cond_16

    .line 520
    new-instance v2, Landroid/content/Intent;

    const-string v8, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v2, "it":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    .line 532
    .end local v2    # "it":Landroid/content/Intent;
    :cond_16
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "oppo.sky.gesture.support"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 533
    .local v7, "supportSkyGesture":Z
    if-eqz v7, :cond_18

    .line 534
    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    .line 535
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureDown()V

    .line 537
    :cond_17
    if-nez v0, :cond_18

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->isVolumeLongPress()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 538
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureUp()V

    .line 548
    .end local v7    # "supportSkyGesture":Z
    :cond_18
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleScreenoffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v4

    .line 553
    .local v4, "newEvent":Landroid/view/KeyEvent;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v8, :cond_19

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 554
    sget-object v8, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyBeforeQueueing"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_19
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    if-eqz v8, :cond_1b

    .line 560
    const/16 v8, 0x19

    if-ne v3, v8, :cond_1a

    .line 561
    if-eqz v0, :cond_1c

    .line 562
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v8, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_1a

    .line 564
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 565
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 567
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 568
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 575
    :cond_1a
    :goto_4
    const/16 v8, 0x18

    if-ne v3, v8, :cond_1b

    .line 576
    if-eqz v0, :cond_1d

    .line 577
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v8, :cond_1b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_1b

    .line 579
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 580
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 582
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 592
    :cond_1b
    :goto_5
    invoke-super {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v6

    .line 595
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    if-nez v0, :cond_0

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_0

    .line 597
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoAppFrozen:Lcom/android/internal/policy/impl/OppoAppFrozen;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/OppoAppFrozen;->sendHomeDispatchTimeoutMsg()V

    goto/16 :goto_0

    .line 571
    :cond_1c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    goto :goto_4

    .line 586
    :cond_1d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    goto :goto_5
.end method

.method public isApkLockScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    const/4 v0, 0x1

    .line 2019
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1814
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_0

    .line 1815
    const/4 v0, 0x0

    .line 1817
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public isForceHiding(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1921
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    const/4 v0, 0x1

    .line 1924
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isForceHiding(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1824
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    return v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    .line 1739
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1740
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1310
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.disable.small.window.leather"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    if-eqz p3, :cond_2

    move v1, v2

    .line 1318
    .local v1, "newLidState":I
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    if-ne v1, v4, :cond_3

    .line 1319
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "notifyLidSwitchChanged newLidState == mLidState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "newLidState":I
    :cond_2
    move v1, v3

    .line 1316
    goto :goto_1

    .line 1324
    .restart local v1    # "newLidState":I
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLeatherModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.LID_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "lid_state"

    iget v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    if-ne v1, v2, :cond_7

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    if-ne v1, v2, :cond_4

    .line 1332
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1334
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1335
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoPhoneWindowManager notifyLidSwitchChanged sendBroadcast com.oppo.intent.action.LID_STATE_CHANGED, newLidState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_5
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1340
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1344
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1346
    iput v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move v3, v2

    .line 1328
    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_2
.end method

.method public openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Landroid/app/IColorKeyguardSessionCallback;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "module"    # Ljava/lang/String;

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->openKeyguardSession(Landroid/app/IColorKeyguardSessionCallback;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    .line 2132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1232
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1234
    .local v0, "hapticsDisabled":Z
    :cond_0
    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1235
    invoke-super {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    .line 1251
    :goto_0
    return v1

    .line 1239
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_2

    .line 1240
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1242
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 1251
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    goto :goto_0

    .line 1244
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    .line 1247
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1244
    :array_0
    .array-data 8
        0x0
        0x12c
    .end array-data

    .line 1247
    :array_1
    .array-data 8
        0x0
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v1, 0x7d4

    .line 1842
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_3

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    .line 1847
    const/4 v0, -0x7

    .line 1852
    :goto_0
    return v0

    .line 1849
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1850
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 1852
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1857
    const/16 v0, 0x7d4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1861
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 1862
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1865
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1866
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 1869
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1870
    return-void
.end method

.method public requestDismissKeyguard()V
    .locals 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2113
    :cond_0
    return-void
.end method

.method public requestKeyguard(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 2117
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 2118
    move-object v0, p1

    .line 2119
    .local v0, "finalCommand":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2125
    .end local v0    # "finalCommand":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2064
    if-ne p1, v3, :cond_3

    .line 2065
    const/high16 v0, 0x80000

    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastSystemUiFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v0, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2070
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2073
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 2074
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 2082
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2083
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2084
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    if-eqz v0, :cond_0

    .line 2085
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 2086
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 1202
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff()V

    .line 1206
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurnedOff()V

    .line 1211
    :cond_0
    invoke-static {}, Landroid/view/OppoScreenShotUtil;->resumeDeliverPointerEvent()V

    .line 1212
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1213
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 1
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 1217
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1221
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurningOn()V

    .line 1229
    :cond_0
    return-void
.end method

.method final sendIsCameraModeIntent(Z)V
    .locals 4
    .param p1, "isCameraMode"    # Z

    .prologue
    .line 1670
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===sendIsCameraModeIntent=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 1672
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsCameraModeIntent:isCameraMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_1
    :goto_0
    return-void

    .line 1677
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1678
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "iscameramode"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1679
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1680
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1678
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final sendIsHomeModeIntent(ZZ)V
    .locals 5
    .param p1, "isHomeMode"    # Z
    .param p2, "isSemipermeable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1655
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1656
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsHomeModeIntent:isHomeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1661
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "ishomemode"

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    const-string v1, "isSemipermeable"

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1662
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1663
    goto :goto_2
.end method

.method final sendIsInGestureGuideIntent(Z)V
    .locals 3
    .param p1, "isInGestureGuideMode"    # Z

    .prologue
    .line 1687
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1688
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "GestureGuideIntent can\'t send broadcast before boot completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.GESTUREGUIDE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "isInGestureGuideMode"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1693
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1692
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1713
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 3

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-nez v0, :cond_0

    .line 1722
    new-instance v0, Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    .line 1730
    :goto_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1731
    return-void

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    goto :goto_0
.end method

.method public showStatusBar()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2030
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2033
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2040
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1194
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 1196
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1198
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1897
    sparse-switch p1, :sswitch_data_0

    .line 1915
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    :goto_0
    return v0

    .line 1899
    :sswitch_0
    const/16 v0, 0xd

    goto :goto_0

    .line 1901
    :sswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 1903
    :sswitch_2
    const/16 v0, 0x67

    goto :goto_0

    .line 1905
    :sswitch_3
    const/16 v0, 0x65

    goto :goto_0

    .line 1907
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 1908
    const/16 v0, 0x66

    goto :goto_0

    .line 1911
    :cond_1
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1912
    const/16 v0, 0x68

    goto :goto_0

    .line 1897
    :sswitch_data_0
    .sparse-switch
        0x7d4 -> :sswitch_0
        0x7e3 -> :sswitch_4
        0x7e8 -> :sswitch_5
        0x8fc -> :sswitch_2
        0x8fe -> :sswitch_3
        0x8ff -> :sswitch_1
    .end sparse-switch
.end method
