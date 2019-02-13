.class Lcom/alipay/android/fingerprint/AlipayFingerprint$MyHandler;
.super Landroid/os/Handler;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/alipay/android/fingerprint/AlipayFingerprint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/alipay/android/fingerprint/AlipayFingerprint$MyHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, -0x1

    .line 229
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceld, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onResult RESULT_TIMEOUT in MSG_WAITINGFOR_FINGER_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x71

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 240
    :pswitch_1
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hardware is not detected onResult RESULT_NOT_SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x6f

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 243
    :cond_2
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isFingerprintUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->handleReStartFpIdentify()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
