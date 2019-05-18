.class public Lcom/color/sau/SauWaitProgressDialog;
.super Ljava/lang/Object;
.source "SauWaitProgressDialog.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/color/sau/SauWaitProgressDialog;->mContext:Landroid/content/Context;

    .line 12
    iget-object v1, p0, Lcom/color/sau/SauWaitProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc04055a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "upgrade_runningText":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    .line 14
    iget-object v1, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 15
    iget-object v1, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/color/sau/SauWaitProgressDialog;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 23
    :cond_0
    return-void
.end method
