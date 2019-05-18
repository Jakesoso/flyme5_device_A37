.class Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;
.super Landroid/os/Handler;
.source "OppoAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OppoAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OppoAppDexOptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OppoAppDexOptManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    .line 318
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 319
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 322
    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->isReady:Z
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$100(Lcom/android/server/pm/OppoAppDexOptManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    .line 327
    .local v0, "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 328
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    check-cast v0, Lcom/android/server/pm/OppoAppDexInfo;

    .line 331
    .restart local v0    # "dexInfo":Lcom/android/server/pm/OppoAppDexInfo;
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 333
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$800(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/content/Context;

    move-result-object v4

    if-nez v2, :cond_3

    const v3, 0xc04055b

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 340
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v3, v0, Lcom/android/server/pm/OppoAppDexInfo;->isCompleteDex:Z

    if-nez v3, :cond_4

    .line 341
    const-string v3, "OppoAppDexOptManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toast show packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$800(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 333
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    const v3, 0xc04055c

    goto :goto_1

    .line 343
    .restart local v1    # "text":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 344
    const-string v3, "OppoAppDexOptManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toast uninstall show packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/OppoAppDexInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/android/server/pm/OppoAppDexOptManager$ToastHandler;->this$0:Lcom/android/server/pm/OppoAppDexOptManager;

    # getter for: Lcom/android/server/pm/OppoAppDexOptManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/OppoAppDexOptManager;->access$800(Lcom/android/server/pm/OppoAppDexOptManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
