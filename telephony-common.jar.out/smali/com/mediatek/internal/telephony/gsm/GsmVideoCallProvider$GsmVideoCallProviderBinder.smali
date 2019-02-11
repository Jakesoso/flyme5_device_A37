.class final Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;
.super Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsmVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public setUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$100(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method
