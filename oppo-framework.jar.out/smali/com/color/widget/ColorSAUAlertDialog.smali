.class public Lcom/color/widget/ColorSAUAlertDialog;
.super Ljava/lang/Object;
.source "ColorSAUAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;
    }
.end annotation


# static fields
.field public static final TYPE_ALREADY_DOWNLOAD:I = 0x2

.field public static final TYPE_BUTTON_DOWNLOAD_EXIT:I = 0x9

.field public static final TYPE_BUTTON_DOWNLOAD_LATER:I = 0x8

.field public static final TYPE_BUTTON_INSTALL_EXIT:I = 0x7

.field public static final TYPE_BUTTON_INSTALL_LATER:I = 0x6

.field public static final TYPE_MOBILE_PROMPT:I = 0x1

.field public static final TYPE_NO_PROMPT:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mNetworkPrompt:Landroid/widget/TextView;

.field private mOnButtonClickListener:Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;

.field private mSizeStr:Landroid/widget/TextView;

.field private mUpdateDescription:Landroid/widget/TextView;

.field private mVersionName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0xc090463

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "layout":Landroid/view/View;
    const v1, 0xc0204eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mVersionName:Landroid/widget/TextView;

    .line 58
    const v1, 0xc0204ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mSizeStr:Landroid/widget/TextView;

    .line 59
    const v1, 0xc0204e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mNetworkPrompt:Landroid/widget/TextView;

    .line 60
    const v1, 0xc0204e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mUpdateDescription:Landroid/widget/TextView;

    .line 61
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0xc040558

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorSAUAlertDialog;)Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSAUAlertDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mOnButtonClickListener:Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;

    return-object v0
.end method

.method private setButtons(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "negative"    # Ljava/lang/String;
    .param p2, "positive"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    new-instance v2, Lcom/color/widget/ColorSAUAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorSAUAlertDialog$1;-><init>(Lcom/color/widget/ColorSAUAlertDialog;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    new-instance v2, Lcom/color/widget/ColorSAUAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/color/widget/ColorSAUAlertDialog$2;-><init>(Lcom/color/widget/ColorSAUAlertDialog;)V

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    :cond_0
    return-void
.end method

.method public setButtonType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const v3, 0xc040557

    const v2, 0xc040556

    const v1, 0xc040554

    .line 97
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    const v1, 0xc040555

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    const v1, 0xc040559

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 69
    return-void
.end method

.method public setNetworkPrompt(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mNetworkPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mNetworkPrompt:Landroid/widget/TextView;

    const v1, 0xc040552

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mNetworkPrompt:Landroid/widget/TextView;

    const v1, 0xc040553

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnButtonClickListener(Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;)V
    .locals 0
    .param p1, "e"    # Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mOnButtonClickListener:Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;

    .line 52
    return-void
.end method

.method public setSizeStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "sizeStr"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mSizeStr:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mSizeStr:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setUpdateDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "updateDescription"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mUpdateDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 3
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mVersionName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "v":Ljava/lang/String;
    iget-object v1, p0, Lcom/color/widget/ColorSAUAlertDialog;->mVersionName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    :cond_0
    return-void
.end method
