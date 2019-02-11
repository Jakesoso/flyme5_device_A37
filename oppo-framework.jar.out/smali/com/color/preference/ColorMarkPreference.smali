.class public Lcom/color/preference/ColorMarkPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ColorMarkPreference.java"


# static fields
.field public static final HEAD_MARK:I = 0x1

.field public static final TAIL_MARK:I


# instance fields
.field mMarkStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0xc010467

    invoke-direct {p0, p1, p2, v0}, Lcom/color/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
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

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    iput v2, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    .line 36
    sget-object v1, Loppo/R$styleable;->ColorMarkPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/color/preference/ColorMarkPreference;->setChecked(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public getMarkStyle()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 68
    const v2, 0xc0204c6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "checkableView":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 71
    iget v2, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    if-nez v2, :cond_2

    .line 72
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    check-cast v1, Landroid/widget/Checkable;

    .end local v1    # "checkableView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/color/preference/ColorMarkPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 78
    :cond_0
    :goto_0
    const v2, 0xc0204c7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "checkableHeadView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 80
    iget v2, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 81
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkableHeadView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/color/preference/ColorMarkPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 89
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 90
    return-void

    .line 75
    .restart local v1    # "checkableView":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    .end local v1    # "checkableView":Landroid/view/View;
    .restart local v0    # "checkableHeadView":Landroid/view/View;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMarkStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/color/preference/ColorMarkPreference;->mMarkStyle:I

    .line 61
    return-void
.end method
