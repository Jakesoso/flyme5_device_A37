.class public Lcom/color/widget/ColorCardView;
.super Landroid/widget/FrameLayout;
.source "ColorCardView.java"


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const v0, 0xc010484

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 162
    sget-object v7, Lcom/oppo/internal/R$styleable;->ColorCardView:[I

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 165
    .local v1, "backgroundColor":I
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 166
    .local v6, "radius":F
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 167
    .local v4, "elevation":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 168
    .local v5, "maxElevation":F
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/color/widget/ColorCardView;->mCompatPadding:Z

    .line 169
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/color/widget/ColorCardView;->mPreventCornerOverlap:Z

    .line 170
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 171
    .local v3, "defaultPadding":I
    iget-object v7, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    const/4 v8, 0x7

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 173
    iget-object v7, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v8, 0x9

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 175
    iget-object v7, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 177
    iget-object v7, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 179
    cmpl-float v7, v4, v5

    if-lez v7, :cond_0

    .line 180
    move v5, v4

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    new-instance v2, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-direct {v2, v1, v6}, Lcom/color/widget/ColorRoundRectDrawable;-><init>(IF)V

    .line 184
    .local v2, "backgroundDrawable":Lcom/color/widget/ColorRoundRectDrawable;
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0, v10}, Lcom/color/widget/ColorCardView;->setClipToOutline(Z)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorCardView;->setElevation(F)V

    .line 188
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorCardView;->setMaxElevation(F)V

    .line 189
    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getMaxElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation()F
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-virtual {v0}, Lcom/color/widget/ColorRoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/color/widget/ColorCardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-virtual {v0}, Lcom/color/widget/ColorRoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/color/widget/ColorCardView;->mCompatPadding:Z

    return v0
.end method

.method public onCompatPaddingChanged()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getMaxElevation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorCardView;->setMaxElevation(F)V

    .line 384
    return-void
.end method

.method public onPreventCornerOverlapChanged()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getMaxElevation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorCardView;->setMaxElevation(F)V

    .line 389
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRoundRectDrawable;->setColor(I)V

    .line 204
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorCardView;->setBackgroundColor(I)V

    .line 199
    return-void
.end method

.method public setCardElevation(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorCardView;->setElevation(F)V

    .line 287
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->updatePadding()V

    .line 158
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorCardView;->setMaxElevation(F)V

    .line 315
    return-void
.end method

.method public setMaxElevation(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getUseCompatPadding()Z

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/color/widget/ColorRoundRectDrawable;->setPadding(FZZ)V

    .line 320
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->updatePadding()V

    .line 321
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 97
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 101
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1
    .param p1, "preventCornerOverlap"    # Z

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/color/widget/ColorCardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorCardView;->mPreventCornerOverlap:Z

    .line 379
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->onPreventCornerOverlapChanged()V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    check-cast v0, Lcom/color/widget/ColorRoundRectDrawable;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRoundRectDrawable;->setRadius(F)V

    .line 252
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    iget-object v0, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/color/widget/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 274
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .param p1, "useCompatPadding"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/color/widget/ColorCardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorCardView;->mCompatPadding:Z

    .line 135
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->onCompatPaddingChanged()V

    goto :goto_0
.end method

.method public updatePadding()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/color/widget/ColorCardView;->setShadowPadding(IIII)V

    .line 334
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getMaxElevation()F

    move-result v0

    .line 328
    .local v0, "elevation":F
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getRadius()F

    move-result v2

    .line 329
    .local v2, "radius":F
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/color/widget/ColorRoundRectDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 331
    .local v1, "hPadding":I
    invoke-virtual {p0}, Lcom/color/widget/ColorCardView;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/color/widget/ColorRoundRectDrawable;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 333
    .local v3, "vPadding":I
    invoke-virtual {p0, v1, v3, v1, v3}, Lcom/color/widget/ColorCardView;->setShadowPadding(IIII)V

    goto :goto_0
.end method
