.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ContinuousShotCallback;,
        Landroid/hardware/Camera$PreviewRawDumpCallback;,
        Landroid/hardware/Camera$ZSDPreviewDone;,
        Landroid/hardware/Camera$ObjectTrackingListener;,
        Landroid/hardware/Camera$FbOriginalCallback;,
        Landroid/hardware/Camera$StereoCameraMaskCallback;,
        Landroid/hardware/Camera$DistanceInfoCallback;,
        Landroid/hardware/Camera$StereoCameraWarningCallback;,
        Landroid/hardware/Camera$StereoCameraJpsCallback;,
        Landroid/hardware/Camera$HdrOriginalCallback;,
        Landroid/hardware/Camera$MetadataCallback;,
        Landroid/hardware/Camera$MotionTrackCallback;,
        Landroid/hardware/Camera$AutoRamaMoveCallback;,
        Landroid/hardware/Camera$AutoRamaCallback;,
        Landroid/hardware/Camera$AFDataCallback;,
        Landroid/hardware/Camera$AsdCallback;,
        Landroid/hardware/Camera$GestureCallback;,
        Landroid/hardware/Camera$SmileCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_DATA_FACEBEAUTY:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_DATA_HDR:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_DATA_JPS:I = 0x11

.field private static final MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK:I = 0x9

.field private static final MTK_CAMERA_MSG_EXT_DATA_OT:I = 0x5

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_GESTURE_DETECT:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_IMAGE_UNCOMPRESSED:I = 0x17

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_RAW_DUMP_STOPPED:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_DISTANCE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_WARNING:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraFramework"


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mAsdCallback:Landroid/hardware/Camera$AsdCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

.field private mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

.field private mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

.field private mEnableRaw16:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

.field private mGestureCallback:Landroid/hardware/Camera$GestureCallback;

.field private mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

.field private mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

.field private mNativeContext:J

.field private final mObjectCallbackLock:Ljava/lang/Object;

.field private mObjectFace:Landroid/hardware/Camera$Face;

.field private mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

.field private mObjectRect:Landroid/graphics/Rect;

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

.field private mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mStereo3DModeForCamera:Z

.field private mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

.field private mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

.field private mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

.field private mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-boolean v0, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 313
    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 318
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 320
    new-instance v0, Landroid/hardware/Camera$Face;

    invoke-direct {v0}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 682
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    sparse-switch v0, :sswitch_data_0

    .line 658
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_0
    return-void

    .line 651
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 313
    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 318
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 320
    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 321
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 322
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 572
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 573
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    sparse-switch v0, :sswitch_data_0

    .line 596
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_0
    return-void

    .line 574
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1084
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1091
    return-void
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 626
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    iput-object v3, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 603
    iput-object v3, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 604
    iput-object v3, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 605
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 606
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 607
    iput-object v3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 608
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 609
    iput-object v3, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 612
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 613
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 620
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    return v2

    .line 614
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 615
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 617
    :cond_1
    iput-object v3, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private native cancelGDPreview()V
.end method

.method private final native cancelMainFace()V
.end method

.method private native cancelSDPreview()V
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 668
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 386
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 387
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 388
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 390
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraFramework"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 3168
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 3169
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3182
    if-nez p0, :cond_0

    .line 3183
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3186
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$3900(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 3187
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 3188
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 3190
    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 2346
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 11

    .prologue
    .line 3071
    const-string v3, "1184x720"

    .line 3072
    .local v3, "mHD720NOPK":Ljava/lang/String;
    const-string v5, "800x480"

    .line 3073
    .local v5, "mWVGAScreenSize":Ljava/lang/String;
    const-string v4, "960x540"

    .line 3074
    .local v4, "mQhdScreenSize":Ljava/lang/String;
    const-string v2, "1280x720"

    .line 3076
    .local v2, "m720P":Ljava/lang/String;
    const-string v6, "800x480"

    .line 3079
    .local v6, "screenSize":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 3080
    .local v1, "dmGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v8, 0x0

    sget-object v9, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 3082
    .local v0, "dispaly":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 3083
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3086
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_1

    .line 3087
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3093
    :goto_0
    const-string v8, "1184x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3094
    const-string v6, "800x480"

    .line 3101
    :cond_0
    :goto_1
    const-string v8, "CameraFramework"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    return-object v6

    .line 3089
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3095
    :cond_2
    const-string v8, "960x540"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3096
    const-string v6, "800x480"

    goto :goto_1

    .line 3097
    :cond_3
    const-string v8, "1280x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3098
    const-string v6, "800x480"

    goto :goto_1
.end method

.method private static isPermissionGranted()Z
    .locals 5

    .prologue
    .line 2703
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2705
    .local v1, "uid":I
    const-string v0, "sub-permission.OPEN_CAMERA"

    .line 2707
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2708
    const-string v2, "CameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open: user denied permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v2, 0x0

    .line 2712
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isRestricted(I)Z
    .locals 10
    .param p0, "pid"    # I

    .prologue
    .line 3036
    const/4 v7, 0x0

    .line 3037
    .local v7, "ret":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3039
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3041
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 3046
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3047
    .local v6, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3048
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    new-array v0, v8, [C

    .line 3050
    .local v0, "buf":[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 3051
    const/4 v8, 0x0

    aget-char v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3054
    :catch_0
    move-exception v2

    .line 3055
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3058
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.unveil"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3059
    const/4 v7, 0x1

    .line 3061
    :cond_0
    return v7

    .line 3042
    .end local v0    # "buf":[C
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "inReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 3043
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3053
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[C
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "inReader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private static native native_setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 504
    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 515
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .local v1, "i":I
    .local v2, "numberOfCameras":I
    :cond_0
    :goto_0
    return-object v3

    .line 507
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    .end local v2    # "numberOfCameras":I
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 508
    .restart local v2    # "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 509
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 510
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 511
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 512
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0

    .line 509
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 491
    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 557
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1589
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1590
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1594
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1595
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setMainFace(II)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2356
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    return-void
.end method

.method private final native startAUTORAMA(I)V
.end method

.method private native startGDPreview()V
.end method

.method private final native startOT(II)V
.end method

.method private native startSDPreview()V
.end method

.method private native stopAUTORAMA(I)V
.end method

.method private final native stopOT()V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1035
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1036
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1078
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1079
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1678
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1679
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1680
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1682
    return-void

    .line 1680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 644
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1695
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1696
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1697
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1714
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1715
    return-void

    .line 1697
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native cancelContinuousShot()V
.end method

.method public final cancelMainFaceInfo()V
    .locals 0

    .prologue
    .line 2869
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelMainFace()V

    .line 2870
    return-void
.end method

.method public native cancelPanorama()V
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1124
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1125
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1131
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1132
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1133
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1135
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1138
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 2037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final native doPanorama(I)V
.end method

.method public final enableRaw16(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1880
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRaw16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iput-boolean p1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 1882
    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->enableRaw16Callback(Z)V

    .line 1883
    return-void
.end method

.method public final native enableRaw16Callback(Z)V
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2010
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2012
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2017
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 2013
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2014
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraFramework"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 687
    return-void
.end method

.method public final native getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3127
    new-instance v0, Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, p0, v6}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 3128
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 3129
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 3131
    const-string v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera framework getParameters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-boolean v3, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setStereo3DMode(Z)V

    .line 3133
    const-string v3, "1"

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->isRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3138
    const-string v3, "tablet"

    const-string v4, "ro.build.characteristics"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3140
    const-string v2, "760x480"

    .line 3141
    .local v2, "size":Ljava/lang/String;
    const-string v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const-string v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    const-string v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    .end local v2    # "size":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 703
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AFDataCallback;

    .prologue
    .line 2554
    iput-object p1, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 2555
    return-void
.end method

.method public final setAsdCallback(Landroid/hardware/Camera$AsdCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AsdCallback;

    .prologue
    .line 2533
    iput-object p1, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    .line 2534
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1747
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1748
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1749
    return-void

    .line 1748
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoRamaCallback(Landroid/hardware/Camera$AutoRamaCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaCallback;

    .prologue
    .line 2698
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    .line 2699
    return-void
.end method

.method public final setAutoRamaMoveCallback(Landroid/hardware/Camera$AutoRamaMoveCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaMoveCallback;

    .prologue
    .line 2724
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    .line 2725
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera$ContinuousShotCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ContinuousShotCallback;

    .prologue
    .line 2998
    iput-object p1, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    .line 2999
    return-void
.end method

.method public native setContinuousShotSpeed(I)V
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setDistanceInfoCallback(Landroid/hardware/Camera$DistanceInfoCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$DistanceInfoCallback;

    .prologue
    .line 2779
    iput-object p1, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    .line 2780
    return-void
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2332
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2333
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 2105
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 2106
    return-void
.end method

.method public final setFbOriginalCallback(Landroid/hardware/Camera$FbOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$FbOriginalCallback;

    .prologue
    .line 2801
    iput-object p1, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    .line 2802
    return-void
.end method

.method public final setGestureCallback(Landroid/hardware/Camera$GestureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$GestureCallback;

    .prologue
    .line 2407
    iput-object p1, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    .line 2408
    return-void
.end method

.method public final setHdrOriginalCallback(Landroid/hardware/Camera$HdrOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$HdrOriginalCallback;

    .prologue
    .line 2746
    iput-object p1, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    .line 2747
    return-void
.end method

.method public final setMainFaceCoordinate(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2860
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setMainFace(II)V

    .line 2861
    return-void
.end method

.method public final setMotionTrackCallback(Landroid/hardware/Camera$MotionTrackCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$MotionTrackCallback;

    .prologue
    .line 2735
    iput-object p1, p0, Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

    .line 2736
    return-void
.end method

.method public final setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$ObjectTrackingListener;

    .prologue
    .line 2927
    iget-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2928
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

    .line 2929
    monitor-exit v1

    .line 2930
    return-void

    .line 2929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 953
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 954
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 955
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 956
    if-eqz p1, :cond_0

    .line 957
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 959
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 960
    return-void

    :cond_1
    move v0, v1

    .line 959
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3014
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 3015
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3016
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3017
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 3019
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3024
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 3025
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 927
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 928
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 929
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 930
    if-eqz p1, :cond_0

    .line 931
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 935
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 936
    return-void

    :cond_1
    move v0, v1

    .line 935
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v2, 0x0

    .line 1190
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1191
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1192
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1193
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1195
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1204
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1209
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1211
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1215
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1219
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1220
    return-void

    .line 1217
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 991
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 992
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 993
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 994
    if-eqz p1, :cond_0

    .line 995
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 997
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 998
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    if-eqz p1, :cond_0

    .line 787
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ZSDPreviewDone;

    .prologue
    .line 2977
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 2978
    return-void
.end method

.method public setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewRawDumpCallback;

    .prologue
    .line 2968
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 2969
    return-void
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setRaw16Callback(Landroid/hardware/Camera$MetadataCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "meta"    # Landroid/hardware/Camera$MetadataCallback;
    .param p2, "raw16"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1868
    const-string v0, "CameraFramework"

    const-string v1, "setRaw16Callback"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iput-object p1, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    .line 1870
    iput-object p2, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    .line 1871
    return-void
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$SmileCallback;

    .prologue
    .line 2396
    iput-object p1, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 2397
    return-void
.end method

.method public setStereo3DModeForCamera(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3116
    iput-boolean p1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 3117
    return-void
.end method

.method public final setStereoCameraJpsCallback(Landroid/hardware/Camera$StereoCameraJpsCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraJpsCallback;

    .prologue
    .line 2757
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

    .line 2758
    return-void
.end method

.method public final setStereoCameraMaskCallback(Landroid/hardware/Camera$StereoCameraMaskCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraMaskCallback;

    .prologue
    .line 2790
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

    .line 2791
    return-void
.end method

.method public final setStereoCameraWarningCallback(Landroid/hardware/Camera$StereoCameraWarningCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraWarningCallback;

    .prologue
    .line 2768
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    .line 2769
    return-void
.end method

.method public final setUncompressedImageCallback(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 2812
    iput-object p1, p0, Landroid/hardware/Camera;->mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 2813
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 2075
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 2076
    return-void
.end method

.method public final native start3DSHOT(I)V
.end method

.method public final startAutoRama(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 2823
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->startAUTORAMA(I)V

    .line 2824
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2141
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2144
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 2145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2146
    return-void
.end method

.method public startGestureDetection()V
    .locals 0

    .prologue
    .line 2488
    invoke-direct {p0}, Landroid/hardware/Camera;->startGDPreview()V

    .line 2489
    return-void
.end method

.method public native startMotionTrack(I)V
.end method

.method public final startObjectTracking(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2879
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->startOT(II)V

    .line 2880
    return-void
.end method

.method public final native startPreview()V
.end method

.method public startSmileDetection()V
    .locals 0

    .prologue
    .line 2446
    invoke-direct {p0}, Landroid/hardware/Camera;->startSDPreview()V

    .line 2447
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public native stop3DSHOT(I)V
.end method

.method public stopAutoRama(I)V
    .locals 0
    .param p1, "isMerge"    # I

    .prologue
    .line 2836
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->stopAUTORAMA(I)V

    .line 2837
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2154
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 2155
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2156
    return-void
.end method

.method public stopGestureDetection()V
    .locals 0

    .prologue
    .line 2505
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelGDPreview()V

    .line 2506
    return-void
.end method

.method public native stopMotionTrack()V
.end method

.method public final stopObjectTracking()V
    .locals 0

    .prologue
    .line 2889
    invoke-direct {p0}, Landroid/hardware/Camera;->stopOT()V

    .line 2890
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 888
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 891
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 892
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 893
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 894
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 895
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 896
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 897
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 899
    return-void

    .line 897
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopSmileDetection()V
    .locals 0

    .prologue
    .line 2464
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelSDPreview()V

    .line 2465
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1803
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1837
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1838
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1839
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1840
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1845
    or-int/lit8 v0, v0, 0x2

    .line 1847
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1848
    or-int/lit16 v0, v0, 0x80

    .line 1850
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1851
    or-int/lit8 v0, v0, 0x40

    .line 1853
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1854
    or-int/lit16 v0, v0, 0x100

    .line 1857
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1858
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1859
    return-void
.end method

.method public final native unlock()V
.end method

.method private hook_cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    const/16 v0, 0x4c

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
