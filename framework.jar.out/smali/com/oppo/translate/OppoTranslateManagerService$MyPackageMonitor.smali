.class Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OppoTranslateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateManagerService;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateManagerService;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateManagerService;Lcom/oppo/translate/OppoTranslateManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;
    .param p2, "x1"    # Lcom/oppo/translate/OppoTranslateManagerService$1;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;-><init>(Lcom/oppo/translate/OppoTranslateManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    .line 369
    .local v1, "userId":I
    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 370
    .local v0, "retval":Z
    :goto_0
    if-nez v0, :cond_0

    :cond_0
    const-string v3, "OppoTranslateManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- ignore this call back from a background user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 371
    return v0

    .end local v0    # "retval":Z
    :cond_1
    move v0, v2

    .line 369
    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 376
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v9

    if-nez v9, :cond_0

    .line 397
    :goto_0
    return v7

    .line 379
    :cond_0
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 380
    :try_start_0
    iget-object v10, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "curEngineId":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 382
    iget-object v10, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/translate/OppoTranslateInfo;

    .line 383
    .local v6, "ti":Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 384
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 385
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 386
    if-nez p4, :cond_2

    .line 387
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 389
    :cond_2
    iget-object v7, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # invokes: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v7}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    .line 390
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 384
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 396
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "ti":Lcom/oppo/translate/OppoTranslateInfo;
    :cond_4
    monitor-exit v9

    goto :goto_0

    .end local v1    # "curEngineId":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public onSomePackagesChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    .line 402
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v9

    if-nez v9, :cond_0

    .line 477
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "curEngine":Lcom/oppo/translate/OppoTranslateInfo;
    :try_start_0
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "curEngineId":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 409
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/translate/OppoTranslateInfo;

    .line 410
    .local v7, "ti":Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v7}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "tiId":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 412
    move-object v2, v7

    .line 415
    :cond_2
    invoke-virtual {v7}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, "change":I
    if-eq v0, v13, :cond_3

    if-ne v0, v14, :cond_1

    .line 426
    :cond_3
    const-string v9, "OppoTranslateManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Translate engine uninstalled, disabling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-virtual {v7}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    # invokes: Lcom/oppo/translate/OppoTranslateManagerService;->setEngineEnabledLocked(Ljava/lang/String;Z)Z
    invoke-static {v9, v11, v12}, Lcom/oppo/translate/OppoTranslateManagerService;->access$400(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 476
    .end local v0    # "change":I
    .end local v3    # "curEngineId":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "ti":Lcom/oppo/translate/OppoTranslateInfo;
    .end local v8    # "tiId":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 433
    .restart local v3    # "curEngineId":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    iget-object v11, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v11}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v11

    # invokes: Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V
    invoke-static {v9, v11}, Lcom/oppo/translate/OppoTranslateManagerService;->access$500(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/util/List;)V

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "changed":Z
    if-eqz v2, :cond_6

    .line 438
    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 439
    .restart local v0    # "change":I
    if-eq v0, v13, :cond_5

    if-ne v0, v14, :cond_6

    .line 441
    :cond_5
    const/4 v6, 0x0

    .line 443
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    :try_start_2
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$600(Lcom/oppo/translate/OppoTranslateManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v13}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v13

    invoke-interface {v9, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 451
    :goto_2
    if-nez v6, :cond_6

    .line 454
    :try_start_3
    const-string v9, "OppoTranslateManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current translate engine removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # invokes: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 456
    const/4 v1, 0x1

    .line 457
    const/4 v2, 0x0

    .line 463
    .end local v0    # "change":I
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_6
    if-nez v2, :cond_7

    .line 466
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    # invokes: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    .line 476
    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    .line 445
    .restart local v0    # "change":I
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v4

    .line 448
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v9, "OppoTranslateManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException ex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
