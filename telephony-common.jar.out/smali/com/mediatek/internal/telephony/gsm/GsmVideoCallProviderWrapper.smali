.class public Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2

.field static final TAG:Ljava/lang/String; = "GsmVideoCallProviderWrapper"


# instance fields
.field private final mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V
    .locals 3
    .param p1, "VideoProvider"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 57
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 114
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 171
    const-string v0, "GsmVideoCallProviderWrapper"

    const-string v1, "New GsmVideoCallProviderWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    .line 173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 175
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onRequestCameraCapabilities()V
    .locals 1

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRequestConnectionDataUsage()V
    .locals 1

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetPauseImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetUIMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setUIMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method
