.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field private static final AUTHORITY:Ljava/lang/String; = "com.coloros.provider.BlackListProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND sub_id=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field static final SUB_ID_COLUMN:I = 0x8

.field private static final TABLE_BL_LIST:Ljava/lang/String; = "bl_list"

.field public static TAG:Ljava/lang/String; = null

.field private static final URI_BLACKLIST_BLOCK_SMS_AND_CALL:Landroid/net/Uri;

.field private static URI_BLACKLIST_LIST:Landroid/net/Uri; = null

.field private static final URI_PATH_SMS_AND_CALL_BLOCK:Ljava/lang/String; = "sms_and_call_block"

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field private mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mMomsReceiver:Landroid/content/BroadcastReceiver;

.field private mOppoUsageManager:Landroid/os/OppoUsageManager;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

.field protected mRawLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field public mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    const-string v0, "InboundSmsHandler"

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    .line 149
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 206
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 1354
    const-string v0, "content://com.coloros.provider.BlackListProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1356
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bl_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->URI_BLACKLIST_LIST:Landroid/net/Uri;

    .line 1358
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->URI_BLACKLIST_LIST:Landroid/net/Uri;

    const-string v1, "sms_and_call_block"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->URI_BLACKLIST_BLOCK_SMS_AND_CALL:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 218
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 221
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 224
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 227
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 230
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 247
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    .line 250
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 253
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 256
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 262
    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    .line 2161
    new-instance v5, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 276
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 277
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 278
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 279
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 280
    new-instance v5, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v5, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 285
    invoke-static {}, Landroid/os/OppoUsageManager;->getOppoUsageManager()Landroid/os/OppoUsageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    .line 288
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1120050

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 290
    .local v4, "smsCapable":Z
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7, v4}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 293
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 294
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3, v6, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 295
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 296
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 299
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 300
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 301
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 302
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 304
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 305
    const-string v5, "created InboundSmsHandler"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 309
    const-string v5, "ro.mtk_bsp_package"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    :try_start_0
    const-class v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    .line 313
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v5, :cond_5

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->setPhoneId(I)V

    .line 315
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "actualClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial IConcatenatedSmsFwkExt done, actual class name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "actualClassName":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v5, :cond_1

    .line 329
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 334
    :cond_1
    new-instance v5, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    .line 336
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 338
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 290
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 319
    .restart local v3    # "pm":Landroid/os/PowerManager;
    :cond_5
    :try_start_1
    const-string v5, "FAIL! intial mConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "FAIL! No IConcatenatedSmsFwkExt"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/OppoUsageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 28
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1539
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1541
    const/4 v10, 0x0

    .line 1544
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v24

    .line 1547
    .local v24, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1548
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 1549
    .local v20, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1551
    .local v9, "count":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1553
    .local v21, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 1558
    .local v25, "subId":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v11, v2

    const/4 v2, 0x1

    aput-object v20, v11, v2

    const/4 v2, 0x2

    aput-object v9, v11, v2

    const/4 v2, 0x3

    aput-object v25, v11, v2

    .line 1560
    .local v11, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=? AND sub_id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=? AND sub_id=?"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v20, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v21, v6, v7

    const/4 v7, 0x4

    aput-object v25, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1573
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1574
    .local v17, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v18

    .line 1575
    .local v18, "pdu":[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1576
    .local v16, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1580
    :cond_0
    const/4 v2, 0x5

    .line 1587
    if-eqz v10, :cond_1

    .line 1588
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1674
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v16    # "oldPdu":[B
    .end local v17    # "oldPduString":Ljava/lang/String;
    .end local v18    # "pdu":[B
    .end local v20    # "refNumber":Ljava/lang/String;
    .end local v21    # "seqNumber":Ljava/lang/String;
    .end local v24    # "sequence":I
    .end local v25    # "subId":Ljava/lang/String;
    :goto_0
    return v2

    .line 1582
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v9    # "count":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v20    # "refNumber":Ljava/lang/String;
    .restart local v21    # "seqNumber":Ljava/lang/String;
    .restart local v24    # "sequence":I
    .restart local v25    # "subId":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1587
    if-eqz v10, :cond_3

    .line 1588
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1596
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v20    # "refNumber":Ljava/lang/String;
    .end local v21    # "seqNumber":Ljava/lang/String;
    .end local v24    # "sequence":I
    .end local v25    # "subId":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 1603
    .local v14, "isFirstSegment":Z
    :try_start_5
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1606
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v2, :cond_4

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->isFirstConcatenatedSegment(Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    .line 1624
    :cond_4
    :goto_1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v26

    .line 1627
    .local v26, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1628
    .local v15, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1636
    :try_start_7
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1638
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    .line 1640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: the first segment, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1642
    const-string v2, "ConcatenatedSmsFwkExt: start a new timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1643
    new-instance v19, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1645
    .local v19, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v19, :cond_5

    .line 1646
    const-string v2, "ConcatenatedSmsFwkExt: fail to new TimerRecord to start timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1651
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v2, :cond_6

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1666
    .end local v19    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_6
    :goto_2
    :try_start_8
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 1667
    .local v22, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1669
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1671
    :cond_7
    const/4 v2, 0x1

    :try_start_9
    monitor-exit v27

    goto/16 :goto_0

    .line 1676
    .end local v14    # "isFirstSegment":Z
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v22    # "rowId":J
    .end local v26    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v2

    .line 1583
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 1584
    .local v12, "e":Landroid/database/SQLException;
    :try_start_a
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1585
    const/4 v2, 0x2

    .line 1587
    if-eqz v10, :cond_8

    .line 1588
    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    monitor-exit v27

    goto/16 :goto_0

    .line 1587
    .end local v12    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_9

    .line 1588
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 1619
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "isFirstSegment":Z
    :catch_1
    move-exception v13

    .line 1620
    .local v13, "eInner":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1660
    .end local v13    # "eInner":Ljava/lang/Exception;
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v26    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 1661
    .restart local v13    # "eInner":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1672
    .end local v13    # "eInner":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 1673
    .local v12, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1674
    const/4 v2, 0x2

    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 7
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 2053
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2055
    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2063
    :goto_0
    return-object v5

    .line 2058
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2059
    .local v1, "body":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 2061
    .local v4, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2063
    .end local v4    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1152
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1153
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "android.permission.CARRIER_FILTER_SMS"

    .line 1155
    .local v0, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1156
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    .line 1157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t get service information from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1161
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1163
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static isColorOsVersion3X()Z
    .locals 2

    .prologue
    .line 1388
    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "romversion":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1390
    :cond_0
    const/4 v1, 0x0

    .line 1393
    :goto_0
    return v1

    :cond_1
    const-string v1, "V3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1684
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1685
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInBlackLists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1362
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->URI_BLACKLIST_BLOCK_SMS_AND_CALL:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1364
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1366
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "block_type=1 OR block_type=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1372
    if-nez v6, :cond_1

    .line 1380
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_0
    :goto_0
    return v9

    .line 1375
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 1376
    .local v8, "i":I
    if-lez v8, :cond_3

    const/4 v0, 0x1

    .line 1380
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v0

    goto :goto_0

    :cond_3
    move v0, v9

    .line 1376
    goto :goto_1

    .line 1377
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 1378
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1380
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1380
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 2028
    aget-object v0, p0, v3

    .line 2029
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2030
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "address"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v4, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string v4, "date_sent"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2033
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2034
    const-string v4, "protocol"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2035
    const-string v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2036
    const-string v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2037
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2039
    const-string v4, "subject"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :cond_0
    const-string v4, "reply_path_present"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    const-string v3, "service_center"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-object v2
.end method

.method private printIntentOppo(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1400
    if-eqz p1, :cond_2

    .line 1402
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1403
    .local v4, "action":Ljava/lang/String;
    const-string v20, "rTime"

    const-wide/16 v22, -0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1404
    .local v16, "rTime":J
    const-string v20, "destport"

    const/16 v21, -0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1405
    .local v8, "destport":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "pdus"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 1406
    .local v11, "hasPdu":Z
    const-string v20, "format"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1407
    .local v10, "format":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1408
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1409
    .local v7, "data":Landroid/net/Uri;
    const-string v20, "sms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "intent="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  rTime="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  destport="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  hasPdu="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  format="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " componentName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  data="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v20, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1413
    .local v13, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 1414
    .local v14, "mimeType2":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1415
    :cond_0
    const-string v20, "transactionId"

    const/16 v21, -0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1416
    .local v19, "transactionId":I
    const-string v20, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 1417
    .local v12, "header":[B
    const-string v20, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1418
    .local v5, "address":Ljava/lang/String;
    const-string v20, "service_center"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1419
    .local v18, "serviceCenter":Ljava/lang/String;
    const-string v20, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v15

    .line 1420
    .local v15, "pdudata":[B
    const-string v20, "sms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mimeType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mimeType2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  transactionId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  header="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  address="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  serviceCenter="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  data="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "data":Landroid/net/Uri;
    .end local v8    # "destport":I
    .end local v10    # "format":Ljava/lang/String;
    .end local v11    # "hasPdu":Z
    .end local v12    # "header":[B
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "mimeType2":Ljava/lang/String;
    .end local v15    # "pdudata":[B
    .end local v16    # "rTime":J
    .end local v18    # "serviceCenter":Ljava/lang/String;
    .end local v19    # "transactionId":I
    :cond_1
    :goto_0
    return-void

    .line 1424
    :catch_0
    move-exception v9

    .line 1425
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1428
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v20, "sms"

    const-string v21, "printIntentOppo--intent == null!!"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2069
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1993
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 1994
    .local v6, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_0

    array-length v10, v6

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 1995
    :cond_0
    const-string v10, "Failed to parse SMS pdu"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 2018
    :goto_0
    return-object v9

    .line 2001
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 2003
    .local v7, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2004
    :catch_0
    move-exception v1

    .line 2005
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v10, "NPE inside SmsMessage"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2009
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 2010
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2012
    .local v4, "identity":J
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 2016
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2013
    :catch_1
    move-exception v1

    .line 2014
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "Failed to persist inbox message"

    invoke-virtual {p0, v10, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2016
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method


# virtual methods
.method protected MomsPermissionCheck(Landroid/content/Intent;)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2192
    const-string v10, "[Moms] PermissionCheck"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2193
    const/4 v2, 0x0

    .line 2195
    .local v2, "checkResult":I
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2198
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2199
    if-nez v2, :cond_2

    .line 2200
    const-string v10, "[Moms] Phone privacy check start"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2202
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2203
    .local v8, "pplData":Landroid/os/Bundle;
    const-string v10, "pdus"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 2204
    .local v5, "messages":[Ljava/lang/Object;
    array-length v10, v5

    new-array v7, v10, [[B

    .line 2205
    .local v7, "pdus":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v5

    if-ge v4, v10, :cond_1

    .line 2206
    aget-object v10, v5, v4

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v7, v4

    .line 2205
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2209
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "pdus"

    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2210
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v11, "format"

    const-string v10, "format"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "subId"

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    const-string v10, "smsType"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2215
    const/4 v9, 0x0

    .line 2216
    .local v9, "pplResult":Z
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPplSmsFilter:Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;

    invoke-interface {v10, v8}, Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;->pplFilter(Landroid/os/Bundle;)Z

    move-result v9

    .line 2217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] Phone privacy check end, Need to filter(result) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2218
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2219
    const/4 v2, -0x1

    .line 2224
    .end local v4    # "i":I
    .end local v5    # "messages":[Ljava/lang/Object;
    .end local v7    # "pdus":[[B
    .end local v8    # "pplData":Landroid/os/Bundle;
    .end local v9    # "pplResult":Z
    :cond_2
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] getInterceptionEnabledSetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v11}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2227
    if-nez v2, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v10}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2229
    const/4 v2, -0x1

    .line 2230
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2231
    .local v6, "params":Landroid/os/Bundle;
    const-string v10, "intent"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2232
    const-string v10, "subId"

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v6, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2233
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-interface {v10, v11, v6, v12}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 2236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Moms] dispatchPdus, checkResult="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2245
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return v2

    .line 2240
    :catch_0
    move-exception v3

    .line 2241
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "[Moms] Suppressing notification faild!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 833
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 843
    :goto_0
    :sswitch_0
    return v0

    .line 835
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1228
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1231
    const-string v1, "No rows need be deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1244
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1238
    .local v0, "rows":I
    if-nez v0, :cond_1

    .line 1239
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1243
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rows":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1241
    .restart local v0    # "rows":I
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows from raw table."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public deleteRawForWappush(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1709
    :try_start_0
    check-cast p1, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->deleteRaw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "sms"

    const-string v2, "need sms framework checkou!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dispatchConcateSmsParts(Lcom/mediatek/common/sms/TimerRecord;)Z
    .locals 17
    .param p1, "record"    # Lcom/mediatek/common/sms/TimerRecord;

    .prologue
    .line 2074
    const/4 v13, 0x0

    .line 2076
    .local v13, "handled":Z
    const-string v4, "ConcatenatedSmsFwkExt: receive timeout message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2077
    if-nez p1, :cond_0

    .line 2078
    const-string v4, "ConcatenatedSmsFwkExt: null TimerRecord in msg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2079
    const/4 v4, 0x0

    .line 2154
    :goto_0
    return v4

    .line 2081
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: timer is expired, dispatch existed segments. refNumber = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2085
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 2086
    .local v2, "smsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2087
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 2089
    .local v8, "receiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2095
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)[[B

    move-result-object v5

    .line 2096
    .local v5, "pdus":[[B
    if-eqz v5, :cond_6

    array-length v4, v5

    if-lez v4, :cond_6

    .line 2097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v9

    .line 2098
    .local v9, "flag":I
    const/4 v4, 0x2

    if-eq v9, v4, :cond_1

    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 2100
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->setUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 2102
    const/4 v11, 0x0

    .line 2103
    .local v11, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v10

    .line 2104
    .local v10, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v10, :cond_2

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v11

    .line 2112
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v15

    .line 2116
    .local v15, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 2117
    const-string v4, "Found carrier package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2118
    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    const/4 v6, -0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;I)V

    .line 2120
    .local v3, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v14, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 2122
    .local v14, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v14}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 2136
    .end local v3    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v14    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :goto_2
    const/4 v13, 0x1

    .line 2143
    .end local v9    # "flag":I
    .end local v10    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v11    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConcatenatedSmsFwkExt: delete segment(s), ref = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    .end local v5    # "pdus":[[B
    :goto_4
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v13

    .line 2154
    goto/16 :goto_0

    .line 2109
    .restart local v5    # "pdus":[[B
    .restart local v9    # "flag":I
    .restart local v10    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v11    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    const-string v4, "UiccCard not initialized."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2148
    .end local v5    # "pdus":[[B
    .end local v9    # "flag":I
    .end local v10    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v11    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    .line 2149
    .local v12, "eInner":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2152
    .end local v12    # "eInner":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2123
    .restart local v5    # "pdus":[[B
    .restart local v9    # "flag":I
    .restart local v10    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v11    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v15, :cond_4

    :try_start_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 2124
    const-string v4, "Found system package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2125
    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    const/4 v6, -0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;I)V

    .line 2127
    .restart local v3    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v14, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 2129
    .restart local v14    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v14}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    goto :goto_2

    .line 2131
    .end local v3    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v14    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find carrier package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", nor systemPackages: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;I)V

    goto/16 :goto_2

    .line 2138
    .end local v10    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v11    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v4, "ConcatenatedSmsFwkExt: invalid upload flag"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2141
    .end local v9    # "flag":I
    :cond_6
    const-string v4, "ConcatenatedSmsFwkExt: no pdus to be dispatched"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1181
    const/high16 v2, 0x8000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1183
    const-string v2, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1186
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1188
    const/16 v17, 0x0

    .line 1190
    .local v17, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1193
    :goto_0
    if-nez v17, :cond_0

    .line 1194
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .end local v17    # "users":[I
    const/4 v2, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v17, v2

    .line 1198
    .restart local v17    # "users":[I
    :cond_0
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_6

    .line 1199
    new-instance v4, Landroid/os/UserHandle;

    aget v2, v17, v15

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1200
    .local v4, "targetUser":Landroid/os/UserHandle;
    aget v2, v17, v15

    if-eqz v2, :cond_3

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_sms"

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1198
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 1206
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v3, v17, v15

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 1207
    .local v16, "info":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1212
    .end local v16    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aget v3, v17, v15

    if-nez v3, :cond_4

    move-object/from16 v7, p4

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1217
    .end local v4    # "targetUser":Landroid/os/UserHandle;
    .end local v15    # "i":I
    .end local v17    # "users":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1221
    :cond_6
    return-void

    .line 1191
    .restart local v17    # "users":[I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x2

    .line 704
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 774
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 777
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_0

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_2

    .line 779
    :cond_0
    const/4 v6, -0x1

    .line 780
    .local v6, "destPort":I
    if-eqz v14, :cond_1

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_1

    .line 782
    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destination port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 787
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZZ)V

    .line 804
    .local v1, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    return v2

    .line 792
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_2
    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 793
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v13, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 794
    .local v13, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v13, :cond_3

    iget v6, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 797
    .restart local v6    # "destPort":I
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZLjava/lang/String;IIIZ)V

    .restart local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 794
    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;I)V
    .locals 14
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "longSmsUploadFlag"    # I

    .prologue
    .line 1258
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1259
    .local v2, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1260
    const-string v1, "format"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_8

    .line 1263
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 1268
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_7

    .line 1270
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1278
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v13

    .line 1280
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 1282
    const-string v1, "uri"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_0
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1294
    move/from16 v12, p5

    .line 1296
    .local v12, "uploadFlag":I
    if-nez v12, :cond_2

    .line 1298
    const/4 v12, 0x1

    .line 1299
    const/4 v1, 0x0

    aget-object v1, p1, v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 1300
    .local v9, "msg":Landroid/telephony/SmsMessage;
    if-eqz v9, :cond_1

    .line 1301
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 1302
    .local v11, "udh":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v11, :cond_1

    iget-object v1, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v1, :cond_1

    .line 1303
    new-instance v10, Lcom/mediatek/common/sms/TimerRecord;

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget-object v4, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-direct {v10, v1, v3, v4}, Lcom/mediatek/common/sms/TimerRecord;-><init>(Ljava/lang/String;II)V

    .line 1308
    .local v10, "tr":Lcom/mediatek/common/sms/TimerRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v1, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-interface {v1, v10}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I

    move-result v12

    .line 1313
    .end local v10    # "tr":Lcom/mediatek/common/sms/TimerRecord;
    .end local v11    # "udh":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFlag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1316
    .end local v9    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const/4 v1, 0x2

    if-eq v12, v1, :cond_3

    const/4 v1, 0x1

    if-ne v12, v1, :cond_4

    .line 1318
    :cond_3
    const-string v1, "dispatch all pdus with new/upload flag"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1319
    const-string v1, "upload_flag"

    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .end local v12    # "uploadFlag":I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1336
    :cond_5
    const-string v1, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1347
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_6
    :goto_2
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v1, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1349
    return-void

    .line 1274
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1325
    :catch_0
    move-exception v8

    .line 1326
    .local v8, "eInner":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1341
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "eInner":Ljava/lang/Exception;
    :cond_8
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1343
    .restart local v13    # "uri":Landroid/net/Uri;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1344
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected dispatchSmsRegAckMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 6
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 811
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "originatingAddress":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "messageBody":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.RECEIVE_SMS_REG_ACK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "originatingAddress"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v4, "messageBody"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ctsmsreg dispatchSmsRegAckMessage originatingAddress= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageBody= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 817
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "messageBody":Ljava/lang/String;
    .end local v3    # "originatingAddress":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ctsmsreg dispatchSmsRegAckMessage Exception"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 350
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getWappushMinetype(Lcom/android/internal/telephony/InboundSmsTracker;[[B)Ljava/lang/String;
    .locals 21
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B

    .prologue
    .line 1434
    const/16 v16, 0x0

    .line 1437
    .local v16, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1438
    .local v11, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v2, p2

    .local v2, "arr$":[[B
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v14, v2, v6

    .line 1440
    .local v14, "pduTmp":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1441
    const-string v18, "3gpp"

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 1443
    .local v10, "msg":Landroid/telephony/SmsMessage;
    if-eqz v10, :cond_0

    .line 1444
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v14

    .line 1448
    .end local v10    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v14, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1438
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1451
    .end local v14    # "pduTmp":[B
    :cond_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1452
    .local v12, "pdu":[B
    const/4 v7, 0x0

    .line 1453
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    aget-byte v18, v12, v7

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1454
    .local v17, "transactionId":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    aget-byte v18, v12, v8

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 1459
    .local v15, "pduType":I
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    const/16 v18, 0x7

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10e0079

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1463
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    .line 1464
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    aget-byte v18, v12, v7

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1465
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    aget-byte v18, v12, v8

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 1467
    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " PDU Type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " transactionID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    const/16 v18, 0x7

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    .line 1473
    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/16 v18, 0x0

    .line 1521
    .end local v2    # "arr$":[[B
    .end local v6    # "i$":I
    .end local v7    # "index":I
    .end local v9    # "len$":I
    .end local v11    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "pdu":[B
    .end local v15    # "pduType":I
    .end local v17    # "transactionId":I
    :goto_1
    return-object v18

    .line 1477
    .restart local v2    # "arr$":[[B
    .restart local v6    # "i$":I
    .restart local v7    # "index":I
    .restart local v9    # "len$":I
    .restart local v11    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "pdu":[B
    .restart local v15    # "pduType":I
    .restart local v17    # "transactionId":I
    :cond_2
    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/16 v18, 0x0

    goto :goto_1

    .line 1482
    :cond_3
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v13, v12}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 1490
    .local v13, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1491
    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v19, "Received PDU. Header Length error."

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/16 v18, 0x0

    goto :goto_1

    .line 1494
    :cond_4
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 1495
    .local v4, "headerLength":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v18

    add-int v7, v7, v18

    .line 1497
    move v5, v7

    .line 1511
    .local v5, "headerStartIndex":I
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1512
    sget-object v18, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v19, "Received PDU. Header Content-Type error."

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/16 v18, 0x0

    goto :goto_1

    .line 1516
    :cond_5
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    move-object/from16 v18, v16

    .line 1521
    goto :goto_1

    .line 1517
    .end local v2    # "arr$":[[B
    .end local v4    # "headerLength":I
    .end local v5    # "headerStartIndex":I
    .end local v6    # "i$":I
    .end local v7    # "index":I
    .end local v9    # "len$":I
    .end local v11    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "pdu":[B
    .end local v13    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v15    # "pduType":I
    .end local v17    # "transactionId":I
    :catch_0
    move-exception v3

    .line 1519
    .local v3, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_1
.end method

.method handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 663
    .local v2, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 664
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-nez v4, :cond_1

    .line 666
    const/4 v3, 0x2

    .line 675
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    .local v3, "result":I
    :goto_0
    if-eqz v2, :cond_0

    .line 677
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 680
    :cond_0
    :goto_1
    return-void

    .line 668
    .end local v3    # "result":I
    .restart local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .restart local v3    # "result":I
    goto :goto_0

    .line 670
    .end local v3    # "result":I
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 671
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v5, "Exception dispatching message"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_0

    .line 678
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 633
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 641
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 649
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 650
    if-ne v2, v1, :cond_2

    .line 651
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 642
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 643
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 650
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1964
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1983
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1984
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 755
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 756
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isPrivacyLockSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMomsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    :cond_2
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 52
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 855
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v36

    .line 857
    .local v36, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v10

    .line 859
    .local v10, "destPort":I
    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_4

    .line 861
    const/4 v2, 0x1

    new-array v9, v2, [[B

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v3

    aput-object v3, v9, v2

    .line 1001
    .local v9, "pdus":[[B
    :goto_0
    new-instance v12, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1005
    .local v12, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    const/16 v34, 0x0

    .line 1006
    .local v34, "isPortSmsDealtoWappush":Z
    const/16 v2, 0x3e80

    if-ne v10, v2, :cond_1

    .line 1007
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->getWappushMinetype(Lcom/android/internal/telephony/InboundSmsTracker;[[B)Ljava/lang/String;

    move-result-object v37

    .line 1008
    .local v37, "minetype":Ljava/lang/String;
    if-eqz v37, :cond_0

    const-string v2, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    const/16 v34, 0x1

    .line 1012
    :cond_0
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minetype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v37    # "minetype":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xb84

    if-eq v10, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_16

    .line 1021
    :cond_2
    new-instance v40, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1022
    .local v40, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v9

    .local v20, "arr$":[[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_10

    aget-object v41, v20, v30

    .line 1024
    .local v41, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1025
    const-string v2, "3gpp"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v38

    .line 1027
    .local v38, "msg":Landroid/telephony/SmsMessage;
    if-eqz v38, :cond_3

    .line 1028
    invoke-virtual/range {v38 .. v38}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v41

    .line 1032
    .end local v38    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v41

    array-length v3, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1022
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 866
    .end local v9    # "pdus":[[B
    .end local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .end local v20    # "arr$":[[B
    .end local v30    # "i$":I
    .end local v34    # "isPortSmsDealtoWappush":Z
    .end local v35    # "len$":I
    .end local v40    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v41    # "pdu":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawLock:Ljava/lang/Object;

    monitor-enter v8

    .line 869
    const/16 v26, 0x0

    .line 872
    .local v26, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v19

    .line 873
    .local v19, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 874
    .local v44, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 876
    .local v25, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 881
    .local v50, "subId":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v6, v2

    const/4 v2, 0x1

    aput-object v44, v6, v2

    const/4 v2, 0x2

    aput-object v25, v6, v2

    const/4 v2, 0x3

    aput-object v50, v6, v2

    .line 883
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 886
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v27

    .line 887
    .local v27, "cursorCount":I
    move/from16 v0, v27

    move/from16 v1, v36

    if-ge v0, v1, :cond_9

    .line 901
    :try_start_1
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: refresh timer, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v43

    .line 913
    .local v43, "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v43, :cond_7

    .line 914
    const-string v2, "ConcatenatedSmsFwkExt: fail to get TimerRecord to refresh timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 929
    .end local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 992
    if-eqz v26, :cond_6

    .line 993
    :try_start_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_6
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v19    # "address":Ljava/lang/String;
    .end local v25    # "count":Ljava/lang/String;
    .end local v26    # "cursor":Landroid/database/Cursor;
    .end local v27    # "cursorCount":I
    .end local v44    # "refNumber":Ljava/lang/String;
    .end local v50    # "subId":Ljava/lang/String;
    :goto_3
    return v2

    .line 917
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v19    # "address":Ljava/lang/String;
    .restart local v25    # "count":Ljava/lang/String;
    .restart local v26    # "cursor":Landroid/database/Cursor;
    .restart local v27    # "cursorCount":I
    .restart local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    .restart local v44    # "refNumber":Ljava/lang/String;
    .restart local v50    # "subId":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 925
    .end local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :catch_0
    move-exception v29

    .line 926
    .local v29, "eInner":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 988
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v19    # "address":Ljava/lang/String;
    .end local v25    # "count":Ljava/lang/String;
    .end local v27    # "cursorCount":I
    .end local v29    # "eInner":Ljava/lang/Exception;
    .end local v44    # "refNumber":Ljava/lang/String;
    .end local v50    # "subId":Ljava/lang/String;
    :catch_1
    move-exception v28

    .line 989
    .local v28, "e":Landroid/database/SQLException;
    :try_start_5
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 990
    const/4 v2, 0x0

    .line 992
    if-eqz v26, :cond_8

    .line 993
    :try_start_6
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_8
    monitor-exit v8

    goto :goto_3

    .line 996
    .end local v28    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 938
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v19    # "address":Ljava/lang/String;
    .restart local v25    # "count":Ljava/lang/String;
    .restart local v27    # "cursorCount":I
    .restart local v44    # "refNumber":Ljava/lang/String;
    .restart local v50    # "subId":Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConcatenatedSmsFwkExt: cancel timer, ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v43

    .line 952
    .restart local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    if-nez v43, :cond_c

    .line 953
    const-string v2, "ConcatenatedSmsFwkExt: fail to get TimerRecord to cancel timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 970
    .end local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_a
    :goto_4
    :try_start_8
    move/from16 v0, v36

    new-array v9, v0, [[B

    .line 971
    .restart local v9    # "pdus":[[B
    :cond_b
    :goto_5
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 973
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    sub-int v31, v2, v3

    .line 975
    .local v31, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v9, v31

    .line 979
    if-nez v31, :cond_b

    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 980
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 982
    .local v42, "port":I
    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v42

    .line 983
    const/4 v2, -0x1

    move/from16 v0, v42

    if-eq v0, v2, :cond_b

    .line 984
    move/from16 v10, v42

    goto :goto_5

    .line 956
    .end local v9    # "pdus":[[B
    .end local v31    # "index":I
    .end local v42    # "port":I
    .restart local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mConcatenatedSmsFwkExt:Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-interface {v2, v3, v0}, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;->cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 964
    .end local v43    # "record":Lcom/mediatek/common/sms/TimerRecord;
    :catch_2
    move-exception v29

    .line 965
    .restart local v29    # "eInner":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 992
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v19    # "address":Ljava/lang/String;
    .end local v25    # "count":Ljava/lang/String;
    .end local v27    # "cursorCount":I
    .end local v29    # "eInner":Ljava/lang/Exception;
    .end local v44    # "refNumber":Ljava/lang/String;
    .end local v50    # "subId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v26, :cond_d

    .line 993
    :try_start_b
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 992
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "pdus":[[B
    .restart local v19    # "address":Ljava/lang/String;
    .restart local v25    # "count":Ljava/lang/String;
    .restart local v27    # "cursorCount":I
    .restart local v44    # "refNumber":Ljava/lang/String;
    .restart local v50    # "subId":Ljava/lang/String;
    :cond_e
    if-eqz v26, :cond_f

    .line 993
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 996
    :cond_f
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1038
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v19    # "address":Ljava/lang/String;
    .end local v25    # "count":Ljava/lang/String;
    .end local v26    # "cursor":Landroid/database/Cursor;
    .end local v27    # "cursorCount":I
    .end local v44    # "refNumber":Ljava/lang/String;
    .end local v50    # "subId":Ljava/lang/String;
    .restart local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .restart local v20    # "arr$":[[B
    .restart local v30    # "i$":I
    .restart local v34    # "isPortSmsDealtoWappush":Z
    .restart local v35    # "len$":I
    .restart local v40    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants;->isWapPushSupport()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1039
    const-string v2, "dispatch wap push pdu with addr & sc addr"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1040
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1041
    .local v22, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2WapPdu()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1042
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 1043
    .local v48, "sms":Landroid/telephony/SmsMessage;
    if-eqz v48, :cond_12

    .line 1044
    const-string v2, "address"

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v46

    .line 1046
    .local v46, "sca":Ljava/lang/String;
    if-nez v46, :cond_11

    .line 1048
    const-string v46, ""

    .line 1050
    :cond_11
    const-string v2, "service_center"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .end local v46    # "sca":Ljava/lang/String;
    .end local v48    # "sms":Landroid/telephony/SmsMessage;
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v2, v3, v12, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I

    move-result v45

    .line 1066
    .end local v22    # "bundle":Landroid/os/Bundle;
    .local v45, "result":I
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1068
    const/4 v2, -0x1

    move/from16 v0, v45

    if-ne v0, v2, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1054
    .end local v45    # "result":I
    .restart local v22    # "bundle":Landroid/os/Bundle;
    :cond_13
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v2, "service_center"

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1061
    .end local v22    # "bundle":Landroid/os/Bundle;
    :cond_14
    const-string v2, "dispatch wap push pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v12, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v45

    .restart local v45    # "result":I
    goto :goto_7

    .line 1068
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1071
    .end local v20    # "arr$":[[B
    .end local v30    # "i$":I
    .end local v35    # "len$":I
    .end local v40    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v45    # "result":I
    :cond_16
    const/16 v24, 0x0

    .line 1072
    .local v24, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v23

    .line 1073
    .local v23, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v23, :cond_19

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v24

    .line 1081
    :goto_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v51

    .line 1086
    .local v51, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_17

    .line 1087
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrierPackages.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_17
    if-eqz v51, :cond_18

    .line 1090
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemPackages.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_18
    :try_start_c
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 1098
    .local v21, "blockIntent":Landroid/content/Intent;
    const-string v2, "pdus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1099
    const-string v2, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isColorOsVersion3X()Z

    move-result v32

    .line 1101
    .local v32, "is3xVersion":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1102
    if-eqz v32, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1a

    .line 1103
    invoke-static/range {v21 .. v21}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 1104
    .local v39, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    aget-object v48, v39, v2

    .line 1105
    .restart local v48    # "sms":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v47

    .line 1106
    .local v47, "senderNumber":Ljava/lang/String;
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color os 3.0 -- sms sender number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v47

    invoke-static {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->isInBlackLists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    .line 1108
    .local v33, "isNumberBlocked":Z
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms isNumberBlocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    if-eqz v33, :cond_1a

    .line 1110
    invoke-virtual {v12}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->deleteRaw()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1111
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1078
    .end local v21    # "blockIntent":Landroid/content/Intent;
    .end local v32    # "is3xVersion":Z
    .end local v33    # "isNumberBlocked":Z
    .end local v39    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v47    # "senderNumber":Ljava/lang/String;
    .end local v48    # "sms":Landroid/telephony/SmsMessage;
    .end local v51    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    const-string v2, "UiccCard not initialized."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1114
    .restart local v51    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v28

    .line 1115
    .local v28, "e":Ljava/lang/Exception;
    const-string v2, "sms"

    const-string v3, "need check the reason, sms framework"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    .line 1121
    .end local v28    # "e":Ljava/lang/Exception;
    :cond_1a
    if-eqz v24, :cond_1b

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 1122
    const-string v2, "Found carrier package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1124
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;I)V

    .line 1127
    .local v7, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v49, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 1128
    .local v49, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 1146
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v49    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1129
    :cond_1b
    if-eqz v51, :cond_1c

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1130
    const-string v2, "Found system package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1132
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;I)V

    .line 1135
    .restart local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v49, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 1136
    .restart local v49    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    goto :goto_9

    .line 1138
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v49    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find carrier package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nor systemPackages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object v14, v9

    move/from16 v16, v10

    move-object/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;I)V

    goto :goto_9
.end method

.method protected storeVoiceMailCount()V
    .locals 6

    .prologue
    .line 1690
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 1693
    .local v2, "mwi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing Voice Mail Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for mVmCountKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_count_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vmId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "vm_id_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in preferences."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1698
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1699
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1700
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1701
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1703
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 356
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 357
    return-void
.end method
