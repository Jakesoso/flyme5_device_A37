.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# static fields
.field private static final KEYGUARD_PACKAGENAME:Ljava/lang/String; = "com.android.keyguard"


# instance fields
.field WAKEUP_SPEEDTIME_LIMIT_TO_FUSEING:J

.field clientMode:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

.field fingerState:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

.field fusing:Z

.field isKeyguard:Z

.field lastAuthenticatedDeviceId:J

.field lastAuthenticatedFingerId:I

.field lastAuthenticatedGroupId:I

.field packageName:Ljava/lang/String;

.field pid:I

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I

.field verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

.field verifyResultSent:Z

.field wakeupSpeedTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 8
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1275
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    .line 1262
    const-wide/16 v2, 0x3

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->WAKEUP_SPEEDTIME_LIMIT_TO_FUSEING:J

    .line 1268
    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_UP:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fingerState:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    .line 1269
    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$ClientMode;->NONE:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clientMode:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    .line 1270
    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    .line 1271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    .line 1276
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1277
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1278
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    .line 1279
    iput-boolean p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    .line 1282
    iput-boolean v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    .line 1283
    iput-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    .line 1286
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;JII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendImageQualityUpdated(JII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendWatingForFinger()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendTouchDownEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendTouchUpEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method private sendAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 1583
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v2, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v1

    .line 1589
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2, p0}, Lcom/android/server/fingerprint/FingerprintService;->shouldDelayDispatchAuthenticated(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    .line 1591
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FingerprintService"

    const-string v3, "sendAcquired for keyguard when screen off"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    const/4 v3, 0x6

    invoke-interface {v2, v4, v5, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    :goto_1
    const/4 v1, 0x0

    .line 1604
    if-nez p1, :cond_0

    .line 1609
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivityAsync()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2200(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 1594
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendAcquired:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1604
    if-nez p1, :cond_0

    .line 1609
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivityAsync()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2200(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 1604
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-nez p1, :cond_4

    .line 1609
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivityAsync()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2200(Lcom/android/server/fingerprint/FingerprintService;)V

    :cond_4
    throw v1
.end method

.method private sendAuthenticated(II)Z
    .locals 10
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v0, 0x1

    .line 1534
    const/4 v9, 0x0

    .line 1535
    .local v9, "result":Z
    if-eqz p1, :cond_1

    move v6, v0

    .line 1538
    .local v6, "authenticated":Z
    :goto_0
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendAuthenticated (fpId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    .line 1542
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_4

    .line 1544
    if-nez v6, :cond_2

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :goto_1
    if-nez p1, :cond_5

    .line 1565
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 1576
    :goto_2
    return v9

    .line 1535
    .end local v6    # "authenticated":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1547
    .restart local v6    # "authenticated":Z
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v8, v0

    .line 1549
    .local v8, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v8}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1551
    .end local v8    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :catch_0
    move-exception v7

    .line 1552
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "Failed to notify Authenticated:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    const/4 v9, 0x1

    .line 1554
    goto :goto_1

    .line 1547
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 1556
    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    .line 1573
    :cond_5
    or-int/lit8 v9, v9, 0x1

    .line 1574
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private sendEnrollResult(III)Z
    .locals 8
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 1516
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 1526
    :goto_0
    return v7

    .line 1522
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    if-nez p3, :cond_1

    move v1, v7

    :goto_1
    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError(I)Z
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 1621
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendImageQualityUpdated(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "successed"    # I
    .param p4, "image_quality"    # I

    .prologue
    .line 1646
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 1648
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onImageQualityUpdated(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :cond_0
    :goto_0
    return-void

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendImageQualityUpdated:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1502
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v3, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return v1

    .line 1504
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v3, "Failed to notify Removed:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1509
    goto :goto_0
.end method

.method private sendTouchDownEvent()Z
    .locals 4

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onTouchDown(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onWaitingForFinger:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendTouchUpEvent()Z
    .locals 4

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 1673
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onTouchUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onWaitingForFinger:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendWatingForFinger()Z
    .locals 4

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 1637
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onWaitingForFinger(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onWaitingForFinger:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public allowSetFusing()Z
    .locals 2

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;

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

.method public allowWakeupSpeed()Z
    .locals 4

    .prologue
    .line 1329
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowWakeupSpeed, wakeupSpeedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->WAKEUP_SPEEDTIME_LIMIT_TO_FUSEING:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1331
    const/4 v0, 0x0

    .line 1333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1472
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallbackQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1484
    :cond_0
    return-void
.end method

.method public clearAuthenticatedInfo()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1383
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedDeviceId:J

    .line 1384
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedFingerId:I

    .line 1385
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedGroupId:I

    .line 1386
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    .line 1388
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "clearAuthenticatedInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1437
    monitor-enter p0

    .line 1438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 1441
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isScreenBlack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFingerDown() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFingerDown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/SupportUtil;->isScreenBlack(Landroid/os/PowerManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFingerDown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    if-nez v1, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->gotoSleepImmediately(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1454
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clearAuthenticatedInfo()V

    .line 1458
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1460
    return-void

    .line 1448
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1454
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public dispatchDelayedAuthenticated()V
    .locals 3

    .prologue
    .line 1407
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedFingerId:I

    if-ne v1, v2, :cond_1

    .line 1408
    const-string v1, "FingerprintService"

    const-string v2, " finger detail invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1412
    .local v0, "token":Landroid/os/IBinder;
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedFingerId:I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedGroupId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 1414
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v1, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1490
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1496
    return-void

    .line 1494
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public fusingCurrentOperation()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1338
    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    if-eqz v2, :cond_1

    .line 1339
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  is  in fusing ,reject fusingCurrentOperation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    :goto_0
    return v1

    .line 1342
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setFusing(Z)V

    .line 1343
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintService;->startPauseIdentify()I

    move-result v2

    if-nez v2, :cond_2

    .local v0, "res":Z
    :goto_1
    move v1, v0

    .line 1344
    goto :goto_0

    .end local v0    # "res":Z
    :cond_2
    move v0, v1

    .line 1343
    goto :goto_1
.end method

.method public getAuthenticatedResult()Lcom/android/server/fingerprint/FingerprintService$VerifyResult;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    return-object v0
.end method

.method public getClientMode()Lcom/android/server/fingerprint/FingerprintService$ClientMode;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clientMode:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    return-object v0
.end method

.method public isAuthenticatedResultSent()Z
    .locals 1

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    return v0
.end method

.method public isAuthenticatedResultSuccess()Z
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticatedResultValid()Z
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->NONE:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerDown()Z
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fingerState:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;->FINGER_DOWN:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFusing()Z
    .locals 3

    .prologue
    .line 1310
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isFusing ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    return v0
.end method

.method public isKeyguard()Z
    .locals 1

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard:Z

    return v0
.end method

.method public resumeCurrentOperation()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1348
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    if-nez v1, :cond_1

    .line 1349
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  is not in fusing ,reject resumeCurrentOperation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    :goto_0
    return v0

    .line 1352
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->setFusing(Z)V

    .line 1353
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->startContinueIdentify()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 1354
    .local v0, "res":Z
    :cond_2
    goto :goto_0
.end method

.method public setClientInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->pid:I

    .line 1295
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->packageName:Ljava/lang/String;

    .line 1296
    const-string v0, "com.android.keyguard"

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard:Z

    .line 1297
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " store clientInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_0
    return-void
.end method

.method public setClientMode(Lcom/android/server/fingerprint/FingerprintService$ClientMode;)V
    .locals 0
    .param p1, "clientMode"    # Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clientMode:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    .line 1428
    return-void
.end method

.method public setFingerState(Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;)V
    .locals 0
    .param p1, "fingerState"    # Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fingerState:Lcom/android/server/fingerprint/FingerprintService$FINGERSTATE;

    .line 1420
    return-void
.end method

.method public setFusing(Z)V
    .locals 4
    .param p1, "fusing"    # Z

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->allowSetFusing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1302
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " do not allow Set fusing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    .line 1306
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFusing ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1362
    const-string v0, "com.android.keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard:Z

    .line 1363
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard:Z

    return v0
.end method

.method public storeAuthenticatedInfo(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1374
    iput-wide p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedDeviceId:J

    .line 1375
    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedFingerId:I

    .line 1376
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->lastAuthenticatedGroupId:I

    .line 1377
    if-eqz p3, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->SUCCESS:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    :goto_0
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    .line 1379
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " storeAuthenticatedInfo, deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fingerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    return-void

    .line 1377
    :cond_1
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService$VerifyResult;->FAILED:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientMonitor ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->clientMode:Lcom/android/server/fingerprint/FingerprintService$ClientMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fusing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->fusing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakeupSpeedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restricted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isKeyguard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isKeyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifyResultSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResultSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifyResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->verifyResult:Lcom/android/server/fingerprint/FingerprintService$VerifyResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWakupSpeedTime(Z)V
    .locals 6
    .param p1, "reset"    # Z

    .prologue
    .line 1319
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    .line 1320
    .local v0, "oldWakeupSpeedTime":J
    if-eqz p1, :cond_1

    .line 1321
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    .line 1325
    :goto_0
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWakupSpeedTime( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ), change wakeupSpeedTime < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_0
    return-void

    .line 1323
    :cond_1
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->wakeupSpeedTime:J

    goto :goto_0
.end method
