.class final Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "OppoAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OppoAudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/media/OppoAudioService;


# direct methods
.method constructor <init>(Lcom/oppo/media/OppoAudioService;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustMasterVolumeForUid(IILjava/lang/String;I)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/media/OppoAudioService;->adjustMasterVolume(IILjava/lang/String;I)V

    .line 1153
    return-void
.end method

.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Lcom/oppo/media/OppoAudioService;->adjustStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->access$200(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V

    .line 1141
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Lcom/oppo/media/OppoAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->access$100(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V

    .line 1135
    return-void
.end method

.method public getRingerModeInternal()I
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    invoke-virtual {v0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 1158
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    # getter for: Lcom/oppo/media/OppoAudioService;->mOppoRingerMode:I
    invoke-static {v0}, Lcom/oppo/media/OppoAudioService;->access$400(Lcom/oppo/media/OppoAudioService;)I

    move-result v0

    return v0
.end method

.method public setMasterMuteForUid(ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "uid"    # I

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V

    .line 1172
    return-void
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 3
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    # setter for: Lcom/oppo/media/OppoAudioService;->mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v1, p1}, Lcom/oppo/media/OppoAudioService;->access$002(Lcom/oppo/media/OppoAudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    iget-object v1, v1, Lcom/oppo/media/OppoAudioService;->mRingerModeDelegate:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_0
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    # getter for: Lcom/oppo/media/OppoAudioService;->mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v1}, Lcom/oppo/media/OppoAudioService;->access$000(Lcom/oppo/media/OppoAudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->getRingerModeInternal()I

    move-result v1

    const-string v2, "OppoAudioService.setRingerModeDelegate"

    invoke-virtual {p0, v1, v2}, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1127
    :cond_0
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoAudioService;->setOppoRingerModeInternal(ILjava/lang/String;)V

    .line 1166
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;->this$0:Lcom/oppo/media/OppoAudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Lcom/oppo/media/OppoAudioService;->setStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->access$300(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V

    .line 1147
    return-void
.end method
