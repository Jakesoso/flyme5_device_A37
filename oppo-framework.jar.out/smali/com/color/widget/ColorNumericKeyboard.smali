.class public Lcom/color/widget/ColorNumericKeyboard;
.super Landroid/view/View;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;,
        Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;,
        Lcom/color/widget/ColorNumericKeyboard$Cell;
    }
.end annotation


# static fields
.field private static final ANIMTIME:I = 0x96

.field private static final ELEVEN:I = 0xb

.field public static final EMPTY_NINE_AND_ELEVEN:I = 0x1

.field private static final ENDALPHA:I = 0x26

.field private static final NINE:I = 0x9

.field public static final RETAIN_ELEVEN:I = 0x3

.field public static final RETAIN_NINE:I = 0x2

.field private static final STARTALPHA:I = 0x4c

.field private static final TEN:I = 0xa


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgHeight:I

.field private mBgWidth:I

.field private mCircleDiameter:I

.field private mCircleRadius:I

.field private mEnableHapticFeedback:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mIndex:I

.field private mLevelSpace:I

.field private mNeedDoFade:Z

.field private mNeedDoFadeAfterShow:Z

.field private mOnItemClickListener:Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedColor:I

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

.field private mTouchUpListener:Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

.field private mType:I

.field private mVerticalSpace:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorNumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const v0, 0xc010496

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorNumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 50
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    .line 51
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 52
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 61
    iput v5, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    .line 62
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mOnItemClickListener:Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

    .line 63
    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchUpListener:Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

    .line 65
    iput v5, p0, Lcom/color/widget/ColorNumericKeyboard;->mType:I

    .line 73
    iput-boolean v6, p0, Lcom/color/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 143
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .line 144
    .local v1, "displayWidth":I
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    :goto_0
    sget-object v3, Loppo/R$styleable;->ColorNumericKeyboard:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v1}, Lcom/color/widget/ColorNumericKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    .line 155
    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v1}, Lcom/color/widget/ColorNumericKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mLevelSpace:I

    .line 157
    const/4 v3, 0x4

    invoke-static {v0, v3, v1, v1}, Lcom/color/widget/ColorNumericKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mVerticalSpace:I

    .line 159
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mPressedColor:I

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    return-void

    .line 147
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/color/widget/ColorNumericKeyboard;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorNumericKeyboard;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->changeBackagegroundAlpha(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/widget/ColorNumericKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorNumericKeyboard;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/color/widget/ColorNumericKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorNumericKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/color/widget/ColorNumericKeyboard;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorNumericKeyboard;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private changeBackagegroundAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    invoke-virtual {p0}, Lcom/color/widget/ColorNumericKeyboard;->invalidate()V

    .line 356
    return-void
.end method

.method private checkForNewHit(FF)Lcom/color/widget/ColorNumericKeyboard$Cell;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-direct {p0, p2}, Lcom/color/widget/ColorNumericKeyboard;->getRowHit(F)I

    move-result v1

    .line 377
    .local v1, "rowHit":I
    if-gez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v2

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->getColumnHit(F)I

    move-result v0

    .line 381
    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    .line 384
    invoke-static {v1, v0}, Lcom/color/widget/ColorNumericKeyboard$Cell;->of(II)Lcom/color/widget/ColorNumericKeyboard$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private detectAndAddHit(FF)Lcom/color/widget/ColorNumericKeyboard$Cell;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorNumericKeyboard;->checkForNewHit(FF)Lcom/color/widget/ColorNumericKeyboard$Cell;

    move-result-object v0

    .line 372
    .local v0, "cell":Lcom/color/widget/ColorNumericKeyboard$Cell;
    return-object v0
.end method

.method private fade()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 280
    iget-boolean v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFade:Z

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iput-boolean v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z

    .line 292
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFade:Z

    .line 294
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method private getCenterXForColumn(I)F
    .locals 4
    .param p1, "Column"    # I

    .prologue
    .line 359
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mLevelSpace:I

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 360
    .local v1, "squareWidth":F
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaddingLeft:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 361
    .local v0, "centerX":F
    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 4
    .param p1, "Row"    # I

    .prologue
    .line 365
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 366
    .local v1, "squareHeight":F
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaddingTop:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 367
    .local v0, "centerY":F
    return v0
.end method

.method private getColumnHit(F)I
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 399
    iget v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v4, p0, Lcom/color/widget/ColorNumericKeyboard;->mLevelSpace:I

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 400
    .local v2, "squareWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 401
    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 402
    .local v0, "hitLeft":F
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_0

    add-float v3, v0, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 406
    .end local v0    # "hitLeft":F
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 400
    .restart local v0    # "hitLeft":F
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 167
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 174
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 168
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 169
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 170
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 172
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private getRowHit(F)I
    .locals 5
    .param p1, "y"    # F

    .prologue
    .line 388
    iget v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    iget v4, p0, Lcom/color/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 389
    .local v2, "squareHeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 390
    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 391
    .local v0, "hitTop":F
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_0

    add-float v3, v0, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 395
    .end local v0    # "hitTop":F
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 389
    .restart local v0    # "hitTop":F
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "hitTop":F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, -0x1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 247
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 248
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->detectAndAddHit(FF)Lcom/color/widget/ColorNumericKeyboard$Cell;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    .line 249
    iget-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    invoke-direct {p0, v2}, Lcom/color/widget/ColorNumericKeyboard;->setTouchIndex(Lcom/color/widget/ColorNumericKeyboard$Cell;)I

    .line 251
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mOnItemClickListener:Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mOnItemClickListener:Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

    invoke-interface {v2}, Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;->OnItemTouch()V

    .line 254
    :cond_0
    iget-boolean v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/color/widget/ColorNumericKeyboard;->setTouchFeedback()V

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    const/16 v3, 0x4c

    const/16 v4, 0x26

    invoke-direct {p0, v2, v3, v4}, Lcom/color/widget/ColorNumericKeyboard;->initAnimator(Landroid/animation/ValueAnimator;II)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 259
    invoke-direct {p0}, Lcom/color/widget/ColorNumericKeyboard;->show()V

    .line 260
    invoke-virtual {p0}, Lcom/color/widget/ColorNumericKeyboard;->invalidate()V

    .line 261
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/color/widget/ColorNumericKeyboard;->initAnimator(Landroid/animation/ValueAnimator;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 238
    invoke-direct {p0}, Lcom/color/widget/ColorNumericKeyboard;->fade()V

    .line 239
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchUpListener:Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchUpListener:Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

    invoke-interface {v0}, Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;->OnTouchUp()V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorNumericKeyboard;->invalidate()V

    .line 243
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgHeight:I

    .line 188
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgWidth:I

    .line 190
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleRadius:I

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    return-void
.end method

.method private initAnimator(Landroid/animation/ValueAnimator;II)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "startAlpha"    # I
    .param p3, "endAlpha"    # I

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 311
    new-instance v0, Lcom/color/widget/ColorNumericKeyboard$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorNumericKeyboard$1;-><init>(Lcom/color/widget/ColorNumericKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    new-instance v0, Lcom/color/widget/ColorNumericKeyboard$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/color/widget/ColorNumericKeyboard$2;-><init>(Lcom/color/widget/ColorNumericKeyboard;II)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 350
    :cond_0
    return-object p1
.end method

.method private isMultiPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 229
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 230
    .local v0, "pointerId":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOrientationPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTouchFeedback()V
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorNumericKeyboard;->performHapticFeedback(I)Z

    .line 234
    return-void
.end method

.method private setTouchIndex(Lcom/color/widget/ColorNumericKeyboard$Cell;)I
    .locals 5
    .param p1, "cell"    # Lcom/color/widget/ColorNumericKeyboard$Cell;

    .prologue
    const/16 v4, 0x9

    .line 265
    invoke-virtual {p1}, Lcom/color/widget/ColorNumericKeyboard$Cell;->getRow()I

    move-result v1

    .line 266
    .local v1, "row":I
    invoke-virtual {p1}, Lcom/color/widget/ColorNumericKeyboard$Cell;->getColumn()I

    move-result v0

    .line 267
    .local v0, "column":I
    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v0

    iput v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    .line 268
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 269
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 270
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    .line 272
    :cond_1
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 273
    iput v4, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    .line 276
    :cond_2
    iget v2, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    return v2
.end method

.method private show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFade:Z

    .line 298
    iput-boolean v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z

    .line 299
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 301
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public getTouchIndex()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    if-ltz v0, :cond_0

    .line 491
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mIndex:I

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 412
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 414
    iput-object v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 418
    iput-object v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 421
    iput-object v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_3

    .line 424
    iput-object v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    .line 426
    :cond_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "radius":I
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_0

    .line 433
    iget v9, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleRadius:I

    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x4c

    mul-int/2addr v8, v9

    const/16 v9, 0x26

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v3, v8, v9

    .line 436
    :cond_0
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v8, :cond_1

    .line 437
    iget v3, p0, Lcom/color/widget/ColorNumericKeyboard;->mCircleRadius:I

    .line 439
    :cond_1
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    if-eqz v8, :cond_2

    .line 440
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    iget v8, v8, Lcom/color/widget/ColorNumericKeyboard$Cell;->column:I

    invoke-direct {p0, v8}, Lcom/color/widget/ColorNumericKeyboard;->getCenterXForColumn(I)F

    move-result v5

    .line 441
    .local v5, "startX":F
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    iget v8, v8, Lcom/color/widget/ColorNumericKeyboard$Cell;->row:I

    invoke-direct {p0, v8}, Lcom/color/widget/ColorNumericKeyboard;->getCenterYForRow(I)F

    move-result v6

    .line 442
    .local v6, "startY":F
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchCell:Lcom/color/widget/ColorNumericKeyboard$Cell;

    invoke-direct {p0, v8}, Lcom/color/widget/ColorNumericKeyboard;->setTouchIndex(Lcom/color/widget/ColorNumericKeyboard$Cell;)I

    move-result v1

    .line 443
    .local v1, "index":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 444
    int-to-float v8, v3

    iget-object v9, p0, Lcom/color/widget/ColorNumericKeyboard;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 448
    .end local v1    # "index":I
    .end local v5    # "startX":F
    .end local v6    # "startY":F
    :cond_2
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 449
    iget v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewWidth:I

    iget v9, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 450
    .local v2, "left":I
    iget v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgWidth:I

    add-int v4, v2, v8

    .line 451
    .local v4, "right":I
    iget v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewHeight:I

    iget v9, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    .line 452
    .local v7, "top":I
    iget v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgHeight:I

    add-int v0, v7, v8

    .line 453
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2, v7, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    iget-object v8, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 456
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v7    # "top":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/color/widget/ColorNumericKeyboard;->init()V

    .line 180
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgWidth:I

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mLevelSpace:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewWidth:I

    .line 181
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mBgHeight:I

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mVerticalSpace:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewHeight:I

    .line 182
    iget v0, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewWidth:I

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->setMeasuredDimension(II)V

    .line 183
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->isMultiPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :goto_0
    :pswitch_0
    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 217
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 220
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/color/widget/ColorNumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    return-void
.end method

.method public setItemTouchListener(Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;)V
    .locals 0
    .param p1, "itemClick"    # Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/color/widget/ColorNumericKeyboard;->mOnItemClickListener:Lcom/color/widget/ColorNumericKeyboard$OnItemTouchListener;

    .line 476
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/color/widget/ColorNumericKeyboard;->mEnableHapticFeedback:Z

    .line 502
    return-void
.end method

.method public setTouchUpListener(Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;)V
    .locals 0
    .param p1, "touchUp"    # Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/color/widget/ColorNumericKeyboard;->mTouchUpListener:Lcom/color/widget/ColorNumericKeyboard$OnTouchUpListener;

    .line 484
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/color/widget/ColorNumericKeyboard;->mType:I

    .line 472
    return-void
.end method
