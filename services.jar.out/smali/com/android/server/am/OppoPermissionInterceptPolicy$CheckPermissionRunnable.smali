.class Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPermissionRunnable"
.end annotation


# instance fields
.field callback:Lcom/android/server/am/OppoPermissionCallback;

.field lock:Ljava/lang/Object;

.field permission:Ljava/lang/String;

.field pid:I

.field res:I

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field token:I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/Object;Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "token"    # I
    .param p7, "callback"    # Lcom/android/server/am/OppoPermissionCallback;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    .line 688
    iput-object p3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    .line 689
    iput p4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    .line 690
    iput p5, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    .line 691
    iput p6, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    .line 692
    iput-object p7, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 693
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    monitor-enter v15

    .line 699
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getProcessForPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 700
    .local v13, "pr":Lcom/android/server/am/ProcessRecord;
    const/4 v12, 0x0

    .line 701
    .local v12, "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    if-nez v13, :cond_0

    .line 704
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 706
    monitor-exit v15

    .line 813
    :goto_0
    return-void

    .line 708
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :try_start_1
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_3

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-static {v14, v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v12

    .line 720
    :goto_1
    if-eqz v12, :cond_1

    .line 721
    iput-object v12, v13, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 722
    invoke-virtual {v12}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->copy()Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 725
    :cond_1
    if-eqz v12, :cond_2

    .line 726
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I
    invoke-static {v14, v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I

    move-result v8

    .line 727
    .local v8, "mask":I
    iget-object v14, v12, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    const-string v17, ".cts."

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 728
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 810
    .end local v8    # "mask":I
    :cond_2
    :goto_2
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 812
    monitor-exit v15

    goto :goto_0

    .end local v12    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .end local v13    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 716
    .restart local v12    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v13    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v14, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_1

    .line 810
    :catchall_1
    move-exception v14

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 729
    .restart local v8    # "mask":I
    :cond_4
    :try_start_5
    iget v14, v12, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    if-eqz v14, :cond_5

    .line 730
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 731
    :cond_5
    iget v14, v12, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    and-int/2addr v14, v8

    if-eqz v14, :cond_6

    .line 732
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 733
    :cond_6
    iget v14, v12, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    and-int/2addr v14, v8

    if-eqz v14, :cond_9

    .line 734
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v14

    const-string v17, "activity"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 736
    .local v7, "manager":Landroid/app/ActivityManager;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 737
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 738
    .local v5, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v14, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 740
    .local v10, "packageName":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/pm/IPackageManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v10, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_7

    const-string v14, "com.wandoujia.phoenix2"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v17, "com.wandoujia.phoenix2.usbproxy"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 742
    :cond_7
    const-string v14, "com.wandoujia.phoenix2"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v17, "com.wandoujia.phoenix2.usbproxy"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 743
    const-string v10, "com.wandoujia.phoenix2.usbproxy"

    .line 744
    const-string v14, "AAA"

    const-string v17, "----equals--"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 747
    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "com.oppo.permissionprotect.notify"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v14, "PackageName"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v14, "Permission"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    const-string v14, "AAA"

    const-string v17, "Notify!!!"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 753
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 754
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 759
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "manager":Landroid/app/ActivityManager;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_9
    iget v14, v12, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    and-int/2addr v14, v8

    if-eqz v14, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z
    invoke-static {v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 764
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isCtaVersion:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1400()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->allowBackgroundRequest:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1500()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    .line 765
    new-instance v9, Landroid/app/OppoActivityManager;

    invoke-direct {v9}, Landroid/app/OppoActivityManager;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 766
    .local v9, "oAm":Landroid/app/OppoActivityManager;
    const/4 v2, 0x0

    .line 768
    .local v2, "cn":Landroid/content/ComponentName;
    :try_start_8
    invoke-virtual {v9}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    .line 772
    :goto_3
    :try_start_9
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "foregroundPackageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mBackgroundSkipList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1600()Ljava/util/List;

    move-result-object v14

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v17

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v14, v0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1700(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getCurrentFocus()Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1800(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 777
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 778
    const-string v14, "OppoPermissionInterceptPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "not foreground app, reject it! app is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 781
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 769
    .end local v4    # "foregroundPackageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 770
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 785
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "oAm":Landroid/app/OppoActivityManager;
    :cond_a
    new-instance v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v11, v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    .line 786
    .local v11, "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    iput-object v14, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    .line 787
    iput-object v13, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    .line 788
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    iput v14, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    iput-object v14, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 790
    iput v8, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    .line 791
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    iput v14, v11, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    .line 792
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v17

    monitor-enter v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 793
    :try_start_c
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 794
    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->isWaitingPermissionChoice:Z

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1900(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;

    move-result-object v14

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 801
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 802
    monitor-exit v17

    goto/16 :goto_2

    :catchall_2
    move-exception v14

    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v14

    .line 805
    .end local v11    # "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2
.end method
