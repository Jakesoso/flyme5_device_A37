.class public Lcom/color/internal/widget/ColorSearchViewLayout;
.super Landroid/widget/LinearLayout;
.source "ColorSearchViewLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorSearchViewLayout"


# instance fields
.field private mCloseBtnPaddingEnd:I

.field private mCloseBtnPaddingStart:I

.field private mFrameMargin:I

.field private final mIsOppoStyle:Z

.field private mSearchBarHeight:I

.field private mSearchButton:I

.field private mSearchCloseBtn:I

.field private mSearchEditFrame:I

.field private mSearchSrcText:I

.field private mSearchTextColor:I

.field private mSearchTextHintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/internal/widget/ColorSearchViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v1, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchButton:I

    .line 48
    iput v1, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchEditFrame:I

    .line 49
    iput v1, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchSrcText:I

    .line 50
    iput v1, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchCloseBtn:I

    .line 51
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchBarHeight:I

    .line 52
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    .line 53
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextHintColor:I

    .line 54
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextColor:I

    .line 55
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingStart:I

    .line 56
    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingEnd:I

    .line 67
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mIsOppoStyle:Z

    .line 68
    iget-boolean v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    const v0, 0xc0204e3

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchButton:I

    .line 72
    const v0, 0xc0204e4

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchEditFrame:I

    .line 73
    const v0, 0xc0204e5

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchSrcText:I

    .line 74
    const v0, 0xc0204e6

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchCloseBtn:I

    .line 75
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchBarHeight:I

    .line 76
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    .line 77
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextHintColor:I

    .line 78
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc060423

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextColor:I

    .line 79
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingStart:I

    .line 80
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorSearchViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingEnd:I

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    iget-boolean v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mIsOppoStyle:Z

    if-nez v6, :cond_0

    .line 118
    :goto_0
    return-void

    .line 94
    :cond_0
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchSrcText:I

    invoke-virtual {p0, v6}, Lcom/color/internal/widget/ColorSearchViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 95
    .local v5, "searchSrcText":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    .local v1, "lpSrcText":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_1

    .line 97
    const/16 v6, 0x10

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 98
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchBarHeight:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 100
    :cond_1
    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextHintColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 102
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchCloseBtn:I

    invoke-virtual {p0, v6}, Lcom/color/internal/widget/ColorSearchViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 106
    .local v3, "searchCloseBtn":Landroid/widget/ImageView;
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingStart:I

    iget v7, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mCloseBtnPaddingEnd:I

    invoke-virtual {v3, v6, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 109
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchEditFrame:I

    invoke-virtual {p0, v6}, Lcom/color/internal/widget/ColorSearchViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 110
    .local v4, "searchEditFrame":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .local v0, "lpEditFrame":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 112
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    iget v7, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    iget v8, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    iget v9, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mFrameMargin:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    :cond_2
    iget v6, p0, Lcom/color/internal/widget/ColorSearchViewLayout;->mSearchButton:I

    invoke-virtual {p0, v6}, Lcom/color/internal/widget/ColorSearchViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 117
    .local v2, "searchButton":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
