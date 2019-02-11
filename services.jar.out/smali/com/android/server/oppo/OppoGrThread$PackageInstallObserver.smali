.class Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "OppoGrThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoGrThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# static fields
.field private static final SUCCEEDED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoGrThread;


# direct methods
.method private constructor <init>(Lcom/android/server/oppo/OppoGrThread;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oppo/OppoGrThread;Lcom/android/server/oppo/OppoGrThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/oppo/OppoGrThread;
    .param p2, "x1"    # Lcom/android/server/oppo/OppoGrThread$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;-><init>(Lcom/android/server/oppo/OppoGrThread;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 486
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$400(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_b

    .line 488
    if-ne p2, v8, :cond_7

    .line 489
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    const-string v5, "OppoGrThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Geloin: we installed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 493
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 494
    .local v4, "progress":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    const-string v5, "OppoGrThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Geloin: now the progress is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", maxProgress is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;
    invoke-static {v7}, Lcom/android/server/oppo/OppoGrThread;->access$700(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;
    invoke-static {v7}, Lcom/android/server/oppo/OppoGrThread;->access$800(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$900(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 499
    :try_start_0
    iget-object v6, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->fileQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$900(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    # invokes: Lcom/android/server/oppo/OppoGrThread;->installApk(Ljava/io/File;)V
    invoke-static {v6, v5}, Lcom/android/server/oppo/OppoGrThread;->access$1000(Lcom/android/server/oppo/OppoGrThread;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/android/server/oppo/OppoGrThread;->access$700(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_5

    .line 506
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    const-string v5, "OppoGrThread"

    const-string v6, "Geloin: installer end."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_3
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # invokes: Lcom/android/server/oppo/OppoGrThread;->deleteTmpFiles()V
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$300(Lcom/android/server/oppo/OppoGrThread;)V

    .line 510
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 511
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    .line 512
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->appName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$1200(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DO_GR_SUCC"

    invoke-static {v9, v5, v9, v6}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .end local v4    # "progress":Ljava/lang/Integer;
    :cond_4
    :goto_0
    return-void

    .line 500
    .restart local v4    # "progress":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # invokes: Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v5, v2, v9}, Lcom/android/server/oppo/OppoGrThread;->access$1100(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/android/server/oppo/OppoGrThread;->access$700(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;
    invoke-static {v7}, Lcom/android/server/oppo/OppoGrThread;->access$800(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    .line 514
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 515
    const-string v5, "OppoGrThread"

    const-string v6, "Geloin we will install exceptions "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_6
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->exceptionApks:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$800(Lcom/android/server/oppo/OppoGrThread;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "apkFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "apkFile":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # invokes: Lcom/android/server/oppo/OppoGrThread;->installApk(Ljava/io/File;)V
    invoke-static {v5, v0}, Lcom/android/server/oppo/OppoGrThread;->access$1000(Lcom/android/server/oppo/OppoGrThread;Ljava/io/File;)V

    goto :goto_1

    .line 524
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkFilePath":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "progress":Ljava/lang/Integer;
    :cond_7
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 525
    const-string v5, "OppoGrThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Geloin: install error returncode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PkgName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_8
    if-eqz p1, :cond_9

    sget-object v5, Landroid/os/OppoManager;->grList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 529
    :cond_9
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v5, v6, v9}, Lcom/android/server/oppo/OppoGrThread;->access$1100(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_a
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0

    .line 536
    :cond_b
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$400(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 538
    if-ne p2, v8, :cond_d

    .line 539
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 540
    const-string v5, "OppoGrThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Geloin: we reinstalled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_c
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 543
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->maxProgress:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/android/server/oppo/OppoGrThread;->access$700(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 544
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    .line 545
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    .line 546
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->appName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$1200(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DO_GR_SUCC"

    invoke-static {v5, v9, v9, v6}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_d
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/oppo/OppoGrThread;->catchException(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v5, v6, v9}, Lcom/android/server/oppo/OppoGrThread;->access$1100(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 551
    iget-object v5, p0, Lcom/android/server/oppo/OppoGrThread$PackageInstallObserver;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->DEBUG_GR:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/server/oppo/OppoGrThread;->access$600(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 552
    const-string v5, "OppoGrThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Geloin: install error returncode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
