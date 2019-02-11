.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x3e8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.0f

.field private static final BRIGHTNESS_BRIGHT_TO_DARK_SPEED:I = 0xa

.field private static final BRIGHTNESS_DARK_TO_BRIGHT_SPEED:I = 0x78

.field private static final BRIGHTNESS_PSENSOR_NEARTOFAR_BRIGHTSPEED:I = 0xc8

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xfa0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.0f

.field static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field public static DEBUG_PRETEND_PROX_SENSOR_ABSENT:Z = false

.field private static final HIGH_BRIGHTENING_LIGHT_DEBOUNCE:J = 0x1388L

.field private static final HIGH_BRIGHTENING_LIGHT_TIMER:J = 0x2710L

.field private static final HIGH_BRIGHTNESS_DEBOUNCE_LUX:I = 0x4e20

.field private static final HIGH_BRIGHTNESS_LUX:I = 0x7530

.field private static final HIGH_BRIGHTNESS_NODE:Ljava/lang/String; = "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_HBM"

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x1f4

.field private static final MSG_DELAY_SEND_AND_GET_DATA:I = 0x14

.field private static final MSG_ENABLE_HIGH_BRIGHTNESS_DEBOUNCED:I = 0x4

.field private static final MSG_GET_DATA_FROM_CAMERA:I = 0xa

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_RUNTIME_CONFIG:I = 0x2

.field private static final MTK_AAL_AMBIENT_LIGHT_HORIZON:J = 0x1f4L

.field private static final SCREENON_BRIGHTNESS_BOOST_TIMEOUT:J = 0xfa0L

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710

.field public static mBrightnessLowLevelScreenSupport:Z

.field private static mLux:F

.field public static mOpenLightSensor:Z

.field private static mUsingCameraRetryTimes:I


# instance fields
.field public final ACTION_GET_AUTOBRIGHTNESS_CAMERA_DATA:Ljava/lang/String;

.field public final ACTION_START_AUTOBRIGHTNESS_DETECT:Ljava/lang/String;

.field private HIGH_BRIGHTNESS_DISABLE:I

.field private HIGH_BRIGHTNESS_ENABLE:I

.field private SPECIALIGHTSENSOR:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lux_beforemax:F

.field private lux_beforemin:F

.field private lux_max:F

.field private lux_min:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field final mAutoBrightnessCameraDataReceiver:Landroid/content/BroadcastReceiver;

.field mAutoBrightnessCameraSupport:Z

.field public mAutoRate:I

.field private mBacklightStatus:I

.field private mBrighteningLuxThreshold:F

.field private mCalendar:Ljava/util/Calendar;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

.field private mContext:Landroid/content/Context;

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mExpTime:I

.field private mGetDataFlag:Z

.field private final mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHighBrightnessEnable:Z

.field mHighBrightnessModeSupport:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mLuxCurrent:F

.field private mLuxDarkingTime:J

.field public mManualBrightness:I

.field public mManulAtAmbientLux:F

.field private mManulBrightnessSlide:Z

.field private mNightBrihtness:I

.field private mProximityNear:Z

.field private mProximityNearToFar:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorChangeTime:J

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRecentLightSamples:I

.field private final mRuntimeConfig:Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;

.field public mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSnapIso:I

.field private mSpecialLightSensor:Z

.field private mStartManual:Z

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mZeroStartTime:J

.field private mZeroTask:Ljava/util/TimerTask;

.field private mZeroTimer:Ljava/util/Timer;

.field private marea:I

.field private mareabefore:I

.field private mbStartTimer:Z

.field private zeroHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 102
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_PRETEND_PROX_SENSOR_ABSENT:Z

    .line 177
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 407
    sput v1, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    .line 408
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->mOpenLightSensor:Z

    .line 409
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessLowLevelScreenSupport:Z

    .line 1422
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->mLux:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFLandroid/content/Context;)V
    .locals 5
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z

    .line 212
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNearToFar:Z

    .line 214
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNightBrihtness:I

    .line 274
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 276
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 283
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 289
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    .line 290
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    .line 297
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 298
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    .line 346
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    .line 369
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    .line 370
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I

    .line 371
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->marea:I

    .line 372
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemin:F

    .line 373
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemax:F

    .line 381
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z

    .line 382
    const-string v2, "apds9922"

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->SPECIALIGHTSENSOR:Ljava/lang/String;

    .line 389
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_ENABLE:I

    .line 390
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_DISABLE:I

    .line 391
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    .line 394
    const-string v2, "action_start_autobrightness_detect"

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->ACTION_START_AUTOBRIGHTNESS_DETECT:Ljava/lang/String;

    .line 395
    const-string v2, "action_get_autobrightness_camera_data"

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->ACTION_GET_AUTOBRIGHTNESS_CAMERA_DATA:Ljava/lang/String;

    .line 399
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 400
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 404
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    .line 405
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxDarkingTime:J

    .line 406
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F

    .line 410
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessModeSupport:Z

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    .line 415
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorChangeTime:J

    .line 418
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 419
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 420
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    .line 421
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 422
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoRate:I

    .line 1160
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1375
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1401
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->handler:Landroid/os/Handler;

    .line 1487
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$8;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$8;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraDataReceiver:Landroid/content/BroadcastReceiver;

    .line 1628
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$9;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$9;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 1829
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeConfig:Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;

    .line 437
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 438
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 439
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 440
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 441
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 442
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 443
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 444
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 446
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v2, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 447
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-direct {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 451
    iput-object p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 452
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    invoke-direct {v2, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "action_get_autobrightness_camera_data"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p9, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oppo.brightness.lowlevel.screen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessLowLevelScreenSupport:Z

    .line 459
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBrightnessLowLevelScreenSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessLowLevelScreenSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHighBrightnessModeSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessModeSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oppo.auto.brightness.camera.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    .line 464
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAutoBrightnessCameraSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v2, "persist.sys.assert.panic"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 471
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 476
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 478
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v2, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 484
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 489
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z

    .line 490
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "lightsensor_version":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->SPECIALIGHTSENSOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z

    .line 494
    :cond_1
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSpecialLightSensor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateRuntimeConfigInternal()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->debounceHighBrightness()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z

    return p1
.end method

.method static synthetic access$1800()F
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->mLux:F

    return v0
.end method

.method static synthetic access$1802(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 88
    sput p0, Lcom/android/server/display/AutomaticBrightnessController;->mLux:F

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/display/AutomaticBrightnessController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->startZeroTimer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/AutomaticBrightnessController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendBeginCheckCameraBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->marea:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->marea:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSpecialLightSensor:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemin:F

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemax:F

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/AutomaticBrightnessController;I)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->findAmbientLux(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorChangeTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_DISABLE:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->writeHighbrightnessNodeValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopTimer()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/AutomaticBrightnessController;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # [B

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->onCameraMetaData([B)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/AutomaticBrightnessController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxDarkingTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->judgeCameraData(JF)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->delaySendAndGetData()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 669
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 670
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 671
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 674
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 675
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 676
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 702
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 703
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 704
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/high16 v10, -0x40800000    # -1.0f

    .line 739
    :goto_0
    return v10

    .line 707
    :cond_0
    const/4 v5, 0x0

    .line 708
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 709
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 710
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 711
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 714
    .local v6, "startTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_1

    .line 715
    const-wide/16 v6, 0x0

    .line 720
    :cond_1
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    if-eqz v10, :cond_4

    .line 721
    const-wide/16 v10, -0x1f4

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    .line 735
    .end local v6    # "startTime":J
    :cond_2
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 736
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: totalWeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newAmbientLux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-float v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    div-float v10, v5, v8

    goto :goto_0

    .line 724
    .restart local v6    # "startTime":J
    :cond_4
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 725
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 726
    .local v4, "lux":F
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 727
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: lux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", weight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_5
    add-float/2addr v8, v9

    .line 732
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 733
    move-wide v2, v6

    .line 710
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 743
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1110
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private debounceHighBrightness()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1425
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    if-nez v0, :cond_0

    .line 1428
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->mLux:F

    const v1, 0x46ea6000    # 30000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/power/PowerManagerService;->mCameraMode:I

    if-eq v0, v2, :cond_0

    .line 1429
    const-string v0, "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_HBM"

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_ENABLE:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->writeHighbrightnessNodeValue(Ljava/lang/String;I)V

    .line 1430
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    .line 1431
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mHighBrightness:Z

    .line 1432
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->startTimer()V

    .line 1435
    :cond_0
    return-void
.end method

.method private delaySendAndGetData()V
    .locals 4

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->sendBeginCheckCameraBroadcast(Landroid/content/Context;)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1543
    return-void
.end method

.method private findAmbientLux(I)F
    .locals 7
    .param p1, "area"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, "lux":F
    if-nez p1, :cond_2

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 892
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "area="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_1
    return v0

    .line 886
    :cond_2
    if-ne p1, v2, :cond_3

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v1, v2

    goto :goto_0

    .line 887
    :cond_3
    if-ne p1, v3, :cond_4

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v1, v3

    goto :goto_0

    .line 888
    :cond_4
    if-ne p1, v4, :cond_5

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v1, v4

    goto :goto_0

    .line 889
    :cond_5
    if-ne p1, v5, :cond_6

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v1, v5

    goto :goto_0

    .line 890
    :cond_6
    if-ne p1, v6, :cond_0

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    aget v0, v1, v6

    goto :goto_0
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 1847
    const-string v4, "/proc/devinfo/Sensor_alsps"

    .line 1848
    .local v4, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v3, "file":Ljava/io/File;
    const-string v7, "UNKNOWN"

    .line 1851
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1852
    const-string v9, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not exist..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 1896
    .end local v7    # "version":Ljava/lang/String;
    .local v8, "version":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 1856
    .end local v8    # "version":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1857
    const-string v9, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No permission to read "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 1858
    .end local v7    # "version":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    goto :goto_0

    .line 1861
    .end local v8    # "version":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1864
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1868
    const-string v9, "AutomaticBrightnessController"

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const-string v9, "Device version:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1871
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1873
    .local v6, "lineSplit":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v9, v6

    if-le v9, v12, :cond_2

    .line 1874
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1876
    if-eqz v7, :cond_2

    .line 1877
    const-string v9, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Device version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1882
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineSplit":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1883
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v9, "AutomaticBrightnessController"

    const-string v10, "FileNotFoundException caught"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1887
    if-eqz v0, :cond_3

    .line 1889
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    move-object v8, v7

    .line 1896
    .end local v7    # "version":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    goto :goto_0

    .line 1887
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "version":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_6

    .line 1889
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 1892
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1890
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1891
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "AutomaticBrightnessController"

    const-string v10, "bufferedReader.close IOException caught"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1892
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1890
    .end local v5    # "line":Ljava/lang/String;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 1891
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "AutomaticBrightnessController"

    const-string v10, "bufferedReader.close IOException caught"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1884
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1885
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v9, "AutomaticBrightnessController"

    const-string v10, "IOException caught"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1887
    if-eqz v0, :cond_3

    .line 1889
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1890
    :catch_4
    move-exception v2

    .line 1891
    const-string v9, "AutomaticBrightnessController"

    const-string v10, "bufferedReader.close IOException caught"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1887
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v0, :cond_5

    .line 1889
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1892
    :cond_5
    :goto_6
    throw v9

    .line 1890
    :catch_5
    move-exception v2

    .line 1891
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "bufferedReader.close IOException caught"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1887
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1884
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1882
    :catch_7
    move-exception v2

    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1115
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1130
    :cond_1
    :goto_0
    return v0

    .line 1120
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1121
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1125
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1126
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 664
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 666
    return-void
.end method

.method private judgeCameraData(JF)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1546
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1547
    .local v4, "resources":Landroid/content/res/Resources;
    const v5, 0x10e007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1549
    .local v0, "productAeFirstValue":I
    const v5, 0x10e0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1551
    .local v3, "productIsoFirstValue":I
    const v5, 0x10e0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1553
    .local v1, "productAeSecondValue":I
    const v5, 0x10e0082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1556
    .local v2, "productAeThirdValue":I
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1557
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judgeCameraData in: lux = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judgeCameraData in: mExpTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judgeCameraData in: mSnapIso = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    if-eqz v5, :cond_5

    .line 1562
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_6

    .line 1563
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    if-lt v5, v0, :cond_1

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    if-ge v5, v3, :cond_4

    .line 1564
    :cond_1
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "AutomaticBrightnessController"

    const-string v6, "lux1 different from AE and ISO!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 1567
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1568
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_3

    .line 1569
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    const/16 v6, 0x14

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1570
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    .line 1625
    :goto_0
    return-void

    .line 1573
    :cond_3
    const/4 v5, 0x0

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    .line 1605
    :cond_4
    :goto_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 1606
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1608
    :cond_5
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1609
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_c

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    cmpg-float v5, p3, v5

    if-gez v5, :cond_c

    .line 1610
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    goto :goto_0

    .line 1576
    :cond_6
    const/high16 v5, 0x43be0000    # 380.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_9

    .line 1577
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    if-ge v5, v1, :cond_4

    .line 1578
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "AutomaticBrightnessController"

    const-string v6, "lux2 different from AE!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_7
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 1581
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1582
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_8

    .line 1583
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    const/16 v6, 0x14

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1584
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    goto :goto_0

    .line 1587
    :cond_8
    const/4 v5, 0x0

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    goto :goto_1

    .line 1590
    :cond_9
    const v5, 0x44802000    # 1025.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_4

    .line 1591
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    if-ge v5, v2, :cond_4

    .line 1592
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "AutomaticBrightnessController"

    const-string v6, "lux3 different from AE!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_a
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 1595
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1596
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_b

    .line 1597
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    const/16 v6, 0x14

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1598
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    goto/16 :goto_0

    .line 1601
    :cond_b
    const/4 v5, 0x0

    sput v5, Lcom/android/server/display/AutomaticBrightnessController;->mUsingCameraRetryTimes:I

    goto/16 :goto_1

    .line 1613
    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_e

    const/4 p3, 0x0

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    const/high16 v5, 0x40800000    # 4.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    .line 1620
    :goto_2
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_d

    .line 1621
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judgeCameraData: PowerMS L-Sensor Changed out1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    .line 1624
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    goto/16 :goto_0

    .line 1614
    :cond_e
    const/high16 v5, 0x43be0000    # 380.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_f

    const/high16 p3, 0x43be0000    # 380.0f

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    const/high16 v5, 0x43d20000    # 420.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    goto :goto_2

    .line 1615
    :cond_f
    const v5, 0x44802000    # 1025.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_10

    const p3, 0x44802000    # 1025.0f

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    const v5, 0x448fc000    # 1150.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    goto :goto_2

    .line 1616
    :cond_10
    const v5, 0x4601b000    # 8300.0f

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_11

    const p3, 0x4601b000    # 8300.0f

    const/high16 v5, 0x43be0000    # 380.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    const v5, 0x460ca000    # 9000.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    goto :goto_2

    .line 1617
    :cond_11
    const p3, 0x461c4000    # 10000.0f

    const v5, 0x44802000    # 1025.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    const v5, 0x479c4000    # 80000.0f

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    goto :goto_2
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 753
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 754
    .local v0, "N":I
    move-wide v2, p1

    .line 755
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 756
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 761
    :cond_0
    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v2

    return-wide v4

    .line 759
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 755
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 765
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 766
    .local v0, "N":I
    move-wide v2, p1

    .line 767
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 768
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 773
    :cond_0
    const-wide/16 v4, 0xfa0

    add-long/2addr v4, v2

    return-wide v4

    .line 771
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 767
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private onCameraMetaData([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 1505
    array-length v1, p1

    if-gtz v1, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1507
    const/16 v0, 0xff

    .line 1510
    .local v0, "setI":I
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    .line 1511
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    const/16 v2, 0xd

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    .line 1512
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExpTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExpTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSnapIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSnapIso:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    .end local v0    # "setI":I
    :cond_2
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "error array length!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAmbientLux(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "i":I
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 899
    const/4 v0, 0x1

    .line 911
    :cond_0
    :goto_0
    return v0

    .line 900
    :cond_1
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 901
    const/4 v0, 0x2

    goto :goto_0

    .line 902
    :cond_2
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    .line 903
    const/4 v0, 0x3

    goto :goto_0

    .line 904
    :cond_3
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 905
    const/4 v0, 0x4

    goto :goto_0

    .line 906
    :cond_4
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5

    .line 907
    const/4 v0, 0x5

    goto :goto_0

    .line 908
    :cond_5
    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessLux:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 909
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private resetAutoBrightness(FFI)V
    .locals 10
    .param p1, "ambientLux"    # F
    .param p2, "manulAtAmbientLux"    # F
    .param p3, "manulBrihgtness"    # I

    .prologue
    .line 915
    const/4 v3, 0x0

    .line 916
    .local v3, "scal":F
    const/4 v4, 0x0

    .line 917
    .local v4, "step":I
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetAmbientLux(F)I

    move-result v2

    .line 918
    .local v2, "nowlux":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v6, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 919
    .local v5, "value":F
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v0

    .line 920
    .local v0, "brightness":I
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->resetAmbientLux(F)I

    move-result v1

    .line 921
    .local v1, "manullux":I
    if-eqz v0, :cond_0

    .line 922
    sub-int v6, p3, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 923
    const v6, 0x3e99999a    # 0.3f

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    .line 924
    const v3, 0x3e99999a    # 0.3f

    .line 926
    :cond_0
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_1

    .line 927
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e800000    # 0.25f

    sub-int v9, v2, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 929
    :cond_1
    if-le p3, v0, :cond_4

    .line 930
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 934
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 935
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "brightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " manulBrihgtness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " manullux = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nowlux = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenAutoBrightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_3
    return-void

    .line 931
    :cond_4
    if-ge p3, v0, :cond_2

    .line 932
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method private sendBeginCheckCameraBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1483
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_start_autobrightness_detect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 694
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 695
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 696
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 698
    float-to-int v0, p1

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->nativeSetDebouncedAmbientLight(I)V

    .line 699
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const v8, 0x7a120

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLightSensorEnabled: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->mScreenDimQuicklyDark:Z

    .line 562
    if-eqz p1, :cond_4

    .line 563
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v3, :cond_8

    .line 564
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 567
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 578
    sget v3, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v3, v1, :cond_3

    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    const-string v4, "LightSensorEnableThread"

    invoke-direct {v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 589
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 590
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 599
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    .line 600
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    .line 601
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    if-eqz v3, :cond_1

    .line 602
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    .line 605
    :cond_1
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessNoOpenLightsSensor:Z

    if-nez v3, :cond_2

    .line 606
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mOpenLightSensor:Z

    .line 608
    :cond_2
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessNoOpenLightsSensor:Z

    .line 658
    :goto_1
    return v1

    .line 592
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 595
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 613
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_8

    .line 614
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 615
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 616
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 617
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 618
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 619
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 622
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 623
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    sput v3, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 624
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 625
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 626
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 627
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNear:Z

    .line 628
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 629
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNearToFar:Z

    .line 633
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-eqz v3, :cond_5

    .line 634
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    .line 636
    :cond_5
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->mQuickDarkToBright:Z

    .line 637
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    .line 642
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessModeSupport:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/android/server/power/PowerManagerService;->mCameraMode:I

    if-eq v3, v1, :cond_6

    .line 643
    const-string v3, "/sys/devices/virtual/mtk_disp_mgr/mtk_disp_mgr/LCM_HBM"

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->HIGH_BRIGHTNESS_DISABLE:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->writeHighbrightnessNodeValue(Ljava/lang/String;I)V

    .line 644
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighBrightnessEnable:Z

    .line 645
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mHighBrightness:Z

    .line 646
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopTimer()V

    .line 647
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 649
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    if-eqz v3, :cond_7

    .line 650
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z

    .line 651
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    invoke-virtual {v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->removeMessages(I)V

    .line 652
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->removeMessages(I)V

    .line 654
    :cond_7
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mOpenLightSensor:Z

    :cond_8
    move v1, v2

    .line 658
    goto/16 :goto_1
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 2
    .param p1, "adjustment"    # F

    .prologue
    const/4 v0, 0x1

    .line 679
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 680
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 683
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 684
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 685
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 690
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 1442
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$7;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 1453
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1455
    :cond_2
    return-void
.end method

.method private startZeroTimer()V
    .locals 6

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0xfa0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 320
    :cond_2
    monitor-exit p0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1458
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1460
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimer:Ljava/util/Timer;

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1464
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTask:Ljava/util/TimerTask;

    .line 1466
    :cond_1
    return-void
.end method

.method private stopZeroTimer()V
    .locals 3

    .prologue
    .line 324
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-nez v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 327
    :cond_0
    monitor-enter p0

    .line 329
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 331
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "stopZeroTimer null pointer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 779
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 780
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 17
    .param p1, "time"    # J

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v12, v3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long v10, v12, v14

    .line 788
    .local v10, "timeWhenSensorWarmedUp":J
    cmp-long v3, p1, v10

    if-gez v3, :cond_1

    .line 789
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 790
    const-string v3, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeWhenSensorWarmedUp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 879
    .end local v10    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 798
    .restart local v10    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 799
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 800
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 801
    const-string v3, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mAmbientLux="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 808
    .end local v10    # "timeWhenSensorWarmedUp":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 809
    .local v4, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 810
    .local v6, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v2

    .line 812
    .local v2, "ambientLux":F
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 813
    const-string v3, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: ambientLux="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeToBrighten="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v4, p1

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeToDarken="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v6, p1

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    const/4 v12, 0x2

    if-ne v3, v12, :cond_5

    .line 822
    const-wide/16 p1, 0x0

    .line 833
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    sub-long v12, p1, v12

    const-wide/16 v14, 0xfa0

    cmp-long v3, v12, v14

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorChangeTime:J

    sub-long v12, p1, v12

    const-wide/16 v14, 0x7d0

    cmp-long v3, v12, v14

    if-lez v3, :cond_6

    cmp-long v3, v4, p1

    if-gtz v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    const/4 v12, 0x1

    if-eq v3, v12, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_8

    cmp-long v3, v6, p1

    if-gtz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    const/4 v12, 0x1

    if-eq v3, v12, :cond_9

    :cond_8
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_c

    .line 843
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBacklightStatus:I

    .line 844
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemin:F

    .line 845
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->lux_beforemax:F

    .line 846
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->marea:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mareabefore:I

    .line 849
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorChangeTime:J

    sub-long v12, p1, v12

    const-wide/16 v14, 0x7d0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_a

    .line 850
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNearToFar:Z

    .line 853
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 854
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 855
    const-string v12, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_e

    const-string v3, "Brightened"

    :goto_1
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ": "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "mBrighteningLuxThreshold="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLightRingBuffer="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLux="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 862
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 863
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 865
    :cond_c
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 872
    .local v8, "nextTransitionTime":J
    cmp-long v3, v8, p1

    if-lez v3, :cond_f

    .line 874
    :goto_2
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_d

    .line 875
    const-string v3, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 855
    .end local v8    # "nextTransitionTime":J
    :cond_e
    const-string v3, "Darkened"

    goto/16 :goto_1

    .line 872
    .restart local v8    # "nextTransitionTime":J
    :cond_f
    const-wide/16 v12, 0x1f4

    add-long v8, p1, v12

    goto :goto_2
.end method

.method private updateAutoBrightness(Z)V
    .locals 10
    .param p1, "sendUpdate"    # Z

    .prologue
    const/16 v7, 0xb

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 951
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    .line 952
    .local v4, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 994
    .local v1, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    if-eqz v5, :cond_1

    .line 995
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mManualBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAmbientLux = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    .line 997
    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 998
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 999
    sput-boolean v9, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 1000
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1001
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v5}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1107
    :goto_0
    return-void

    .line 1003
    :cond_1
    sput-boolean v8, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 1004
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v3

    .line 1007
    .local v3, "newScreenAutoBrightness":I
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v5, :cond_3

    .line 1008
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCalendar:Ljava/util/Calendar;

    .line 1009
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1010
    .local v2, "hour":I
    const/16 v5, 0x15

    if-gt v2, v5, :cond_2

    const/4 v5, 0x7

    if-ge v2, v5, :cond_c

    .line 1011
    :cond_2
    if-ne v3, v7, :cond_3

    .line 1013
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNightBrihtness:I

    .line 1020
    .end local v2    # "hour":I
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNightBrihtness:I

    if-lez v5, :cond_4

    if-ne v3, v7, :cond_4

    .line 1021
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNightBrihtness:I

    .line 1023
    :cond_4
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v5, v3, :cond_a

    .line 1024
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1025
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mScreenAutoBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newScreenAutoBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mManualBrightness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mStartManual = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PowerManagerService.mManualBrightnessBackup = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PowerManagerService.mDisplayStateOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mBrightnessOverride = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1031
    .local v0, "autoBrightness":I
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1032
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1033
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v5, :cond_6

    .line 1034
    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1035
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 1036
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    .line 1037
    sput v8, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 1038
    const/4 v5, 0x0

    sput v5, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    .line 1041
    :cond_6
    sget v5, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    sget v5, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v5, :cond_7

    .line 1043
    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1044
    sget v5, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 1045
    sput v8, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 1046
    sput v8, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 1049
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v5, :cond_8

    .line 1050
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_d

    .line 1051
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1063
    :cond_8
    :goto_2
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-le v5, v0, :cond_f

    .line 1064
    const/16 v5, 0x78

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoRate:I

    .line 1069
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNearToFar:Z

    if-eqz v5, :cond_9

    .line 1070
    const/16 v5, 0xc8

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoRate:I

    .line 1071
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityNearToFar:Z

    .line 1073
    :cond_9
    if-eqz p1, :cond_a

    .line 1074
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v5}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1078
    .end local v0    # "autoBrightness":I
    :cond_a
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v5, :cond_b

    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v5, :cond_b

    .line 1080
    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1081
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    .line 1082
    sput v8, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 1084
    :cond_b
    sput-boolean v8, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    goto/16 :goto_0

    .line 1016
    .restart local v2    # "hour":I
    :cond_c
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNightBrihtness:I

    goto/16 :goto_1

    .line 1053
    .end local v2    # "hour":I
    .restart local v0    # "autoBrightness":I
    :cond_d
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController;->resetAutoBrightness(FFI)V

    .line 1054
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e

    .line 1055
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_2

    .line 1056
    :cond_e
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulAtAmbientLux:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 1057
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualBrightness:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_2

    .line 1066
    :cond_f
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoRate:I

    goto :goto_3
.end method

.method private updateRuntimeConfigInternal()V
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeConfig:Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 1841
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 1842
    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 749
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private writeHighbrightnessNodeValue(Ljava/lang/String;I)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1470
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1472
    .local v2, "writer":Ljava/io/FileWriter;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "writeHighbrightnessNodeValue sorry write wrong"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure(ZFZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 512
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    .line 513
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 514
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 518
    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v1, v2

    .line 513
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 521
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 522
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 529
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 552
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 501
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 503
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method public setScreenAutoBrightnessSpline(Landroid/util/Spline;)V
    .locals 1
    .param p1, "spline"    # Landroid/util/Spline;

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeConfig:Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;

    iput-object p1, v0, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 1833
    return-void
.end method

.method public updateRuntimeConfig()V
    .locals 2

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z

    .line 1837
    return-void
.end method
