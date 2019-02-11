.class public Lcom/android/internal/view/menu/ColorActionMenuItemView;
.super Lcom/android/internal/view/menu/ActionMenuItemView;
.source "ColorActionMenuItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorActionMenuItemView"


# instance fields
.field private mDensity:F

.field private mHorizontalPadding:I

.field private mIsOppoStyle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    .line 46
    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mVerticalPadding:I

    .line 47
    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mHorizontalPadding:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mDensity:F

    .line 68
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mDensity:F

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mVerticalPadding:I

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mHorizontalPadding:I

    goto :goto_0
.end method

.method private isDummyItem()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 176
    .local v0, "itemData":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->hasText()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v3, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 168
    .local v2, "visible":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mHorizontalPadding:I

    .line 169
    .local v0, "paddingHorizontal":I
    :goto_1
    if-eqz v2, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mVerticalPadding:I

    .line 170
    .local v1, "paddingVertical":I
    :cond_0
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->setPadding(IIII)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->setSelected(Z)V

    .line 172
    return-void

    .end local v0    # "paddingHorizontal":I
    .end local v1    # "paddingVertical":I
    .end local v2    # "visible":Z
    :cond_1
    move v2, v1

    .line 167
    goto :goto_0

    .restart local v2    # "visible":Z
    :cond_2
    move v0, v1

    .line 168
    goto :goto_1
.end method


# virtual methods
.method public getCompoundPaddingRight()I
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getCompoundPaddingRight()I

    move-result v1

    .line 156
    .local v1, "padding":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    if-lez v1, :cond_0

    .line 157
    iget v2, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mDensity:F

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x2

    .line 158
    .local v0, "cursorWidth":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 160
    .end local v0    # "cursorWidth":I
    .end local v1    # "padding":I
    :cond_0
    return v1
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 117
    invoke-super {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->needsDividerAfter()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->needsDividerBefore()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->updatePadding()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->onMeasure(II)V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->superOnMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->isDummyItem()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->updatePadding()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/android/internal/view/menu/ColorActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 138
    invoke-direct {p0}, Lcom/android/internal/view/menu/ColorActionMenuItemView;->updatePadding()V

    goto :goto_0
.end method
