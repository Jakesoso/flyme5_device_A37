.class public Lcom/android/internal/widget/ColorActionBarOverlayLayout;
.super Lcom/android/internal/widget/ActionBarOverlayLayout;
.source "ColorActionBarOverlayLayout.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorActionBarOverlayLayout"


# instance fields
.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mContent:Landroid/view/View;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mIdActionBar:I

.field private mIdActionContextBar:I

.field private mIdSplitActionBar:I

.field private final mIsOppoStyle:Z

.field private mIsSplitActionBarOverlay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v4, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsSplitActionBarOverlay:Z

    .line 51
    iput v4, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarHeight:I

    .line 52
    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionBar:I

    .line 53
    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdSplitActionBar:I

    .line 54
    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionContextBar:I

    .line 55
    iput-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 56
    iput-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 57
    iput-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 68
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsOppoStyle:Z

    .line 69
    iget-boolean v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsOppoStyle:Z

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarHeight:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    sget-object v2, Loppo/R$styleable;->OppoTheme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    .local v1, "tb":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsSplitActionBarOverlay:Z

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    const v2, 0xc0204cf

    invoke-static {p1, v2}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionBar:I

    .line 79
    const v2, 0xc0204d0

    invoke-static {p1, v2}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdSplitActionBar:I

    .line 80
    const v2, 0xc0204d4

    invoke-static {p1, v2}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionContextBar:I

    goto :goto_0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 168
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 167
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 168
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 170
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 88
    iget-boolean v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsOppoStyle:Z

    if-nez v3, :cond_0

    .line 89
    invoke-super/range {p0 .. p6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    .line 110
    :goto_0
    return v3

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v2

    .line 93
    .local v2, "vis":I
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 94
    .local v1, "stable":Z
    :goto_1
    const/4 v0, 0x0

    .line 95
    .local v0, "offset":I
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarHeight:I

    sub-int v0, v3, v4

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 99
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 102
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsSplitActionBarOverlay:Z

    if-eqz v3, :cond_2

    .line 103
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 110
    .end local v0    # "offset":I
    .end local v1    # "stable":Z
    .end local v2    # "vis":I
    :cond_2
    :goto_2
    invoke-super/range {p0 .. p6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    goto :goto_0

    .line 93
    .restart local v2    # "vis":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 107
    .restart local v0    # "offset":I
    .restart local v1    # "stable":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 116
    iget-boolean v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsOppoStyle:Z

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 120
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 121
    iget v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionBar:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 122
    iget v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdSplitActionBar:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    goto :goto_0
.end method

.method public setSplitActionBarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsSplitActionBarOverlay:Z

    .line 159
    return-void
.end method

.method public setUiOptions(I)V
    .locals 5
    .param p1, "uiOptions"    # I

    .prologue
    .line 128
    iget-boolean v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIsOppoStyle:Z

    if-nez v3, :cond_1

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setUiOptions(I)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v1, 0x0

    .line 133
    .local v1, "splitActionBar":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 135
    .local v2, "splitWhenNarrow":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 137
    const/4 v1, 0x1

    .line 139
    :cond_2
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->pullChildren()V

    .line 141
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 143
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 144
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 146
    iget v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mIdActionContextBar:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .line 147
    .local v0, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    goto :goto_0

    .line 133
    .end local v0    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    .end local v2    # "splitWhenNarrow":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 150
    .restart local v2    # "splitWhenNarrow":Z
    :cond_4
    if-eqz v1, :cond_0

    .line 151
    const-string v3, "ActionBarTab:ColorActionBarOverlayLayout"

    const-string v4, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v3, v4}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
