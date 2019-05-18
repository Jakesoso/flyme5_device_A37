.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
.super Landroid/os/Handler;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method

.method private deinitHdmi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->unregisterCallListener()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$600(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 225
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSignalOutputting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method private initHdmi(Z)V
    .locals 4
    .param p1, "bSwitchUser"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->loadHdmiSettings()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1000(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$300(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_cable_plugged"

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->registerCallListener()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 240
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRealyBootComplete()Z
    .locals 6

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "bRet":Z
    const-string v3, "ro.crypto.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "state":Ljava/lang/String;
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "decrypt":Ljava/lang/String;
    const-string v3, "unencrypted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 217
    :cond_0
    :goto_0
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.crypto.state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vold.decrypt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " realBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return v0

    .line 208
    :cond_1
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const-string v3, "encrypted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const-string v3, "trigger_restart_framework"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const-string v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    :cond_0
    const-string v1, "MtkHdmiService"

    const-string v2, "handler thread is error"

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->initHdmi(Z)V

    .line 175
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->isRealyBootComplete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z
    invoke-static {v3, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$302(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 178
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z
    invoke-static {v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V
    invoke-static {v3, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$500(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->deinitHdmi()V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$302(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 185
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->deinitHdmi()V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "state":I
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$500(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V

    goto :goto_0

    .line 192
    .end local v0    # "state":I
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->deinitHdmi()V

    .line 193
    invoke-direct {p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->initHdmi(Z)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
