.class Lcom/android/server/am/OppoProcessManager$H;
.super Landroid/os/Handler;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final RESUME_PROCESS:I = 0x13e

.field private static final RESUME_SINGNAL:I = 0x12

.field private static final SUSPEND_PROCESS:I = 0x13f

.field private static final SUSPEND_PROCESS_DELAY:I = 0x140

.field private static final SUSPEND_SINGNAL:I = 0x13

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BLACKLIST:I = 0x6a

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_LOW_POWER:I = 0x6d

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_POWER_CONN_STS:I = 0x6b

.field private static final UPDATE_SMART_LOW_POWER:I = 0x6c

.field private static final UPDATE_STS:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "(unknown)"

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "SUSPEND_PROCESS"

    goto :goto_0

    .line 165
    :pswitch_1
    const-string v0, "RESUME_PROCESS"

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x13e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DynamicDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 177
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "msg.what == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 454
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 181
    :sswitch_1
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 182
    .local v11, "pid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 183
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v21

    if-nez v21, :cond_2

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 188
    const-string v21, "OppoProcessManager"

    const-string v22, "return for disable!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 192
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ">>> handling: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/am/OppoProcessManager$H;->codeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 200
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_6

    .line 202
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 204
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from top activity"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/server/am/ProcessRecord;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 209
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 210
    .local v17, "sourceApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 211
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is relation, resume it!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_5
    if-eqz v17, :cond_6

    .line 213
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    const/16 v22, 0x12

    invoke-static/range {v21 .. v22}, Landroid/os/Process;->sendSignal(II)V

    .line 218
    .end local v17    # "sourceApp":Lcom/android/server/am/ProcessRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoProcessManager;->isInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v21

    if-nez v21, :cond_17

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$300(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 221
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from adj"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 230
    if-eqz v4, :cond_9

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 232
    const-string v21, "OppoProcessManager"

    const-string v22, "#try suspend again for order brd"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 238
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$600(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 240
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from im"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->isInRecentTask(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$700(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 247
    const-string v21, "OppoProcessManager"

    const-string v22, "#return for recent task"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    const/16 v22, 0x140

    const-wide/32 v24, 0x2bf20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V

    goto/16 :goto_0

    .line 253
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids()[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$800(Lcom/android/server/am/OppoProcessManager;)[Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "mTrackPids":[Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 255
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_10

    .line 256
    aget-object v21, v9, v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 255
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 259
    :cond_e
    aget-object v21, v9, v6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 261
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from audio track 1"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    aget-object v22, v9, v6

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v19

    .line 267
    .local v19, "trackApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v21, v0

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 269
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from audio track 2"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    .end local v6    # "i":I
    .end local v19    # "trackApp":Lcom/android/server/am/ProcessRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/am/OppoProcessManager;->getTouchedWindowsPids()[I
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$900(Lcom/android/server/am/OppoProcessManager;)[I

    move-result-object v8

    .line 277
    .local v8, "mTouchWindowPids":[I
    if-eqz v8, :cond_13

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v22, v0

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1000(Lcom/android/server/am/OppoProcessManager;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 279
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_13

    .line 280
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 281
    .local v15, "procApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_11

    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    aget v22, v8, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 283
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from touch window"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v15    # "procApp":Lcom/android/server/am/ProcessRecord;
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 291
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/am/OppoProcessManager;->getWakeLockedPids()[I
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$1100(Lcom/android/server/am/OppoProcessManager;)[I

    move-result-object v20

    .line 293
    .local v20, "wakeLocks":[I
    if-eqz v20, :cond_15

    .line 294
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_15

    .line 295
    aget v21, v20, v6

    move/from16 v0, v21

    if-ne v11, v0, :cond_14

    .line 300
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "delay suspend proc hold wakelock which is  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    const/16 v22, 0x140

    const-wide/32 v24, 0x2bf20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendBpmMessage(Lcom/android/server/am/ProcessRecord;IJ)V

    goto/16 :goto_0

    .line 294
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 308
    .end local v6    # "i":I
    .end local v20    # "wakeLocks":[I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessToast(I)Z
    invoke-static {v0, v11}, Lcom/android/server/am/OppoProcessManager;->access$1200(Lcom/android/server/am/OppoProcessManager;I)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 310
    const-string v21, "OppoProcessManager"

    const-string v22, "#return from toast"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v22, v0

    # invokes: Lcom/android/server/am/OppoProcessManager;->isLocationApplication(I)Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1300(Lcom/android/server/am/OppoProcessManager;I)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 317
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "kill proc hold gps which pid is  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    const/16 v22, 0x9

    invoke-static/range {v21 .. v22}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 323
    .end local v8    # "mTouchWindowPids":[I
    .end local v9    # "mTrackPids":[Ljava/lang/String;
    :cond_17
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#===>     "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " suspend!!!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 325
    const/16 v21, 0x13

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 329
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pid":I
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 330
    .restart local v11    # "pid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 331
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v4}, Lcom/android/server/am/OppoProcessManager;->access$500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 336
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pid":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 337
    .restart local v11    # "pid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 338
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_SWITCH:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    .line 342
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ">>> handling: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/OppoProcessManager;->access$100(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/am/OppoProcessManager$H;->codeToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_18
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#===>     "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " resume!!!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v21, 0x12

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 363
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pid":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/bpm.xml"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1502(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1600(Lcom/android/server/am/OppoProcessManager;Z)V

    goto/16 :goto_0

    .line 371
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/brd.xml"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1702(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 376
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/pkg.xml"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    # setter for: Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1802(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 381
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/bad_apps.xml"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1902(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 386
    :sswitch_8
    const/4 v13, 0x0

    .line 387
    .local v13, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2000(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v10

    .line 388
    .local v10, "oldAppWidgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    new-instance v22, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/OppoBPMHelper;->readAppWidgetList()Ljava/util/List;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$2002(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2000(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2000(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_19
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 391
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_19

    .line 392
    move-object v13, v12

    .line 393
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "add new widget == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 397
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/android/server/am/OppoProcessManager;->access$2100(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    .line 400
    :cond_1b
    invoke-interface {v10}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 406
    .end local v10    # "oldAppWidgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "pkgName":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/pure_background_app_blacklist.xml"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBlackList:Ljava/util/List;
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$2202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 411
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    const-string v22, "/data/data_bpm/power_connection_status.xml"

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 412
    .local v14, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_1c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v21

    # setter for: Lcom/android/server/am/OppoProcessManager;->mPowerConnStatus:Z
    invoke-static {v0, v1}, Lcom/android/server/am/OppoProcessManager;->access$2302(Lcom/android/server/am/OppoProcessManager;Z)Z

    .line 416
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1600(Lcom/android/server/am/OppoProcessManager;Z)V

    goto/16 :goto_0

    .line 413
    :cond_1d
    const/16 v21, 0x0

    goto :goto_5

    .line 421
    .end local v14    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v21, "OppoProcessManager"

    const-string v22, "UPDATE_SMART_LOW_POWER"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    const-string v22, "/data/data_bpm/pure_background_smart_low_power.xml"

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 423
    .restart local v14    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2400(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v18

    .line 424
    .local v18, "tempValue":Z
    if-eqz v14, :cond_1e

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    # setter for: Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z
    invoke-static {v0, v1}, Lcom/android/server/am/OppoProcessManager;->access$2402(Lcom/android/server/am/OppoProcessManager;Z)Z

    .line 427
    :cond_1e
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSmartLowPower == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/OppoProcessManager;->access$2400(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2400(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 430
    const-string v21, "OppoProcessManager"

    const-string v22, "UPDATE_SMART_LOW_POWER updateProcessStateForChanged"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1600(Lcom/android/server/am/OppoProcessManager;Z)V

    goto/16 :goto_0

    .line 425
    :cond_1f
    const/16 v21, 0x0

    goto :goto_6

    .line 437
    .end local v14    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "tempValue":Z
    :sswitch_c
    const-string v21, "OppoProcessManager"

    const-string v22, "UPDATE_LOW_POWER"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    const-string v22, "/data/data_bpm/low_power_config.xml"

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 439
    .restart local v14    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_20

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v23, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    # setter for: Lcom/android/server/am/OppoProcessManager;->mLowPower:Z
    invoke-static {v0, v1}, Lcom/android/server/am/OppoProcessManager;->access$2502(Lcom/android/server/am/OppoProcessManager;Z)Z

    .line 442
    :cond_20
    const-string v21, "OppoProcessManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mLowPower == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mLowPower:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/OppoProcessManager;->access$2500(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OppoProcessManager;->mSmartLowPower:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OppoProcessManager;->access$2400(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 445
    const-string v21, "OppoProcessManager"

    const-string v22, "UPDATE_LOW_POWER updateProcessStateForChanged"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/OppoProcessManager;->isEnable()Z

    move-result v22

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/OppoProcessManager;->access$1600(Lcom/android/server/am/OppoProcessManager;Z)V

    goto/16 :goto_0

    .line 440
    :cond_21
    const/16 v21, 0x0

    goto :goto_7

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x13e -> :sswitch_3
        0x13f -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method
