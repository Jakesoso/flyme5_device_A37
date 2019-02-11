.class Lcom/mediatek/ipomanager/ActivityManagerPlus$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkIPOEncryptionCondition()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 393
    const-string v5, "ro.crypto.state"

    const-string v6, "unsupported"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "encrypted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v3

    .line 398
    :cond_1
    :try_start_0
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 400
    .local v1, "service":Landroid/os/storage/IMountService;
    if-eqz v1, :cond_2

    .line 401
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    .line 402
    .local v2, "type":I
    const-string v5, "ActivityManagerPlus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone encrypted type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    if-eq v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 405
    .end local v1    # "service":Landroid/os/storage/IMountService;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling mount service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 408
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    const-string v14, "ActivityManagerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Receive: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v12

    .line 225
    .local v12, "stMgr":Lcom/android/internal/app/ShutdownManager;
    const-string v14, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 229
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 384
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v14, "package_name"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 234
    const-string v14, "enabled"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 235
    .local v5, "enabled":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 236
    .local v4, "count":I
    add-int/lit8 v6, v4, -0x1

    .line 237
    .local v6, "i":I
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 239
    .local v2, "alreadyInList":Ljava/lang/Boolean;
    if-eqz v4, :cond_3

    .line 240
    :goto_1
    if-ltz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 241
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 243
    :cond_2
    if-gez v6, :cond_4

    .line 244
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 249
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_4
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 251
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v2    # "alreadyInList":Ljava/lang/Boolean;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "count":I
    .end local v5    # "enabled":Ljava/lang/Boolean;
    .end local v6    # "i":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_6
    const-string v14, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 255
    const-string v14, "ActivityManagerPlus"

    const-string v15, "ipo PREBOOT_IPO"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v14, "ActivityManagerPlus"

    const-string v15, "re-launch launcher"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v7, "intent1":Landroid/content/Intent;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x10000000

    or-int/2addr v14, v15

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcessListSize()I

    move-result v14

    if-eqz v14, :cond_7

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :goto_3
    const-string v14, "ActivityManagerPlus"

    const-string v15, "finished"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    # invokes: Lcom/mediatek/ipomanager/ActivityManagerPlus;->isAlarmBoot()Z
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$200()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const/4 v15, 0x1

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v14, v15}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$302(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0

    .line 317
    :cond_7
    const-string v14, "ActivityManagerPlus"

    const-string v15, "prebootKillProcess list empty, don\'t need to perform kill"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const/4 v15, 0x0

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v14, v15}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$302(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0

    .line 332
    .end local v7    # "intent1":Landroid/content/Intent;
    :cond_9
    const-string v14, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 333
    const-string v14, "ActivityManagerPlus"

    const-string v15, "ipo BOOT_IPO"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->getInstance(Landroid/content/Context;)Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->stopSocketServer()V

    .line 337
    # invokes: Lcom/mediatek/ipomanager/ActivityManagerPlus;->isAlarmBoot()Z
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$200()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 338
    const-string v14, "ActivityManagerPlus"

    const-string v15, "power off alarm enabled"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v14, v14, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 346
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->checkIPOEncryptionCondition()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 348
    const-string v14, "ActivityManagerPlus"

    const-string v15, "ipo BOOT_IPO: removeIPOWin"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->removeIPOWin(Landroid/content/Context;)V

    .line 352
    const-string v14, "ActivityManagerPlus"

    const-string v15, "PMS wakeup"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "power"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 355
    .local v10, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v14

    invoke-interface {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->ipoBootCompleted()V

    goto/16 :goto_0

    .line 361
    .end local v10    # "pm":Landroid/os/PowerManager;
    :cond_b
    const-string v14, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->updateFirstBoot(Ljava/lang/Boolean;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const/4 v15, 0x1

    const-string v16, "IPO Bootup Start"

    invoke-virtual/range {v14 .. v16}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 367
    const-string v14, "ActivityManagerPlus"

    const-string v15, "handling SHUTDOWN_IPO finished"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->getInstance(Landroid/content/Context;)Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->startSocketServer()V

    goto/16 :goto_0

    .line 371
    :cond_c
    const-string v14, "android.intent.action.black.mode"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 372
    const-string v14, "_black_mode"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 373
    .local v8, "mode":Z
    const/4 v14, 0x1

    if-ne v8, v14, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 376
    .end local v8    # "mode":Z
    :cond_d
    const-string v14, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 377
    const-string v14, "android.media.EXTRA_RINGER_MODE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 378
    .local v11, "ringerMode":I
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, "state":Ljava/lang/String;
    const-string v14, "persist.sys.mute.state"

    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v11    # "ringerMode":I
    .end local v13    # "state":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "android.intent.action.normal.boot"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const/4 v15, 0x0

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v14, v15}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$302(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0
.end method