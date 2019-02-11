.class public Lcom/color/internal/widget/ColorActionBarTitleLayout;
.super Landroid/widget/LinearLayout;
.source "ColorActionBarTitleLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorActionBarTitleLayout"


# instance fields
.field private mIdSubTitle:I

.field private mIdTitle:I

.field private final mIsOppoStyle:Z

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v2, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mMaxWidth:I

    .line 48
    iput v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdTitle:I

    .line 49
    iput v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdSubTitle:I

    .line 60
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIsOppoStyle:Z

    .line 61
    iget-boolean v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    const v0, 0xc020401

    invoke-virtual {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->setId(I)V

    .line 65
    const v0, 0xc0204d6

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdTitle:I

    .line 66
    const v0, 0xc0204d7

    invoke-static {p1, v0}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdSubTitle:I

    .line 67
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mMaxWidth:I

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->setGravity(I)V

    .line 69
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setTitleView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 91
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    iget v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mMaxWidth:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    iget-boolean v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdTitle:I

    invoke-virtual {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->setTitleView(Landroid/widget/TextView;)V

    .line 82
    iget v0, p0, Lcom/color/internal/widget/ColorActionBarTitleLayout;->mIdSubTitle:I

    invoke-virtual {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/color/internal/widget/ColorActionBarTitleLayout;->setTitleView(Landroid/widget/TextView;)V

    goto :goto_0
.end method
