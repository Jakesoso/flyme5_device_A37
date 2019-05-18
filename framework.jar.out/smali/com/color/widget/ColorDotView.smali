.class public Lcom/color/widget/ColorDotView;
.super Landroid/view/View;
.source "ColorDotView.java"


# static fields
.field public static PAGE_SIZE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDotNumber:I

.field private mDotSize:I

.field private mHightlightDot:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/color/widget/ColorDotView;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    .line 36
    iput v1, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    .line 37
    iput v1, p0, Lcom/color/widget/ColorDotView;->mDotSize:I

    .line 43
    iput-object p1, p0, Lcom/color/widget/ColorDotView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    .line 36
    iput v1, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    .line 37
    iput v1, p0, Lcom/color/widget/ColorDotView;->mDotSize:I

    .line 48
    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050469

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorDotView;->mRadius:F

    .line 49
    iput-object p1, p0, Lcom/color/widget/ColorDotView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    .line 36
    iput v1, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    .line 37
    iput v1, p0, Lcom/color/widget/ColorDotView;->mDotSize:I

    .line 54
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    .line 96
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v2, p0, Lcom/color/widget/ColorDotView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 60
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 61
    const/4 v2, 0x4

    sput v2, Lcom/color/widget/ColorDotView;->PAGE_SIZE:I

    .line 65
    :goto_0
    iget v2, p0, Lcom/color/widget/ColorDotView;->mDotSize:I

    int-to-double v2, v2

    sget v4, Lcom/color/widget/ColorDotView;->PAGE_SIZE:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    .line 66
    iget v2, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    if-ge v1, v2, :cond_2

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/color/widget/ColorDotView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget v2, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    if-ne v2, v1, :cond_1

    .line 70
    iget-object v2, p0, Lcom/color/widget/ColorDotView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc060415

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    :goto_2
    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    int-to-float v3, v3

    iget v4, p0, Lcom/color/widget/ColorDotView;->mRadius:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/color/widget/ColorDotView;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/color/widget/ColorDotView;->mRadius:F

    iget-object v5, p0, Lcom/color/widget/ColorDotView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    .end local v1    # "i":I
    :cond_0
    const/16 v2, 0x8

    sput v2, Lcom/color/widget/ColorDotView;->PAGE_SIZE:I

    goto :goto_0

    .line 72
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorDotView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc060414

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 77
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setDotNumber(I)V
    .locals 0
    .param p1, "dotnumber"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/color/widget/ColorDotView;->mDotNumber:I

    .line 81
    return-void
.end method

.method public setDotSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/color/widget/ColorDotView;->mDotSize:I

    .line 85
    return-void
.end method

.method public setHightlightDot(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/color/widget/ColorDotView;->mHightlightDot:I

    .line 89
    invoke-virtual {p0}, Lcom/color/widget/ColorDotView;->invalidate()V

    .line 90
    return-void
.end method
