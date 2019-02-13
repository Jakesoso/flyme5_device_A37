.class public Lcom/oppo/app/OppoSecurityAlertDialog;
.super Ljava/lang/Object;
.source "OppoSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsCheck:Z

.field private mMessage:Landroid/widget/TextView;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

.field private mRemember:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "contentId"    # I
    .param p4, "always"    # Z
    .param p5, "isCheck"    # Z

    .prologue
    .line 52
    const v6, 0xc040488

    const v7, 0xc040487

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/oppo/app/OppoSecurityAlertDialog;-><init>(Landroid/content/Context;IIZZII)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "contentId"    # I
    .param p4, "always"    # Z
    .param p5, "isCheck"    # Z
    .param p6, "positiveStringId"    # I
    .param p7, "negativeStringId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 43
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 45
    iput-boolean v3, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 173
    new-instance v1, Lcom/oppo/app/OppoSecurityAlertDialog$7;

    invoke-direct {v1, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$7;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 57
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xc09044a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 67
    if-eqz p4, :cond_0

    .line 68
    iput-boolean p5, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 69
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$1;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$3;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$3;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, p6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$2;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, p7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    .line 107
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 110
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 112
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZZII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "contentStr"    # Ljava/lang/String;
    .param p4, "always"    # Z
    .param p5, "isCheck"    # Z
    .param p6, "positiveStringId"    # I
    .param p7, "negativeStringId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 43
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 45
    iput-boolean v3, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 173
    new-instance v1, Lcom/oppo/app/OppoSecurityAlertDialog$7;

    invoke-direct {v1, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$7;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 117
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    .line 118
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xc09044a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 127
    if-eqz p4, :cond_0

    .line 128
    iput-boolean p5, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 129
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$4;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$4;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$6;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$6;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, p6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$5;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$5;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, p7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    .line 167
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 170
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 171
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoSecurityAlertDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/app/OppoSecurityAlertDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public getSecurityAlertDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 235
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    return-void
.end method

.method public setOnSelectedListener(Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    .line 193
    return-void
.end method

.method public setWindowType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 219
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v0, "persist.sys.personnal.security"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 210
    :cond_0
    return-void
.end method
