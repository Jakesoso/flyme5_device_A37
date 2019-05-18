.class Lcom/android/server/oppo/OppoGrThread$2;
.super Ljava/lang/Object;
.source "OppoGrThreadFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oppo/OppoGrThread;->openDialog(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoGrThread;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoGrThread;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 417
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/server/oppo/OppoGrThread;->abandon:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/server/oppo/OppoGrThread;->access$202(Lcom/android/server/oppo/OppoGrThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 419
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # invokes: Lcom/android/server/oppo/OppoGrThread;->deleteTmpFiles()V
    invoke-static {v0}, Lcom/android/server/oppo/OppoGrThread;->access$300(Lcom/android/server/oppo/OppoGrThread;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/android/server/oppo/OppoGrThread;->access$400(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 422
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canCreateDialog:Ljava/lang/Boolean;

    .line 427
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/oppo/OppoGrThread;->access$500(Lcom/android/server/oppo/OppoGrThread;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 428
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/server/oppo/OppoGrThread$2;->this$0:Lcom/android/server/oppo/OppoGrThread;

    # getter for: Lcom/android/server/oppo/OppoGrThread;->action:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/android/server/oppo/OppoGrThread;->access$400(Lcom/android/server/oppo/OppoGrThread;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 424
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/OppoManager;->canReinstall:Ljava/lang/Boolean;

    goto :goto_0
.end method
