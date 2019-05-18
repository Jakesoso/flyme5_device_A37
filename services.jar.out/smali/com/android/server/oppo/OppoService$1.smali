.class Lcom/android/server/oppo/OppoService$1;
.super Landroid/os/Handler;
.source "OppoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoService;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoService;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$000(Lcom/android/server/oppo/OppoService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # invokes: Lcom/android/server/oppo/OppoService;->isFactoryMode()Z
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$100(Lcom/android/server/oppo/OppoService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const-string v2, "sys.usb.config"

    const-string v4, "diag_mdm,adb"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 178
    const-string v2, "sys.dial.enable"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v2, v4}, Lcom/android/server/oppo/OppoService;->access$002(Lcom/android/server/oppo/OppoService;I)I

    .line 405
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mMMKernelKeyLogObserver:Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$2300(Lcom/android/server/oppo/OppoService;)Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;

    move-result-object v2

    # getter for: Lcom/android/server/oppo/OppoService;->curName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2100()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/oppo/OppoService;->curState:I
    invoke-static {}, Lcom/android/server/oppo/OppoService;->access$2200()I

    move-result v6

    # invokes: Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->writeMMKeyLog(Ljava/lang/String;I)V
    invoke-static {v2, v4, v6}, Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;->access$2400(Lcom/android/server/oppo/OppoService$MMKernelKeyLogObserver;Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # operator-- for: Lcom/android/server/oppo/OppoService;->mRetry:I
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$010(Lcom/android/server/oppo/OppoService;)I

    .line 182
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/oppo/OppoService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/oppo/OppoService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 185
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    const-string v2, "OppoService"

    const-string v4, "Geloin: we get gr init msg."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # invokes: Lcom/android/server/oppo/OppoService;->initGr()V
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$300(Lcom/android/server/oppo/OppoService;)V

    goto :goto_1

    .line 191
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 193
    const-string v2, "OppoService"

    const-string v4, "Geloin: we get gr down msg."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_7
    sget-object v2, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # invokes: Lcom/android/server/oppo/OppoService;->isNetworkOk()Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$400(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v20

    .line 200
    .local v20, "isNetworkOk":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # invokes: Lcom/android/server/oppo/OppoService;->isSpaceOk()Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$500(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v21

    .line 202
    .local v21, "isSpaceOk":Ljava/lang/Boolean;
    const/16 v26, 0x0

    .line 204
    .local v26, "tipContent":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 205
    .local v13, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 206
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 207
    .local v24, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 209
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 213
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, "appName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "baseCodePath":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grNetworkContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v26

    .line 224
    :goto_2
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/oppo/OppoService$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/oppo/OppoService$1$1;-><init>(Lcom/android/server/oppo/OppoService$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    :goto_3
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 281
    .local v14, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 283
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 285
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 210
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v15

    .line 211
    .local v15, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 217
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "baseCodePath":Ljava/lang/String;
    .restart local v9    # "appName":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grSpaceContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$800(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 220
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$900(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 243
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grDoDown:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1300(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/oppo/OppoService$1$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1, v3, v9}, Lcom/android/server/oppo/OppoService$1$2;-><init>(Lcom/android/server/oppo/OppoService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1600(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/oppo/OppoService$1$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/oppo/OppoService$1$3;-><init>(Lcom/android/server/oppo/OppoService$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 288
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v20    # "isNetworkOk":Ljava/lang/Boolean;
    .end local v21    # "isSpaceOk":Ljava/lang/Boolean;
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v26    # "tipContent":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 290
    const-string v2, "OppoService"

    const-string v4, "Geloin: we get gr reinstall msg."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_d
    sget-object v2, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 297
    .restart local v13    # "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 298
    .restart local v23    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 299
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 301
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 305
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 306
    .restart local v9    # "appName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 307
    .restart local v3    # "baseCodePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grReinstallPTipContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1800(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "grReinstallPTipContentTmp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/oppo/OppoService;->access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/oppo/OppoService;->access$1600(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/oppo/OppoService;->access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/oppo/OppoService;->access$1700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcom/android/server/oppo/OppoGrThreadFactory;->newOppoGrThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/oppo/OppoGrThread;

    move-result-object v18

    .line 316
    .local v18, "grThread":Lcom/android/server/oppo/OppoGrThread;
    sget-object v2, Lcom/android/server/oppo/OppoGrThreadFactory;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 302
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v5    # "grReinstallPTipContentTmp":Ljava/lang/String;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v18    # "grThread":Lcom/android/server/oppo/OppoGrThread;
    :catch_1
    move-exception v15

    .line 303
    .restart local v15    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 318
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    :cond_e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_11

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 320
    const-string v2, "OppoService"

    const-string v4, "Geloin: we get gr show exception msg."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "eMessage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "exceptionType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 325
    .local v17, "exceptionType":Ljava/lang/String;
    if-eqz v17, :cond_10

    const-string v2, "NetworkError"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grNetworkContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v16

    .line 330
    :cond_10
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/oppo/OppoService$1$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/oppo/OppoService$1$4;-><init>(Lcom/android/server/oppo/OppoService$1;)V

    invoke-virtual {v12, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 343
    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 345
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 346
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 348
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 349
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v16    # "eMessage":Ljava/lang/String;
    .end local v17    # "exceptionType":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_15

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 351
    const-string v2, "OppoService"

    const-string v4, "Geloin: we get gr success msg."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grSucc:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1900(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v25

    .line 355
    .local v25, "succMsg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "baseCodePath"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3    # "baseCodePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "appName"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 357
    .restart local v9    # "appName":Ljava/lang/String;
    if-eqz v9, :cond_14

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grSuccDown:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$2000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 366
    :cond_13
    :goto_4
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 368
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/oppo/OppoService$1$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/oppo/OppoService$1$5;-><init>(Lcom/android/server/oppo/OppoService$1;)V

    invoke-virtual {v12, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 379
    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 383
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 360
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    :cond_14
    if-eqz v3, :cond_13

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grSucc:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$1900(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto :goto_4

    .line 384
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v25    # "succMsg":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "pkgName"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 386
    .restart local v23    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 387
    const-string v2, "OppoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Geloin: we get gr exit msg, and we will kill "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 393
    .local v10, "am":Landroid/app/ActivityManager;
    sget-object v2, Landroid/os/OppoManager;->grList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 394
    .local v22, "pName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 397
    .end local v22    # "pName":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 398
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->hasExited:Ljava/lang/Boolean;

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/server/oppo/OppoService;->access$200(Lcom/android/server/oppo/OppoService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const-string v2, "OppoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Geloin: we killed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
