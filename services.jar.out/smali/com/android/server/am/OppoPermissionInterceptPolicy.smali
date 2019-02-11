.class public Lcom/android/server/am/OppoPermissionInterceptPolicy;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;,
        Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    }
.end annotation


# static fields
.field private static final ALERT_PERMISSION_APPS:Ljava/lang/String; = "alert_permission_apps.xml"

.field private static final ALERT_PERMISSION_DATA_DIR:Ljava/lang/String; = "//data//oppo//permission//"

.field private static final DEBUG:Z = false

.field private static final DO_CHECK_PERMISSION:I = 0x0

.field private static KEY_CTSVERSION_PROPERTIES:Ljava/lang/String; = null

.field private static KEY_PERMISSION_PROPERTIES:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OppoPermissionInterceptPolicy"

.field private static final UPDATE_PERMISSION_CHOICE:I = 0x1

.field private static final XML_TAG_ALERT:Ljava/lang/String; = "alert"

.field private static final XML_TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "allowbackground"

.field private static final XML_TAG_BACKGROUND_SKIP:Ljava/lang/String; = "background_skip"

.field private static final XML_TAG_SMS_CONTENT:Ljava/lang/String; = "sms"

.field private static final XML_TAG_SMS_NUMBER:Ljava/lang/String; = "number"

.field private static alertAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static alertAppListener:Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;

.field private static allowBackgroundRequest:Ljava/lang/Boolean;

.field private static isCtaVersion:Ljava/lang/Boolean;

.field private static volatile isPermissionInterceptEnabled:Z

.field private static mBackgroundSkipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field private static sPermissionCheckMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermissionsPrompt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPendingMsgHandler:Landroid/os/Handler;

.field private mPendingMsgThread:Landroid/os/HandlerThread;

.field private mPermissionHandler:Landroid/os/Handler;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSaveCheckBox:Landroid/widget/CheckBox;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v0, "persist.oppo.ctsversion"

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_CTSVERSION_PROPERTIES:Ljava/lang/String;

    .line 84
    const-string v0, "persist.sys.permission.enable"

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    .line 85
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_CTSVERSION_PROPERTIES:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->allowBackgroundRequest:Ljava/lang/Boolean;

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isCtaVersion:Ljava/lang/Boolean;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->alertAppList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    return-void

    :cond_0
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionMsgPendingThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    .line 183
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PermissionTimerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    .line 198
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 199
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    .line 200
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cmcc.optr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sput-boolean v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 203
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc07040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 210
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    .line 253
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 254
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;

    .line 289
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 290
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerHandler:Landroid/os/Handler;

    .line 292
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cta.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isCtaVersion:Ljava/lang/Boolean;

    .line 293
    const-string v0, "alert_permission_apps.xml"

    invoke-static {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->initAlertAppList(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;

    const-string v1, "//data//oppo//permission//alert_permission_apps.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->alertAppListener:Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;

    .line 295
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->alertAppListener:Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;

    invoke-virtual {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$AlertDataFileListener;->startWatching()V

    .line 298
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sogou.speech.offlineservice"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    .line 304
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isCtaVersion:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->allowBackgroundRequest:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getCurrentFocus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->initAlertAppList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p1, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V

    return-void
.end method

.method public static adjustThirdList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p0, "thirdList"    # Ljava/util/List;
    .param p1, "res"    # Ljava/util/List;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 824
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 825
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 826
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 827
    .local v5, "thirdApk":Ljava/lang/Object;
    instance-of v6, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 828
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 829
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 830
    .local v4, "s_ri":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 831
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 834
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "s_ri":Ljava/lang/String;
    :cond_1
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_0

    move-object v0, v5

    .line 835
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 836
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 837
    .local v3, "s_bf":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 838
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 843
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v3    # "s_bf":Ljava/lang/String;
    .end local v5    # "thirdApk":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    .locals 2
    .param p1, "packagePermission"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .param p2, "permissionMask"    # I
    .param p3, "choice"    # I

    .prologue
    .line 364
    if-nez p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    if-nez p3, :cond_2

    .line 368
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 369
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 370
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0

    .line 371
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p3, :cond_3

    .line 372
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 373
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 374
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0

    .line 375
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p3, :cond_0

    .line 376
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 377
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 378
    iget v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    or-int/2addr v0, p2

    iput v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    goto :goto_0
.end method

.method private getCurrentFocus()Ljava/lang/String;
    .locals 10

    .prologue
    .line 998
    const-string v6, ""

    .line 999
    .local v6, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1000
    .local v1, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1002
    .local v4, "read":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "dumpsys window"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1003
    .local v3, "pro":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1004
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    .end local v4    # "read":Ljava/io/BufferedReader;
    .local v5, "read":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, "lineString":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1007
    const-string v7, "mCurrentFocus"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1008
    move-object v6, v2

    .line 1009
    const-string v7, "OppoPermissionInterceptPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentFocus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1018
    :cond_0
    if-eqz v5, :cond_1

    .line 1019
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    .line 1025
    .end local v2    # "lineString":Ljava/lang/String;
    .end local v3    # "pro":Ljava/lang/Process;
    .end local v5    # "read":Ljava/io/BufferedReader;
    .restart local v4    # "read":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v6

    .line 1012
    .end local v4    # "read":Ljava/io/BufferedReader;
    .restart local v2    # "lineString":Ljava/lang/String;
    .restart local v3    # "pro":Ljava/lang/Process;
    .restart local v5    # "read":Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OppoPermissionInterceptPolicy"

    const-string v8, "getCurrentFocus close err !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 1024
    .end local v5    # "read":Ljava/io/BufferedReader;
    .restart local v4    # "read":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1014
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "lineString":Ljava/lang/String;
    .end local v3    # "pro":Ljava/lang/Process;
    :catch_1
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1018
    if-eqz v4, :cond_2

    .line 1019
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1021
    :catch_2
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OppoPermissionInterceptPolicy"

    const-string v8, "getCurrentFocus close err !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1017
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1018
    :goto_3
    if-eqz v4, :cond_4

    .line 1019
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1023
    :cond_4
    :goto_4
    throw v7

    .line 1021
    :catch_3
    move-exception v0

    .line 1022
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v9, "getCurrentFocus close err !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1017
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "read":Ljava/io/BufferedReader;
    .restart local v3    # "pro":Ljava/lang/Process;
    .restart local v5    # "read":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "read":Ljava/io/BufferedReader;
    .restart local v4    # "read":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1014
    .end local v4    # "read":Ljava/io/BufferedReader;
    .restart local v5    # "read":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "read":Ljava/io/BufferedReader;
    .restart local v4    # "read":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 191
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 194
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    return-object v0
.end method

.method private getPackageLabel(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 471
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 477
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 479
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 480
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 485
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OppoPermissionInterceptPolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPermissionMask(Ljava/lang/String;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "mask":I
    sget-object v2, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 385
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 386
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 391
    :cond_0
    return v1
.end method

.method private getPermissionPromptStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "country":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 493
    :cond_0
    iput-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentLanguage:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mCurrentCountry:Ljava/lang/String;

    .line 495
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc07040d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    .line 498
    :cond_1
    sget-object v4, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 499
    .local v1, "index":I
    const-string v3, ""

    .line 500
    .local v3, "text":Ljava/lang/String;
    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    sget-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 501
    sget-object v4, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionsPrompt:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "text":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 503
    .restart local v3    # "text":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private static initAlertAppList(Ljava/lang/String;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 893
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//data//oppo//permission//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const/4 v2, 0x0

    .line 902
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->readDataFromXML(Ljava/io/FileInputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 909
    if-eqz v3, :cond_2

    .line 910
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 914
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 912
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 913
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 915
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 904
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 905
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    const-string v4, "OppoPermissionInterceptPolicy"

    const-string v5, "initAlertAppList err !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    if-eqz v2, :cond_0

    .line 910
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 912
    :catch_2
    move-exception v1

    .line 913
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 908
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 909
    :goto_2
    if-eqz v2, :cond_3

    .line 910
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 914
    :cond_3
    :goto_3
    throw v4

    .line 912
    :catch_3
    move-exception v1

    .line 913
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 908
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 904
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private isEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 983
    const-string v4, "input_method"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 984
    .local v3, "mImm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 985
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 986
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 987
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 988
    const/4 v4, 0x1

    .line 993
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 559
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V
    .locals 5
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "res"    # I

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 509
    .local v0, "callBack":Lcom/android/server/am/OppoPermissionCallback;
    if-eqz v0, :cond_0

    .line 510
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isWaitingPermissionChoice:Z

    .line 513
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    invoke-virtual {v0, v2, v3, p2, v4}, Lcom/android/server/am/OppoPermissionCallback;->notifyApplication(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v0    # "callBack":Lcom/android/server/am/OppoPermissionCallback;
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OppoPermissionInterceptPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    .locals 5
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    .param p2, "res"    # I
    .param p3, "save"    # Z

    .prologue
    .line 523
    monitor-enter p0

    .line 524
    if-eqz p3, :cond_0

    .line 525
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 526
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v3, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 527
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    invoke-direct {p0, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    .line 528
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    iget v4, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    .line 531
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V

    .line 534
    sget-object v3, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 535
    :try_start_1
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 536
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .line 538
    .local v1, "temp":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    invoke-virtual {p1, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->equals(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v2, v4, :cond_2

    .line 542
    const-string v2, "OppoPermissionInterceptPolicy"

    const-string v4, "pcm.pr.pid != temp.pr.pid"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 545
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->notifyWaitingApp(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;I)V

    goto :goto_0

    .line 549
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    .end local v1    # "temp":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 531
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 548
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;>;"
    :cond_3
    :try_start_3
    sget-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 549
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    return-void
.end method

.method private queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 395
    const-string v3, "pkg_name=?"

    .line 396
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v0

    .line 397
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 398
    .local v6, "cr":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 400
    .local v8, "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/content/pm/OppoPermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    if-eqz v6, :cond_0

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    invoke-direct {v9, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .local v9, "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->id:I

    .line 407
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    .line 408
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 409
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 410
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    .line 411
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 417
    .end local v9    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    :cond_0
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_1
    :goto_0
    return-object v8

    .line 414
    :catch_0
    move-exception v7

    .line 415
    .local v7, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 417
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_2

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 417
    .end local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v9    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    goto :goto_2

    .line 414
    .end local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v9    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v8    # "pkgPermission":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    goto :goto_1
.end method

.method private static readDataFromXML(Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 923
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 924
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v4, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 926
    const-string v7, "alert_permission_apps.xml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 927
    sget-object v7, Lcom/android/server/am/OppoPermissionInterceptPolicy;->alertAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 928
    sget-object v7, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 933
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 934
    .local v6, "type":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 935
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "tag":Ljava/lang/String;
    const-string v7, "alert_permission_apps.xml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 937
    const-string v7, "alert"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 938
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "app":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/OppoPermissionInterceptPolicy;->alertAppList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v0    # "app":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 959
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :goto_1
    return-void

    .line 942
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_2
    const-string v7, "allowbackground"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 943
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 945
    .local v2, "flag":Ljava/lang/Boolean;
    sput-object v2, Lcom/android/server/am/OppoPermissionInterceptPolicy;->allowBackgroundRequest:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    .end local v2    # "flag":Ljava/lang/Boolean;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 956
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 957
    const-string v7, "OppoPermissionInterceptPolicy"

    const-string v8, "readDataFromXML err !!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 947
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_3
    :try_start_1
    const-string v7, "background_skip"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 949
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static reorderReceiverList(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "receivers"    # Ljava/util/List;

    .prologue
    .line 846
    if-nez p0, :cond_1

    .line 847
    const/4 v7, 0x0

    .line 887
    :cond_0
    return-object v7

    .line 849
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v9, "systemList":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v11, "thirdList":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v7, "res":Ljava/util/List;
    const/4 v12, 0x5

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "com.qihoo360.mobilesafe"

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string v13, "com.anguanjia.safe"

    aput-object v13, v6, v12

    const/4 v12, 0x2

    const-string v13, "com.blovestorm"

    aput-object v13, v6, v12

    const/4 v12, 0x3

    const-string v13, "com.cootek.smartdialer"

    aput-object v13, v6, v12

    const/4 v12, 0x4

    const-string v13, "com.sg.sledog"

    aput-object v13, v6, v12

    .line 854
    .local v6, "packageNames":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 855
    .local v10, "temp":Ljava/lang/Object;
    instance-of v12, v10, Landroid/content/pm/ResolveInfo;

    if-eqz v12, :cond_4

    move-object v8, v10

    .line 856
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 857
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_3

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    .line 861
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_3
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    instance-of v12, v10, Lcom/android/server/am/BroadcastFilter;

    if-eqz v12, :cond_2

    move-object v1, v10

    .line 866
    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 867
    .local v1, "bf":Lcom/android/server/am/BroadcastFilter;
    if-eqz v1, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5

    .line 870
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    :cond_5
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 877
    .end local v1    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v10    # "temp":Ljava/lang/Object;
    :cond_6
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v5, v0, v2

    .line 878
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v11, v7, v5}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->adjustThirdList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 881
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 882
    .local v4, "o":Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 884
    .end local v4    # "o":Ljava/lang/Object;
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 885
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    .locals 6
    .param p1, "packagePermission"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .prologue
    .line 426
    const-string v1, "pkg_name=?"

    .line 427
    .local v1, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 428
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "accept"

    iget v5, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v4, "reject"

    iget v5, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v4, "prompt"

    iget v5, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/content/pm/OppoPermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "OppoPermissionInterceptPolicy"

    const-string v5, "savePermissionChoice error !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 2
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method private final showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 19
    .param p1, "pcm"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0xc09043d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 577
    .local v12, "parentView":Landroid/view/View;
    const v3, 0xc02046f

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 578
    .local v14, "permissiomPrompt":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPackageLabel(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v11

    .line 579
    .local v11, "packageLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040484

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 580
    .local v18, "securitystr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionPromptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 581
    .local v13, "perimissionLabel":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const v3, 0xc020471

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    .line 585
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_MMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.WRITE_MMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    :cond_0
    const-string v3, "OppoPermissionInterceptPolicy"

    const-string v4, "when permission is SMS,owWindow, set checkbox is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 599
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040487

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 600
    .local v17, "rejectStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040488

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 601
    .local v8, "acceptStr":Ljava/lang/String;
    new-instance v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;

    const-wide/16 v4, 0x4e20

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;JJ)V

    .line 602
    .local v2, "mCountDownTimer":Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc030007

    invoke-direct {v9, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 604
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 605
    new-instance v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$4;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    invoke-virtual {v9, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    new-instance v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;

    const v4, 0xc040483

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 630
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    .line 632
    .local v15, "permissionChoiceDialog":Landroid/app/AlertDialog;
    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 633
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "Permission Intercept"

    invoke-virtual {v10, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 634
    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 637
    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 639
    const/4 v3, -0x2

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v16

    .line 640
    .local v16, "rejectBtn":Landroid/widget/Button;
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->rejectBtn:Landroid/widget/Button;

    .line 641
    iput-object v15, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->permissionChoiceDialog:Landroid/app/AlertDialog;

    .line 642
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .line 643
    invoke-virtual {v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 644
    return-void
.end method


# virtual methods
.method public checkPermissionForProc(Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)I
    .locals 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "token"    # I
    .param p5, "callback"    # Lcom/android/server/am/OppoPermissionCallback;

    .prologue
    .line 311
    const/4 v9, 0x3

    .line 312
    .local v9, "result":I
    const/16 v1, 0x2710

    if-lt p3, v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    move v10, v9

    .line 331
    .end local v9    # "result":I
    .local v10, "result":I
    :goto_0
    return v10

    .line 316
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 317
    .local v2, "lock":Ljava/lang/Object;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/Object;Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)V

    .line 320
    .local v0, "queryRunnable":Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 322
    iget v9, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 323
    monitor-exit v2

    .end local v0    # "queryRunnable":Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
    .end local v2    # "lock":Ljava/lang/Object;
    :goto_1
    move v10, v9

    .line 331
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_0

    .line 323
    .end local v10    # "result":I
    .restart local v2    # "lock":Ljava/lang/Object;
    .restart local v9    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    .end local v2    # "lock":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 325
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const/4 v9, 0x3

    goto :goto_1
.end method

.method public getProcessForPackageName(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 447
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    monitor-exit v3

    .line 453
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 445
    .restart local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v3

    .line 453
    const/4 v1, 0x0

    goto :goto_1

    .line 452
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProcessForPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 457
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 460
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p1, :cond_0

    .line 461
    monitor-exit v3

    .line 465
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 458
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 464
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v3

    .line 465
    const/4 v1, 0x0

    goto :goto_1

    .line 464
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPermissionInterceptEnabled()Z
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    return v0
.end method

.method public setPermissionInterceptEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 353
    sput-boolean p1, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled:Z

    .line 354
    sget-object v0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->KEY_PERMISSION_PROPERTIES:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "choice"    # I

    .prologue
    .line 338
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$1;)V

    .line 342
    .local v1, "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    iput-object p1, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    .line 343
    iput-object p2, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->permission:Ljava/lang/String;

    .line 344
    iput p3, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    .line 345
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 347
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
