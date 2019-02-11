.class Lcom/oppo/app/OppoSecurityAlertDialog$7;
.super Ljava/lang/Object;
.source "OppoSecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoSecurityAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/app/OppoSecurityAlertDialog;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$000(Lcom/oppo/app/OppoSecurityAlertDialog;)Z

    move-result v2

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;->onSelected(Landroid/content/DialogInterface;ZI)V

    .line 179
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$7;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
