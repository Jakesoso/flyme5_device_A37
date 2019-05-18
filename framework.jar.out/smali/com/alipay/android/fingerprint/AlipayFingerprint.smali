.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/fingerprint/AlipayFingerprint$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field private static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field private static final MSG_RE_START_FP_IDENTIFY_TIMEOUT:I = 0x66

.field private static final MSG_SUPPORT_CHECK_TIMEOUT:I = 0x65

.field private static final MSG_WAITINGFOR_FINGER_TIMEOUT:I = 0x64

.field private static final SUPPORT_CHECK_TIMEOUT:I = 0x3e8

.field private static TAG:Ljava/lang/String;

.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static mCanceled:Z

.field private static mCancellationSignal:Landroid/os/CancellationSignal;

.field private static mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private static mHandler:Landroid/os/Handler;

.field private static mIdentifyCallback:Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;

.field private static mIds:[I

.field private static mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field private static mTimeOut:I

.field private static mUserData:I

.field private static sApp:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "AlipayFingerprint"

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 30
    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 204
    const-string v0, "alipayteeclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyCallback:Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    return v0
.end method

.method static synthetic access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$500()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I

    return v0
.end method

.method static handleReStartFpIdentify()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 194
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleReStartFpIdentify, mFingerprintManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyCallback:Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;

    sget v6, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I

    sget-object v7, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIds:[I

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->identify(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I[I)V

    .line 198
    :cond_0
    return-void
.end method

.method private native invokeCmd(Landroid/content/Context;[B)[B
.end method

.method public static open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " open enter, inst = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Kevin_DEBUG"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v1, :cond_0

    .line 57
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inst == null, new"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 60
    :cond_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_4

    .line 61
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 62
    .local v0, "sApp":Landroid/app/Application;
    if-nez v0, :cond_1

    .line 63
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v3, "currentApplication is null, return "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 78
    :goto_0
    return-object v1

    .line 66
    :cond_1
    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 67
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_2

    .line 68
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mFingerprintManager get failed, return "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v2, "fingerprint hardware is not detected , return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1

    .line 75
    :cond_3
    new-instance v1, Lcom/alipay/android/fingerprint/AlipayFingerprint$MyHandler;

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint$MyHandler;-><init>(Landroid/os/Looper;Lcom/alipay/android/fingerprint/AlipayFingerprint$1;)V

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    .line 77
    :cond_4
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v2, " open success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    goto :goto_0
.end method

.method static reStartFpIdentify()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 189
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 96
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    sget-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v1, "canceld, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    .line 116
    :goto_0
    return v0

    .line 101
    :cond_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v1, "cancel failed ,because this op has been canceld before  "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 107
    sput-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 109
    :cond_2
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x66

    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v5, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 110
    sput-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 111
    sput v5, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I

    .line 113
    sput-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIds:[I

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z

    .line 115
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel success  onResult RESULT_CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    goto :goto_0
.end method

.method public clearMessageAfterRelease()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string v1, " clear message after release "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    return-void
.end method

.method public getFpIDs()[I
    .locals 7

    .prologue
    .line 168
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getFpIDs()[I

    move-result-object v0

    .line 171
    .local v0, "ids":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    .line 172
    .local v2, "length":I
    :goto_0
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFpIDs, length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFingerprintManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Kevin_DEBUG"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 174
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ids["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "index":I
    .end local v2    # "length":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    .restart local v1    # "index":I
    .restart local v2    # "length":I
    :cond_1
    return-object v0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 183
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getFpName(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFpName, mFingerprintManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Kevin_DEBUG"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return-object v0
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->invokeCmd(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 215
    .local v0, "res":[B
    monitor-exit p0

    .line 216
    return-object v0

    .line 215
    .end local v0    # "res":[B
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 85
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->clearMessageAfterRelease()V

    .line 87
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " release success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 10
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startFpIdentify , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  userData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    if-eqz p3, :cond_0

    array-length v9, p3

    .line 133
    .local v9, "length":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 134
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ids["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 132
    .end local v8    # "index":I
    .end local v9    # "length":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 137
    .restart local v8    # "index":I
    .restart local v9    # "length":I
    :cond_1
    if-nez p1, :cond_2

    .line 138
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "identifyListener = null , when startFpIdentify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_FAIL:I

    .line 156
    :goto_2
    return v0

    .line 141
    :cond_2
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 143
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIdentifyCallback:Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;

    const/4 v5, 0x0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->identify(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I[I)V

    .line 146
    :cond_3
    sput-object p1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 147
    sput p4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    .line 148
    sput p2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I

    .line 149
    sput-object p3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIds:[I

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z

    .line 151
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startFpIdentify ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    goto :goto_2
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startFpManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->startFpManager(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
