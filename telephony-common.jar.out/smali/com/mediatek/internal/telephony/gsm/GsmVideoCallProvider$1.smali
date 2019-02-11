.class Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;
.super Landroid/os/Handler;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 59
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    # setter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->mCallback:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->access$002(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 68
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 71
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 74
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetZoom(F)V

    goto :goto_0

    .line 77
    :sswitch_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 80
    :sswitch_7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 83
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 86
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onRequestCallDataUsage()V

    goto :goto_0

    .line 89
    :sswitch_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :sswitch_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->onSetUIMode(I)V

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_b
    .end sparse-switch
.end method
