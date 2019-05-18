.class public Lcom/color/preference/ColorEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "ColorEditTextPreference.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field mStatusText_1:Ljava/lang/CharSequence;

.field mStatusText_2:Ljava/lang/CharSequence;

.field mStatusText_3:Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/color/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    iput-object p1, p0, Lcom/color/preference/ColorEditTextPreference;->mContext:Landroid/content/Context;

    .line 44
    sget-object v1, Loppo/R$styleable;->ColorJumpPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    .line 49
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 117
    const v7, 0xc020100

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "jump":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 119
    iget-object v7, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 120
    iget-object v7, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    const v7, 0xc020101

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "status1":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 128
    iget-object v4, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    .line 129
    .local v4, "statusText_1":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 130
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 133
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 134
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    .end local v4    # "statusText_1":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v7, 0xc020102

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "status2":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 142
    iget-object v5, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    .line 143
    .local v5, "statusText_2":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 144
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    .end local v5    # "statusText_2":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    const v7, 0xc020103

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, "status3":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 152
    iget-object v6, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    .line 153
    .local v6, "statusText_3":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 154
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    .end local v6    # "statusText_3":Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    return-void

    .line 123
    .end local v1    # "status1":Landroid/widget/TextView;
    .end local v2    # "status2":Landroid/widget/TextView;
    .end local v3    # "status3":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 137
    .restart local v1    # "status1":Landroid/widget/TextView;
    .restart local v4    # "statusText_1":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 147
    .end local v4    # "statusText_1":Ljava/lang/CharSequence;
    .restart local v2    # "status2":Landroid/widget/TextView;
    .restart local v5    # "statusText_2":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 157
    .end local v5    # "statusText_2":Ljava/lang/CharSequence;
    .restart local v3    # "status3":Landroid/widget/TextView;
    .restart local v6    # "statusText_3":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setJump(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/preference/ColorEditTextPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "jump"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/color/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p0}, Lcom/color/preference/ColorEditTextPreference;->notifyChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_1:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/color/preference/ColorEditTextPreference;->notifyChanged()V

    .line 74
    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_2:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p0}, Lcom/color/preference/ColorEditTextPreference;->notifyChanged()V

    .line 85
    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/color/preference/ColorEditTextPreference;->mStatusText_3:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lcom/color/preference/ColorEditTextPreference;->notifyChanged()V

    .line 96
    :cond_2
    return-void
.end method
