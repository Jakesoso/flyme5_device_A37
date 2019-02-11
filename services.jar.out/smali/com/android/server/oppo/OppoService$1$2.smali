.class Lcom/android/server/oppo/OppoService$1$2;
.super Ljava/lang/Object;
.source "OppoService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oppo/OppoService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/oppo/OppoService$1;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$baseCodePath:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iput-object p2, p0, Lcom/android/server/oppo/OppoService$1$2;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/oppo/OppoService$1$2;->val$baseCodePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/oppo/OppoService$1$2;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v0, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$1200(Lcom/android/server/oppo/OppoService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oppo/OppoService$1$2;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/oppo/OppoService$1$2;->val$baseCodePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v0, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$1400(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v1, v1, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/oppo/OppoService;->access$600(Lcom/android/server/oppo/OppoService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oppo/OppoService$1$2;->val$baseCodePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v3, v3, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grTipTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/oppo/OppoService;->access$1000(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v4, v4, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grDownTipContent:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/oppo/OppoService;->access$1500(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v5, v5, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/oppo/OppoService;->access$1200(Lcom/android/server/oppo/OppoService;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v6, v6, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grAbandon:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/oppo/OppoService;->access$1600(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v7, v7, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grOk:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/oppo/OppoService;->access$1100(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v8, v8, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->grExceptionContent:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/oppo/OppoService;->access$1700(Lcom/android/server/oppo/OppoService;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/oppo/OppoService$1$2;->val$appName:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/android/server/oppo/OppoGrThreadFactory;->newOppoGrThread(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/oppo/OppoGrThread;

    move-result-object v10

    .line 260
    .local v10, "grThread":Lcom/android/server/oppo/OppoGrThread;
    sget-object v0, Lcom/android/server/oppo/OppoGrThreadFactory;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1$2;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v0, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/android/server/oppo/OppoService;->access$1202(Lcom/android/server/oppo/OppoService;Ljava/util/Map;)Ljava/util/Map;

    .line 264
    return-void
.end method
