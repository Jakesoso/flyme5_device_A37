.class public Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.super Landroid/os/Handler;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;,
        Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x0

.field protected static final DBG:Z = true

.field private static final EVENT_FD_MODE_SET:I = 0x0

.field private static final EVENT_OEM_SCREEN_CHANGED:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "FdManager"

.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "persist.radio.simswitch"

.field protected static final PROPERTY_FD_ON_CHARGE:Ljava/lang/String; = "fd.on.charge"

.field protected static final PROPERTY_FD_SCREEN_OFF_ONLY:Ljava/lang/String; = "fd.screen.off.only"

.field protected static final PROPERTY_MTK_FD_SUPPORT:Ljava/lang/String; = "ro.mtk_fd_support"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.off.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_TIMER:Ljava/lang/String; = "persist.radio.fd.off.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_TIMER:Ljava/lang/String; = "persist.radio.fd.counter"

.field private static final STR_SCREEN_OFF:Ljava/lang/String; = "SCREEN_OFF"

.field private static final STR_SCREEN_ON:Ljava/lang/String; = "SCREEN_ON"

.field private static numberOfSupportedTypes:I

.field private static final sFdManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/internal/telephony/dataconnection/FdManager;",
            ">;"
        }
    .end annotation
.end field

.field private static timerValue:[Ljava/lang/String;


# instance fields
.field private mChargingMode:Z

.field private mEnableFdOnCharing:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mIsTetheredMode:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "150"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "150"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    .line 122
    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    .line 123
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    .line 128
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 280
    const-string v1, "initial FastDormancyManager"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOemScreenChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->initFdTimer()V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/dataconnection/FdManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    return p1
.end method

.method private checkNeedTurnOn()Z
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    if-nez v0, :cond_2

    .line 473
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFdTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-gez v1, :cond_1

    .line 257
    const-string v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .line 261
    .local v0, "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    if-nez v0, :cond_0

    .line 263
    if-eqz p0, :cond_2

    .line 264
    const-string v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDMagager for phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist, create it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .end local v0    # "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 267
    .restart local v0    # "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_2
    const-string v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDMagager for phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t get phone to init!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 493
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    goto :goto_0
.end method

.method private initFdTimer()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 316
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 317
    .local v0, "timerStr":[Ljava/lang/String;
    const-string v1, "persist.radio.fd.off.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 318
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 320
    const-string v1, "persist.radio.fd.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 321
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 323
    const-string v1, "persist.radio.fd.off.r8.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 324
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v10

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 326
    const-string v1, "persist.radio.fd.r8.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    .line 327
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v11

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default FD timers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static isFdScreenOffOnly()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    const-string v2, "fd.screen.off.only"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 482
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFdSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 486
    const-string v1, "ro.mtk_fd_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 488
    .local v0, "isFdSupport":Z
    :goto_0
    return v0

    .line 486
    .end local v0    # "isFdSupport":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScreenSwitch(ZII)V
    .locals 8
    .param p1, "isScreenOn"    # Z
    .param p2, "fdMdEnableMode"    # I
    .param p3, "fdSimId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    .line 222
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    if-eqz v4, :cond_1

    const-string v0, "SCREEN_ON"

    .line 223
    .local v0, "StrOnOff":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    move v1, v2

    .line 224
    .local v1, "screenMode":I
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fdMdEnableMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 3gSimID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", when switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 227
    if-ne p2, v2, :cond_4

    .line 230
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 231
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 234
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    if-eqz p1, :cond_3

    .line 237
    const-string v2, "Because FD_SCREEN_OFF_ONLY, disable fd when screen on."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    .line 252
    :cond_0
    :goto_2
    return-void

    .line 222
    .end local v0    # "StrOnOff":Ljava/lang/String;
    .end local v1    # "screenMode":I
    :cond_1
    const-string v0, "SCREEN_OFF"

    goto :goto_0

    .restart local v0    # "StrOnOff":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 223
    goto :goto_1

    .line 240
    .restart local v1    # "screenMode":I
    :cond_3
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const-string v3, "Because FD_SCREEN_OFF_ONLY, enable fd when screen off."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    goto :goto_2

    .line 249
    :cond_4
    const-string v2, "Not Support AP-trigger FD now"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateFdMdEnableStatus(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 432
    const-string v2, "ril.fd.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 433
    .local v0, "fdMdEnableMode":I
    const-string v2, "persist.radio.simswitch"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 434
    .local v1, "fdSimId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFdMdEnableStatus():enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fdMdEnableMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 3gSimID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 436
    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 437
    if-eqz p1, :cond_1

    .line 438
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ENABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->DISABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public disableFdWhenTethering()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 451
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    .line 455
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsTetheredMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mChargingMode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    .line 462
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v3

    .line 452
    goto :goto_0

    .line 459
    :cond_3
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "FD.dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterOemScreenChanged(Landroid/os/Handler;)V

    .line 311
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 313
    :cond_0
    return-void
.end method

.method public getNumberOfSupportedTypes()I
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->SupportedTimerTypes:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 396
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 426
    const-string v4, "FdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unidentified event msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 399
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 400
    const-string v4, "SET_FD_MODE ERROR"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 407
    .local v1, "arscreen":Landroid/os/AsyncResult;
    if-eqz v1, :cond_1

    .line 408
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    .line 416
    .end local v1    # "arscreen":Landroid/os/AsyncResult;
    :goto_1
    :pswitch_2
    const-string v4, "EVENT_RADIO_AVAILABLE check screen on/off again"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 417
    const-string v4, "ril.fd.mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 418
    .local v2, "fdMdEnableMode":I
    const-string v4, "persist.radio.simswitch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 419
    .local v3, "fdSimId":I
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    if-eqz v4, :cond_2

    .line 420
    invoke-direct {p0, v6, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->onScreenSwitch(ZII)V

    goto :goto_0

    .line 410
    .end local v2    # "fdMdEnableMode":I
    .end local v3    # "fdSimId":I
    .restart local v1    # "arscreen":Landroid/os/AsyncResult;
    :cond_1
    const-string v4, "FdManager"

    const-string v5, "leon EVENT_OEM_SCREEN_CHANGED error"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    .end local v1    # "arscreen":Landroid/os/AsyncResult;
    .restart local v2    # "fdMdEnableMode":I
    .restart local v3    # "fdSimId":I
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->onScreenSwitch(ZII)V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v0, "FdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public setFdTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 11
    .param p1, "newTimerValue"    # [Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 344
    const-string v3, "ril.fd.mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "fdMdEnableMode":I
    const-string v3, "persist.radio.simswitch"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 346
    .local v1, "fdSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v8, :cond_1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 348
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 349
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 354
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 357
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 360
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Default FD timers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 366
    .end local v2    # "i":I
    :cond_1
    return v10
.end method

.method public setFdTimerValue([Ljava/lang/String;Landroid/os/Message;Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p1, "newTimerValue"    # [Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 376
    invoke-static {p3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    move-result-object v0

    .line 377
    .local v0, "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->setFdTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    .line 382
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 380
    :cond_0
    const-string v1, "setFDTimerValue fail!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
