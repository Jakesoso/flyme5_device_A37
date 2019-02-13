.class public Lcom/color/widget/ColorLoadingView;
.super Landroid/widget/ProgressBar;
.source "ColorLoadingView.java"


# static fields
.field public static final FULLY_AUTO_MODE:I = 0x2

.field public static final HALF_AUTO_MODE:I = 0x1

.field public static final HALF_MANUAL_MODE:I = 0x0

.field private static final INIT_RADIAN:I = 0xa0

.field private static final LARGER_AND_SMALLER_SCALE:J = 0x46L

.field private static final LARGER_TIME:J = 0x3e8L

.field private static final RECT_LEFT:I = 0x0

.field private static final RECT_TOP:I = 0x0

.field private static final ROTATE_SCALE:J = 0x2d0L

.field private static final ROTATE_TIME:J = 0x7d0L

.field private static final ROTATION_HALF:I = 0xb4


# instance fields
.field private final PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

.field private mHalfInitAngle:I

.field private mHeight:I

.field private mInitAngle:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mRotateAngle:F

.field private mRotateMode:I

.field private mRotateRadian:F

.field private mRotationX:F

.field private mRotationY:F

.field private mStartTime:J

.field private mStrokeWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0xc010464

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 85
    const v0, 0xc010464

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/color/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 60
    const/16 v2, 0xa

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mHalfInitAngle:I

    .line 61
    const/16 v2, 0x64

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mInitAngle:I

    .line 62
    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    .line 63
    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mPaintColor:I

    .line 68
    iput v7, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    .line 69
    iput v7, p0, Lcom/color/widget/ColorLoadingView;->mRotateAngle:F

    .line 71
    const/4 v2, 0x2

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    .line 72
    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mWidth:I

    .line 73
    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mHeight:I

    .line 90
    sget-object v2, Loppo/R$styleable;->colorLoadingView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050464

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    .local v1, "length":I
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mWidth:I

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mHeight:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050461

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc060411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorLoadingView;->mPaintColor:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-direct {p0}, Lcom/color/widget/ColorLoadingView;->init()V

    .line 99
    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "v"    # F

    .prologue
    .line 198
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getFirstRotateRadian(F)F
    .locals 4
    .param p1, "phase"    # F

    .prologue
    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 178
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    packed-switch v0, :pswitch_data_0

    .line 183
    iget-object v0, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    sub-float v1, v2, p1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    sub-float v1, v2, p1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getSecondRotateRadian(F)F
    .locals 3
    .param p1, "phase"    # F

    .prologue
    const/high16 v2, 0x428c0000    # 70.0f

    .line 188
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    packed-switch v0, :pswitch_data_0

    .line 193
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    :goto_0
    return v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 102
    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    add-int/lit8 v3, v6, 0x0

    .line 103
    .local v3, "rectLeft":I
    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mWidth:I

    iget v7, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    sub-int v4, v6, v7

    .line 104
    .local v4, "rectRight":I
    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    add-int/lit8 v5, v6, 0x0

    .line 105
    .local v5, "rectTop":I
    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mHeight:I

    iget v7, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    sub-int v2, v6, v7

    .line 106
    .local v2, "rectBottom":I
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v8, v5

    int-to-float v9, v4

    int-to-float v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/color/widget/ColorLoadingView;->mRectF:Landroid/graphics/RectF;

    .line 107
    sub-int v6, v4, v3

    int-to-float v6, v6

    div-float/2addr v6, v11

    int-to-float v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mRotationX:F

    .line 108
    sub-int v6, v2, v5

    int-to-float v6, v6

    div-float/2addr v6, v11

    int-to-float v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/color/widget/ColorLoadingView;->mRotationY:F

    .line 109
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    .line 110
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/color/widget/ColorLoadingView;->mRectF:Landroid/graphics/RectF;

    iget v8, p0, Lcom/color/widget/ColorLoadingView;->mInitAngle:I

    int-to-float v8, v8

    iget v9, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    add-float/2addr v8, v9

    const/high16 v9, 0x43200000    # 160.0f

    iget v10, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 112
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 113
    const/4 v6, 0x3

    new-array v0, v6, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/color/widget/ColorLoadingView;->mRotationX:F

    aput v7, v0, v6

    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mRotationX:F

    aput v6, v0, v12

    const/4 v6, 0x2

    const/high16 v7, 0x43480000    # 200.0f

    aput v7, v0, v6

    .line 114
    .local v0, "direction":[F
    new-instance v1, Landroid/graphics/EmbossMaskFilter;

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v1, v0, v6, v7, v11}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    .line 115
    .local v1, "emf":Landroid/graphics/EmbossMaskFilter;
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 116
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/color/widget/ColorLoadingView;->mStrokeWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 120
    iget-object v6, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/color/widget/ColorLoadingView;->mPaintColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/color/widget/ColorLoadingView;->mStartTime:J

    .line 122
    return-void
.end method

.method private preparePathAndAngle()V
    .locals 9

    .prologue
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/color/widget/ColorLoadingView;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    rem-long v2, v4, v6

    .line 142
    .local v2, "time":J
    const/4 v0, 0x0

    .line 143
    .local v0, "phase":F
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 144
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    invoke-static {v1, v4, v5}, Lcom/color/widget/ColorLoadingView;->constrain(FFF)F

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->PATHINTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v4, 0x44340000    # 720.0f

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/color/widget/ColorLoadingView;->mRotateAngle:F

    .line 146
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v1, v4, v5}, Lcom/color/widget/ColorLoadingView;->constrain(FFF)F

    move-result v0

    .line 148
    invoke-direct {p0, v0}, Lcom/color/widget/ColorLoadingView;->getFirstRotateRadian(F)F

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    .line 150
    :cond_0
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 151
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x3e8

    sub-long v6, v2, v6

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v1, v4, v5}, Lcom/color/widget/ColorLoadingView;->constrain(FFF)F

    move-result v0

    .line 155
    invoke-direct {p0, v0}, Lcom/color/widget/ColorLoadingView;->getSecondRotateRadian(F)F

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 159
    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/color/widget/ColorLoadingView;->mRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/color/widget/ColorLoadingView;->mInitAngle:I

    int-to-float v5, v5

    iget v6, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    add-float/2addr v5, v6

    const/high16 v6, 0x43200000    # 160.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 161
    new-instance v1, Lcom/color/widget/ColorLoadingView$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorLoadingView$1;-><init>(Lcom/color/widget/ColorLoadingView;)V

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLoadingView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getRotateMode()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/color/widget/ColorLoadingView;->preparePathAndAngle()V

    .line 129
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateAngle:F

    iget v1, p0, Lcom/color/widget/ColorLoadingView;->mRotationX:F

    iget v2, p0, Lcom/color/widget/ColorLoadingView;->mRotationY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 130
    iget-object v0, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    const/high16 v0, 0x43340000    # 180.0f

    iget v1, p0, Lcom/color/widget/ColorLoadingView;->mRotationX:F

    iget v2, p0, Lcom/color/widget/ColorLoadingView;->mRotationY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 132
    iget-object v0, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mWidth:I

    iget v1, p0, Lcom/color/widget/ColorLoadingView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorLoadingView;->setMeasuredDimension(II)V

    .line 138
    return-void
.end method

.method public setLoadingStatus(F)V
    .locals 6
    .param p1, "percentage"    # F

    .prologue
    .line 171
    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v0, v1, v2

    .line 172
    .local v0, "rotateRadian":F
    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 173
    iget-object v1, p0, Lcom/color/widget/ColorLoadingView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/color/widget/ColorLoadingView;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/color/widget/ColorLoadingView;->mInitAngle:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 174
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadingView;->invalidate()V

    .line 175
    return-void
.end method

.method public setRotateMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    iget v0, p0, Lcom/color/widget/ColorLoadingView;->mHalfInitAngle:I

    iput v0, p0, Lcom/color/widget/ColorLoadingView;->mInitAngle:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateAngle:F

    .line 205
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/color/widget/ColorLoadingView;->mRotateRadian:F

    .line 207
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorLoadingView;->mRotateMode:I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/widget/ColorLoadingView;->mStartTime:J

    .line 209
    invoke-virtual {p0}, Lcom/color/widget/ColorLoadingView;->invalidate()V

    .line 210
    return-void
.end method
