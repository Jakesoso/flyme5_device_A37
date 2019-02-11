.class public Lcom/color/widget/ColorRoundImageView;
.super Landroid/widget/ImageView;
.source "ColorRoundImageView.java"


# static fields
.field private static final BORDER_CIRCLE_WIDTH:I = 0x5

.field private static final CIRCLE:I = 0x0

.field private static final DEFAULT_BORDER_RADIUS:I = 0xa

.field private static final ROUND:I = 0x1


# instance fields
.field private bSize:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderRadius:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mHasDefaultPic:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutCricle:Landroid/graphics/Paint;

.field private mRadius:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mWidth:I

.field private scale:F

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 62
    iput-object p1, p0, Lcom/color/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    .line 68
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05048e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    .line 69
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    iput-object p1, p0, Lcom/color/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    .line 80
    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-object v1, Loppo/R$styleable;->ColorRoundImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorRoundImageView;->mBorderRadius:I

    .line 85
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/color/widget/ColorRoundImageView;->mHasBorder:Z

    .line 87
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/color/widget/ColorRoundImageView;->mHasDefaultPic:Z

    .line 88
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/color/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 188
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 189
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 194
    .local v3, "h":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 195
    .local v4, "w":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/color/widget/ColorRoundImageView;->mHasDefaultPic:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0804ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 184
    :cond_2
    return-void

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 179
    iput-object p1, p0, Lcom/color/widget/ColorRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 106
    iput v2, p0, Lcom/color/widget/ColorRoundImageView;->scale:F

    .line 107
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->bSize:I

    .line 110
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->bSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->scale:F

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->scale:F

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 116
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    if-nez v0, :cond_5

    .line 122
    iget-boolean v0, p0, Lcom/color/widget/ColorRoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_4

    .line 123
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorRoundImageView;->mOutCricle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    :cond_2
    :goto_1
    return-void

    .line 111
    :cond_3
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    if-ne v0, v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/color/widget/ColorRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->scale:F

    goto :goto_0

    .line 126
    :cond_4
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 129
    :cond_5
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    if-ne v0, v3, :cond_2

    .line 130
    iget-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 148
    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    .local v0, "minWidth":I
    if-nez v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    .end local v0    # "minWidth":I
    :cond_0
    iput v0, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    .line 151
    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/color/widget/ColorRoundImageView;->mRadius:I

    .line 152
    iget v1, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    iget v2, p0, Lcom/color/widget/ColorRoundImageView;->mWidth:I

    invoke-virtual {p0, v1, v2}, Lcom/color/widget/ColorRoundImageView;->setMeasuredDimension(II)V

    .line 154
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 139
    iget v0, p0, Lcom/color/widget/ColorRoundImageView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/widget/ColorRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 142
    :cond_0
    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/color/widget/ColorRoundImageView;->mHasBorder:Z

    .line 94
    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/color/widget/ColorRoundImageView;->mHasDefaultPic:Z

    .line 98
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v1, p0, Lcom/color/widget/ColorRoundImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method
