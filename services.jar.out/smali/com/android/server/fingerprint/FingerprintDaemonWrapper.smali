.class public Lcom/android/server/fingerprint/FingerprintDaemonWrapper;
.super Ljava/lang/Object;
.source "FingerprintDaemonWrapper.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemon;


# static fields
.field public static final TIMEOUT_FINGERPRINTD_BINDERCALL_CHECK:J = 0xbb8L


# instance fields
.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintDaemon;Lcom/android/server/fingerprint/HealthMonitor;)V
    .locals 0
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "monitor"    # Lcom/android/server/fingerprint/HealthMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 30
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    .line 31
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(JI)I
    .locals 5
    .param p1, "sessionId"    # J
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->AUTHENTICATE:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 42
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->AUTHENTICATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->AUTHENTICATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAuthentication()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CANCELAUTHENTICATE:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 52
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELAUTHENTICATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELAUTHENTICATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelEnrollment()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CANCELENROLLMENT:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 72
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELENROLLMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELENROLLMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelGetImageQuality()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CANCELGETIMAGEQUALITY:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 192
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelGetImageQuality()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELGETIMAGEQUALITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CANCELGETIMAGEQUALITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanUp()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CLEANUP:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 202
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cleanUp()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CLEANUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CLEANUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public closeHal()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CLOSEHAL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 132
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->closeHal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CLOSEHAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CLOSEHAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public continueEnroll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CONTINUEENROLL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 262
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->continueEnroll()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CONTINUEENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CONTINUEENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public continueIdentify()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->CONTINUEIDENTIFY:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 302
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->continueIdentify()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CONTINUEIDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->CONTINUEIDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public dynamicallyConfigLog(I)V
    .locals 4
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->DYNAMICALLYCONFIGLOG:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 282
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->dynamicallyConfigLog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->DYNAMICALLYCONFIGLOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->DYNAMICALLYCONFIGLOG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BII)I
    .locals 4
    .param p1, "token"    # [B
    .param p2, "groupId"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->ENROLL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 62
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->ENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->ENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlikeyStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETALIKEYSTATUS:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 172
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAlikeyStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETALIKEYSTATUS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETALIKEYSTATUS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthToken(JI)[B
    .locals 5
    .param p1, "challenge"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETAUTHTOKEN:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 212
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthToken(JI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETAUTHTOKEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETAUTHTOKEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETAUTHENTICATORID:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 102
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 104
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v3, Lcom/android/server/fingerprint/HealthState;->GETAUTHENTICATORID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETAUTHENTICATORID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnrollmentTotalTimes()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETENROLLMENTTOTALTIMES:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 312
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getEnrollmentTotalTimes()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETENROLLMENTTOTALTIMES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETENROLLMENTTOTALTIMES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getFpIDs()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETFPIDS:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 232
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getFpIDs()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETFPIDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETFPIDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETFPNAME:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 222
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getFpName(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETFPNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETFPNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageQuality()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->GETIMAGEQUALITY:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 182
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getImageQuality()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETIMAGEQUALITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->GETIMAGEQUALITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public identify(JII[I)I
    .locals 7
    .param p1, "sessionId"    # J
    .param p3, "groupId"    # I
    .param p4, "timeout"    # I
    .param p5, "ids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->IDENTIFY:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 242
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->identify(JII[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->IDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->IDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->INIT:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 142
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->INIT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public openHal()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->OPENHAL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 122
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v3, Lcom/android/server/fingerprint/HealthState;->OPENHAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->OPENHAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseEnroll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->PAUSEENROLL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 252
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->pauseEnroll()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->PAUSEENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->PAUSEENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseIdentify()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->PAUSEIDENTIFY:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 292
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->pauseIdentify()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->PAUSEIDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->PAUSEIDENTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public postEnroll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->POSTENROLL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 152
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->POSTENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->POSTENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public preEnroll()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->PREENROLL:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 82
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 84
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v3, Lcom/android/server/fingerprint/HealthState;->PREENROLL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->PREENROLL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(II)I
    .locals 4
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->REMOVE:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 92
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->REMOVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->REMOVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public selfTest()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->SELFTEST:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 162
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->selfTest()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SELFTEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SELFTEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public setActiveGroup(I[B)I
    .locals 4
    .param p1, "groupId"    # I
    .param p2, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->SETACTIVEGROUP:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 112
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SETACTIVEGROUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SETACTIVEGROUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchEventListener()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v1, Lcom/android/server/fingerprint/HealthState;->SETTOUCHEVENTLISTENER:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/HealthMonitor;->start(Ljava/lang/String;J)V

    .line 272
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setTouchEventListener()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SETTOUCHEVENTLISTENER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintDaemonWrapper;->mHealthMonitor:Lcom/android/server/fingerprint/HealthMonitor;

    sget-object v2, Lcom/android/server/fingerprint/HealthState;->SETTOUCHEVENTLISTENER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/HealthMonitor;->stop(Ljava/lang/String;)V

    throw v0
.end method
