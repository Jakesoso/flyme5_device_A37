.class public Lcom/color/widget/ColorTransferProgress;
.super Lcom/color/widget/ColorLoadProgress;
.source "ColorTransferProgress.java"


# static fields
.field private static final FULLANGLE:F = 360.0f

.field private static final INITANGLE:F = 270.0f


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorTransferProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const v0, 0xc010462

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorTransferProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string v1, "ColorDownAndUp"

    iput-object v1, p0, Lcom/color/widget/ColorTransferProgress;->TAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Lcom/color/widget/ColorTransferProgress;->DEBUG:Z

    .line 48
    iput-object v2, p0, Lcom/color/widget/ColorTransferProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 49
    iput-object v2, p0, Lcom/color/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    .line 64
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050463

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    .line 65
    sget-object v1, Loppo/R$styleable;->ColorLoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorTransferProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-direct {p0}, Lcom/color/widget/ColorTransferProgress;->init()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060412

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 84
    .local v0, "paintColor":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 89
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 91
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    .line 93
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/color/widget/ColorLoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, "left":I
    const/4 v8, 0x0

    .line 101
    .local v8, "top":I
    const/4 v7, 0x0

    .line 102
    .local v7, "right":I
    const/4 v0, 0x0

    .line 105
    .local v0, "bottom":I
    iget-object v1, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Lcom/color/widget/ColorTransferProgress;->mProgress:I

    int-to-float v10, v10

    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/color/widget/ColorTransferProgress;->mMax:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 108
    .local v6, "mScale":F
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getGravity()I

    move-result v10

    and-int/lit8 v9, v10, 0x70

    .line 110
    .local v9, "verticalGravity":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 111
    .local v2, "drawableHeight":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 113
    .local v3, "drawableWidth":I
    sparse-switch v9, :sswitch_data_0

    .line 121
    :goto_0
    add-int v0, v8, v2

    .line 122
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getWidth()I

    move-result v10

    sub-int v4, v10, v3

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getWidth()I

    move-result v7

    .line 128
    :goto_2
    invoke-virtual {v1, v4, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v9    # "verticalGravity":I
    :cond_0
    iget v10, p0, Lcom/color/widget/ColorTransferProgress;->mState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/color/widget/ColorTransferProgress;->mState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 135
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    iget v10, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    add-int/2addr v10, v4

    iget v11, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    add-int/2addr v11, v8

    iget v12, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    sub-int v12, v7, v12

    iget v13, p0, Lcom/color/widget/ColorTransferProgress;->mStrokeWidth:I

    sub-int v13, v0, v13

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v5, "mRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/color/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 138
    iget-object v10, p0, Lcom/color/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v12, 0x43870000    # 270.0f

    invoke-virtual {v10, v11, v12, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 139
    iget-object v10, p0, Lcom/color/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/color/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    .end local v5    # "mRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 115
    .restart local v2    # "drawableHeight":I
    .restart local v3    # "drawableWidth":I
    .restart local v9    # "verticalGravity":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getHeight()I

    move-result v10

    sub-int v8, v10, v2

    .line 116
    goto :goto_0

    .line 118
    :sswitch_1
    invoke-virtual {p0}, Lcom/color/widget/ColorTransferProgress;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v8, v10, 0x2

    goto :goto_0

    .line 122
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v7, v3

    .line 123
    goto :goto_2

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 78
    .local v1, "width":I
    iget-object v2, p0, Lcom/color/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 79
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorTransferProgress;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method
