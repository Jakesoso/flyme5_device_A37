.class Lcom/color/widget/ColorRoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorRoundRectDrawable.java"


# static fields
.field static final COS_45:D

.field static final SHADOW_MULTIPLIER:F = 1.5f


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/color/widget/ColorRoundRectDrawable;->COS_45:D

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "backgroundColor"    # I
    .param p2, "radius"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForPadding:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForRadius:Z

    .line 47
    iput p2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/color/widget/ColorRoundRectDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 68
    .end local p0    # "maxShadowSize":F
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 56
    if-eqz p2, :cond_0

    .line 57
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/color/widget/ColorRoundRectDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 59
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget-boolean v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForPadding:Z

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPadding:F

    iget v3, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    iget-boolean v4, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v2, v3, v4}, Lcom/color/widget/ColorRoundRectDrawable;->calculateVerticalPadding(FFZ)F

    move-result v1

    .line 101
    .local v1, "vInset":F
    iget v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPadding:F

    iget v3, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    iget-boolean v4, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v2, v3, v4}, Lcom/color/widget/ColorRoundRectDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v0

    .line 102
    .local v0, "hInset":F
    iget-object v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 104
    iget-object v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 106
    .end local v0    # "hInset":F
    .end local v1    # "vInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    iget v2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    iget-object v3, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 117
    return-void
.end method

.method getPadding()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 112
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundRectDrawable;->invalidateSelf()V

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 136
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1
    .param p1, "padding"    # F
    .param p2, "insetForPadding"    # Z
    .param p3, "insetForRadius"    # Z

    .prologue
    .line 73
    iget v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorRoundRectDrawable;->mPadding:F

    .line 78
    iput-boolean p2, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForPadding:Z

    .line 79
    iput-boolean p3, p0, Lcom/color/widget/ColorRoundRectDrawable;->mInsetForRadius:Z

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundRectDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 120
    iget v0, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorRoundRectDrawable;->mRadius:F

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundRectDrawable;->invalidateSelf()V

    goto :goto_0
.end method
