.class Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;
.super Landroid/os/Handler;
.source "OppoAppFrozen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoAppFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoAppFrozen;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 107
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # invokes: Lcom/android/internal/policy/impl/OppoAppFrozen;->getForegroundPackage()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$000(Lcom/android/internal/policy/impl/OppoAppFrozen;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "fgPkg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 110
    const-string v5, "OppoAppFrozen"

    const-string v6, "OPPO_HOME_DISPATCH_TIMEOUT: forground pkg is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # setter for: Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$102(Lcom/android/internal/policy/impl/OppoAppFrozen;Z)Z

    .line 150
    .end local v0    # "fgPkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0    # "fgPkg":Ljava/lang/String;
    :cond_1
    const-string v5, "OppoAppFrozen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "homeDispatchTimeOutHandle: forceStopPackage fgPkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # getter for: Lcom/android/internal/policy/impl/OppoAppFrozen;->mPwm:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$200(Lcom/android/internal/policy/impl/OppoAppFrozen;)Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->launchHomeFromHotKey()V

    .line 121
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # setter for: Lcom/android/internal/policy/impl/OppoAppFrozen;->mHomeMsgSent:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$102(Lcom/android/internal/policy/impl/OppoAppFrozen;Z)Z

    .line 123
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # invokes: Lcom/android/internal/policy/impl/OppoAppFrozen;->getUidForPkgName(Ljava/lang/String;)I
    invoke-static {v5, v0}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$300(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "fgPkg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    const-string v6, "app_frozen_detect"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/policy/impl/OppoAppFrozen;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$400(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0    # "fgPkg":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "uid":I
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "PKGNAME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "pkgName":Ljava/lang/String;
    const-string v6, "0"

    const-string v7, "sys.app_freeze_timeout"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    .local v1, "isAppFrozen":Z
    :goto_2
    if-nez v1, :cond_4

    .line 132
    const-string v5, "OppoAppFrozen"

    const-string v6, "OPPO_APP_FROZEN_TIMEOUT: isAppFrozen is false!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "isAppFrozen":Z
    :cond_3
    move v1, v5

    .line 130
    goto :goto_2

    .line 136
    .restart local v1    # "isAppFrozen":Z
    :cond_4
    const-string v5, "OppoAppFrozen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPPO_APP_FROZEN_TIMEOUT: forceStopPackage pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v5, v2, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_3
    const-string v5, "sys.app_freeze_timeout"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    # invokes: Lcom/android/internal/policy/impl/OppoAppFrozen;->getUidForPkgName(Ljava/lang/String;)I
    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$300(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;)I

    move-result v4

    .line 145
    .restart local v4    # "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "frozenPkg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoAppFrozen$WorkerHandler;->this$0:Lcom/android/internal/policy/impl/OppoAppFrozen;

    const-string v6, "app_frozen_detect"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/policy/impl/OppoAppFrozen;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/OppoAppFrozen;->access$400(Lcom/android/internal/policy/impl/OppoAppFrozen;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "uid":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 118
    .end local v1    # "isAppFrozen":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local v0    # "fgPkg":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method
