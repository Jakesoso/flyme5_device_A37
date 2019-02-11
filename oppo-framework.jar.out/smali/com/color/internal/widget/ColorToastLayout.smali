.class public Lcom/color/internal/widget/ColorToastLayout;
.super Landroid/widget/LinearLayout;
.source "ColorToastLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorToastLayout"


# instance fields
.field private final mTextColor:I

.field private final mTextPadding:Landroid/graphics/Rect;

.field private final mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/internal/widget/ColorToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    .line 57
    const v0, 0xc0804f2

    invoke-virtual {p0, v0}, Lcom/color/internal/widget/ColorToastLayout;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc060419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextColor:I

    .line 59
    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextSize:F

    .line 60
    iget-object v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050490

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 61
    iget-object v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050491

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 62
    iget-object v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050492

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v0, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/internal/widget/ColorToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/color/internal/widget/ColorToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v2, v2, v2, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 74
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v1, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v1, p0, Lcom/color/internal/widget/ColorToastLayout;->mContext:Landroid/content/Context;

    const v2, 0xc030013

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    iget v1, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget v1, p0, Lcom/color/internal/widget/ColorToastLayout;->mTextSize:F

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    return-void
.end method
