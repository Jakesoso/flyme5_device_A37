.class public abstract Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.super Ljava/lang/Object;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;
    }
.end annotation


# static fields
.field private static final MSG_MTK_BASE:I = 0x64

.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_UI_MODE:I = 0x64

.field private static final MSG_SET_ZOOM:I = 0x6


# instance fields
.field private final mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

.field private mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

.field private final mProviderHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    .line 161
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public changeCallDataUsage(I)V
    .locals 1
    .param p1, "dataUsage"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changeCallDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .locals 1
    .param p1, "CameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changePeerDimensions(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->changePeerDimensions(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Ljava/lang/String;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetUIMode(I)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method
