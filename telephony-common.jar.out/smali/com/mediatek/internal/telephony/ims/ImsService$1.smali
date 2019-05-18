.class Lcom/mediatek/internal/telephony/ims/ImsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    const-string v20, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xe

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0xbb8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v20, "android.intent.action.NOTIFY_CONNECTION_ERROR"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    const-string v21, "error_code"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    .line 171
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Connectivity error updated : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 173
    const-string v20, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 174
    .local v15, "simState":Ljava/lang/String;
    const-string v20, "phone"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 175
    .local v12, "phoneId":I
    const/4 v8, 0x0

    .line 176
    .local v8, "mcc":I
    const/4 v9, 0x0

    .line 177
    .local v9, "mnc":I
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_SIM_STATE_CHANGED on phone"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v6, 0x0

    .line 179
    .local v6, "instance":Lcom/android/ims/internal/IImsConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Ljava/util/Map;

    move-result-object v21

    monitor-enter v21

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Ljava/util/Map;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Ljava/util/Map;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    move-object v6, v0

    .line 186
    :goto_1
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const/16 v18, 0x0

    .line 190
    .local v18, "volteRes":Z
    const/16 v17, 0x0

    .line 191
    .local v17, "vilteRes":Z
    const/16 v19, 0x0

    .line 193
    .local v19, "wfcRes":Z
    :try_start_1
    const-string v20, "ABSENT"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 194
    const-string v20, "ImsService"

    const-string v21, "setImsCapability by default value"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/android/ims/internal/IImsConfig;->setImsCapability(ZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Landroid/os/RemoteException;
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SetImsCapability fail: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v17    # "vilteRes":Z
    .end local v18    # "volteRes":Z
    .end local v19    # "wfcRes":Z
    :cond_3
    :try_start_2
    new-instance v7, Lcom/mediatek/ims/ImsConfigStub;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v12}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v7, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Ljava/util/Map;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v7

    .end local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v20

    :goto_2
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v20

    .line 197
    .restart local v17    # "vilteRes":Z
    .restart local v18    # "volteRes":Z
    .restart local v19    # "wfcRes":Z
    :cond_4
    :try_start_5
    const-string v20, "LOADED"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 198
    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->isTestSim(I)Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(I)Z

    move-result v20

    if-nez v20, :cond_6

    .line 199
    const-string v20, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 201
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .local v11, "operator":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 203
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 204
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_SIM_STATE_CHANGED on mcc: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mnc: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 208
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 209
    .local v10, "newConfiguration":Landroid/content/res/Configuration;
    iput v8, v10, Landroid/content/res/Configuration;->mcc:I

    .line 210
    if-nez v9, :cond_5

    const v20, 0xffff

    :goto_3
    move/from16 v0, v20

    iput v0, v10, Landroid/content/res/Configuration;->mnc:I

    .line 211
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v10, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 213
    const v20, 0x112007f

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 215
    const v20, 0x1120083

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 217
    const v20, 0x80c0006

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 227
    .end local v10    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v11    # "operator":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :goto_4
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Set volte capability is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Set vilte capability is  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Set wfc capability is  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v6, v0, v1, v2}, Lcom/android/ims/internal/IImsConfig;->setImsCapability(ZZZ)V

    .line 232
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v12, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .restart local v10    # "newConfiguration":Landroid/content/res/Configuration;
    .restart local v11    # "operator":Ljava/lang/String;
    .restart local v13    # "res":Landroid/content/res/Resources;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    move/from16 v20, v9

    .line 210
    goto/16 :goto_3

    .line 221
    .end local v10    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v11    # "operator":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found test SIM on phone "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 222
    const/16 v18, 0x1

    .line 223
    const/16 v17, 0x1

    .line 224
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 239
    .end local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    .end local v8    # "mcc":I
    .end local v9    # "mnc":I
    .end local v12    # "phoneId":I
    .end local v15    # "simState":Ljava/lang/String;
    .end local v17    # "vilteRes":Z
    .end local v18    # "volteRes":Z
    .end local v19    # "wfcRes":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    const-string v21, "registry"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static/range {v20 .. v21}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$302(Lcom/mediatek/internal/telephony/ims/ImsService;Z)Z

    .line 240
    const-string v20, "ImsService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Simulate IMS Registration: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_5
    aput v20, v14, v21

    const/16 v20, 0x1

    const/16 v21, 0xf

    aput v21, v14, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v21

    aput v21, v14, v20

    .line 245
    .local v14, "result":[I
    new-instance v4, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v14, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 246
    .local v4, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 241
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "result":[I
    :cond_8
    const/16 v20, 0x0

    goto :goto_5

    .line 186
    .restart local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v8    # "mcc":I
    .restart local v9    # "mnc":I
    .restart local v12    # "phoneId":I
    .restart local v15    # "simState":Ljava/lang/String;
    :catchall_1
    move-exception v20

    move-object v6, v7

    .end local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    goto/16 :goto_2
.end method
