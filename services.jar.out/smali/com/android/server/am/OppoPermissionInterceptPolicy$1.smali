.class Lcom/android/server/am/OppoPermissionInterceptPolicy$1;
.super Landroid/os/Handler;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    monitor-enter v5

    .line 216
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;

    .line 217
    .local v3, "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    const/4 v1, 0x0

    .line 218
    .local v1, "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->permission:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I
    invoke-static {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "permissionMask":I
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getProcessForPackageName(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 221
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 222
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v7, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v6, v0, v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 225
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v7, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v6, v0, v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 227
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v4, v6

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    .line 228
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 232
    :cond_0
    if-nez v1, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-static {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v1, v0, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 240
    :cond_1
    if-eqz v1, :cond_2

    .line 241
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    invoke-static {v4, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    .line 243
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "permissionMask":I
    .end local v1    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
