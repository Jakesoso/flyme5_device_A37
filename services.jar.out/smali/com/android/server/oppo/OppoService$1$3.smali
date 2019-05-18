.class Lcom/android/server/oppo/OppoService$1$3;
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

.field final synthetic val$baseCodePath:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoService$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/oppo/OppoService$1$3;->this$1:Lcom/android/server/oppo/OppoService$1;

    iput-object p2, p0, Lcom/android/server/oppo/OppoService$1$3;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/oppo/OppoService$1$3;->val$baseCodePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/oppo/OppoService$1$3;->this$1:Lcom/android/server/oppo/OppoService$1;

    iget-object v0, v0, Lcom/android/server/oppo/OppoService$1;->this$0:Lcom/android/server/oppo/OppoService;

    # getter for: Lcom/android/server/oppo/OppoService;->notInstalls:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/oppo/OppoService;->access$1200(Lcom/android/server/oppo/OppoService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oppo/OppoService$1$3;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/oppo/OppoService$1$3;->val$baseCodePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 275
    return-void
.end method
