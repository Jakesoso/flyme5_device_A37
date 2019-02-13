.class final Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$IdentifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 3
    .param p1, "acquireInfo"    # I

    .prologue
    .line 336
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceld, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 341
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " finger too fast,  Don\'t notify STATUS_INPUTTING state but return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_1
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 345
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$600()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onStatus STATUS_INPUTTING in onAuthenticationAcquired, remove MSG_WAITINGFOR_FINGER_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x65

    const/4 v3, -0x1

    .line 304
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStatus STATUS_INPUT_COMPLETED in onAuthenticationError, errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceld, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 328
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 329
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errMsgId no matched type, onResult RESULT_FAILURE in onAuthenticationError, errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :sswitch_0
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x74

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 313
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onResult RESULT_SENSOR_ERROR in onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :sswitch_1
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x73

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 318
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onResult RESULT_NOT_ENABLED in onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :sswitch_2
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " canceld by user, errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 324
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finger was Preempted onResult RESULT_FAILURE   "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 263
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onStatus STATUS_INPUT_COMPLETED  in onAuthenticationSucceeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceld, skip"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v1

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 269
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getFpIDs()[I

    move-result-object v0

    .line 273
    .local v0, "ids":[I
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 274
    :cond_2
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onResult RESULT_NOT_REGISTERED_FINGERPRINT in onAuthenticationFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v1

    const/16 v2, 0x70

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v4, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 280
    :goto_1
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->reStartFpIdentify()V

    goto :goto_0

    .line 277
    :cond_3
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onResult RESULT_NO_MATCH in onAuthenticationFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v1

    const/16 v2, 0x67

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v4, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_1
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 285
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, " onStatus STATUS_INPUT_COMPLETED in onAuthenticationSucceeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "canceld, skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_0
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v2

    sget v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 291
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    .line 292
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    .line 293
    .local v0, "fingerId":I
    :goto_2
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult RESULT_SUCCESS onAuthenticationSucceeded, fingerprint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v2

    const/16 v3, 0x64

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 295
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->reStartFpIdentify()V

    goto :goto_0

    .line 291
    .end local v0    # "fingerId":I
    .end local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 292
    .restart local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public onWaitingForFinger(J)V
    .locals 5
    .param p1, "deviceId"    # J

    .prologue
    const/16 v4, 0x64

    .line 351
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCanceled:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceld, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mMyIdentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    move-result-object v0

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 356
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$600()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mTimeOut:I
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$700()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 358
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onStatus STATUS_WAITING_FOR_INPUT in onWaitingForFinger, send MSG_WAITINGFOR_FINGER_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
