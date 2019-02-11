.class public Lcom/color/widget/ColorSimpleLock;
.super Landroid/view/View;
.source "ColorSimpleLock.java"


# instance fields
.field private final ADD_ANIMATION:I

.field private final CLEAR_ALL_ANIMATION:I

.field private final DELETE_ANIMATION:I

.field private final DRAW_ALL_ANIMATION:I

.field private final FAILED_ANIMATION:I

.field private final MORPHING_CIRCLE_TO_LINE_TIME:I

.field private final MORPHING_LINE_TO_CIRCLE_TIME:I

.field private final TRANSLATION_X_TIME:I

.field private animationMode:I

.field private ctl_lastDraw:Z

.field private fail_lastDraw:Z

.field private isFingerprintMode:Z

.field private ltc_lastDraw:Z

.field private mAddAnimator:Landroid/animation/ValueAnimator;

.field private mCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mCirclePadding:I

.field private mCirclesNumber:I

.field private mCirclesWidth:I

.field private mCodeImageStart:I

.field public mCodeNumber:I

.field private mContentWidth:I

.field private mDeleteAnimator:Landroid/animation/ValueAnimator;

.field private mDrawFailedAnimation:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFailedAnimator:Landroid/animation/Animator;

.field private mLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionX:F

.field private final mTranslationX_far:I

.field private final mTranslationX_near:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const v0, 0xc010492

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v2, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesWidth:I

    .line 44
    iput-object v3, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 49
    iput-boolean v2, p0, Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z

    .line 50
    iput-boolean v2, p0, Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z

    .line 51
    iput-boolean v2, p0, Lcom/color/widget/ColorSimpleLock;->fail_lastDraw:Z

    .line 54
    iput v2, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 55
    iput v5, p0, Lcom/color/widget/ColorSimpleLock;->DELETE_ANIMATION:I

    .line 56
    iput v6, p0, Lcom/color/widget/ColorSimpleLock;->ADD_ANIMATION:I

    .line 57
    const/4 v1, 0x3

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->CLEAR_ALL_ANIMATION:I

    .line 58
    const/4 v1, 0x4

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->DRAW_ALL_ANIMATION:I

    .line 59
    const/4 v1, 0x5

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->FAILED_ANIMATION:I

    .line 62
    const/16 v1, 0x6f

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mTranslationX_far:I

    .line 63
    const/16 v1, 0x1e

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mTranslationX_near:I

    .line 64
    const/16 v1, 0xc8

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->MORPHING_LINE_TO_CIRCLE_TIME:I

    .line 65
    const/16 v1, 0x96

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->MORPHING_CIRCLE_TO_LINE_TIME:I

    .line 66
    const/16 v1, 0x12c

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->TRANSLATION_X_TIME:I

    .line 69
    iput-boolean v2, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    .line 71
    iput-object v3, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 72
    iput-object v3, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 73
    iput-object v3, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 74
    iput v4, p0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    .line 75
    iput v4, p0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    .line 76
    iput v4, p0, Lcom/color/widget/ColorSimpleLock;->mTransitionX:F

    .line 77
    iput-boolean v2, p0, Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z

    .line 89
    sget-object v1, Loppo/R$styleable;->ColorSimpleLock:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    .line 91
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    .line 97
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    .line 98
    iget v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesWidth:I

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/color/widget/ColorSimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/widget/ColorSimpleLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/color/widget/ColorSimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    return p1
.end method

.method static synthetic access$202(Lcom/color/widget/ColorSimpleLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/color/widget/ColorSimpleLock;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/color/widget/ColorSimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/color/widget/ColorSimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z

    return p1
.end method

.method static synthetic access$502(Lcom/color/widget/ColorSimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->fail_lastDraw:Z

    return p1
.end method

.method static synthetic access$600(Lcom/color/widget/ColorSimpleLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/color/widget/ColorSimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSimpleLock;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z

    return p1
.end method

.method private createMorphingAnimationCircleToLine()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 536
    :goto_0
    return-object v0

    .line 501
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/widget/ColorSimpleLock$3;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$3;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 514
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/widget/ColorSimpleLock$4;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$4;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 536
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 501
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private createMorphingAnimationLineToCircle()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 492
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 447
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/widget/ColorSimpleLock$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$1;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/widget/ColorSimpleLock$2;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$2;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 492
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 446
    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3fcccccd    # 1.6f
    .end array-data
.end method

.method private drawAllCodeAnimation(Landroid/graphics/Canvas;I)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 131
    .local v4, "left":I
    const/4 v5, 0x0

    .line 132
    .local v5, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v7, v5, v2

    .line 133
    .local v7, "bottom":I
    const/4 v6, 0x0

    .line 135
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z

    if-eqz v2, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 150
    :cond_0
    return-void

    .line 140
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v6, v4, v2

    .line 142
    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 143
    invoke-direct/range {v2 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawCircle(Landroid/graphics/Canvas;IIII)V

    .line 145
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move v11, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/color/widget/ColorSimpleLock;->drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V

    .line 148
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v4, v6, v2

    .line 140
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIII)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    return-void
.end method

.method private drawCircleToLine(Landroid/graphics/Canvas;I)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 253
    .local v4, "left":I
    const/4 v5, 0x0

    .line 254
    .local v5, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v7, v5, v2

    .line 255
    .local v7, "bottom":I
    const/4 v6, 0x0

    .line 257
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z

    if-eqz v2, :cond_1

    .line 258
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 275
    :cond_0
    return-void

    .line 262
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v6, v4, v2

    .line 264
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 265
    invoke-direct/range {v2 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawCircle(Landroid/graphics/Canvas;IIII)V

    .line 267
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 268
    invoke-direct/range {v2 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawLine(Landroid/graphics/Canvas;IIII)V

    .line 270
    :cond_3
    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move v11, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/color/widget/ColorSimpleLock;->drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V

    .line 273
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v4, v6, v2

    .line 262
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private drawClearAllAnimation(Landroid/graphics/Canvas;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    .line 155
    iget v3, p0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 156
    .local v3, "left":I
    const/4 v2, 0x0

    .line 157
    .local v2, "top":I
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v5, v2, v0

    .line 158
    .local v5, "bottom":I
    const/4 v4, 0x0

    .line 159
    .local v4, "right":I
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z

    if-eqz v0, :cond_1

    .line 160
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 175
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v12, v0, :cond_0

    .line 165
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v4, v3, v0

    .line 166
    if-gt v12, p2, :cond_2

    .line 167
    iget v6, p0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    iget v7, p0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V

    .line 169
    :cond_2
    if-le v12, p2, :cond_3

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    move v9, v2

    move v10, v4

    move v11, v5

    .line 170
    invoke-direct/range {v6 .. v11}, Lcom/color/widget/ColorSimpleLock;->drawLine(Landroid/graphics/Canvas;IIII)V

    .line 172
    :cond_3
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v3, v4, v0

    .line 164
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private drawFailedAnimation(Landroid/graphics/Canvas;I)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    const/4 v6, 0x0

    .line 214
    iget v10, p0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 215
    .local v10, "left":I
    const/4 v2, 0x0

    .line 216
    .local v2, "top":I
    move v3, v10

    .line 217
    .local v3, "left_tmp":I
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v5, v2, v0

    .line 218
    .local v5, "bottom":I
    const/4 v4, 0x0

    .line 219
    .local v4, "right":I
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mTransitionX:F

    const/high16 v1, 0x42de0000    # 111.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v8, v0

    .line 220
    .local v8, "far_transition":F
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mTransitionX:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v11, v0

    .line 222
    .local v11, "near_transition":F
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->fail_lastDraw:Z

    if-eqz v0, :cond_1

    .line 223
    iput v6, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 224
    iput-boolean v6, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 226
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 248
    :cond_0
    return-void

    .line 229
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v9, v0, :cond_0

    .line 230
    packed-switch v9, :pswitch_data_0

    .line 244
    :goto_1
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v4, v3, v0

    .line 245
    iget v6, p0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    iget v7, p0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V

    .line 246
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int/2addr v0, v10

    iget v1, p0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v10, v0, v1

    .line 229
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 232
    :pswitch_0
    int-to-float v0, v10

    sub-float/2addr v0, v8

    float-to-int v3, v0

    .line 233
    goto :goto_1

    .line 235
    :pswitch_1
    int-to-float v0, v10

    sub-float/2addr v0, v11

    float-to-int v3, v0

    .line 236
    goto :goto_1

    .line 238
    :pswitch_2
    int-to-float v0, v10

    add-float/2addr v0, v11

    float-to-int v3, v0

    .line 239
    goto :goto_1

    .line 241
    :pswitch_3
    int-to-float v0, v10

    add-float/2addr v0, v8

    float-to-int v3, v0

    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawLine(Landroid/graphics/Canvas;IIII)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mLineDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    return-void
.end method

.method private drawLineToCircle(Landroid/graphics/Canvas;I)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 296
    .local v4, "left":I
    const/4 v5, 0x0

    .line 297
    .local v5, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v7, v5, v2

    .line 298
    .local v7, "bottom":I
    const/4 v6, 0x0

    .line 300
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z

    if-eqz v2, :cond_1

    .line 301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 318
    :cond_0
    return-void

    .line 305
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v6, v4, v2

    .line 307
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 308
    invoke-direct/range {v2 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawCircle(Landroid/graphics/Canvas;IIII)V

    .line 310
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 311
    invoke-direct/range {v2 .. v7}, Lcom/color/widget/ColorSimpleLock;->drawLine(Landroid/graphics/Canvas;IIII)V

    .line 313
    :cond_3
    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 314
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move v11, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/color/widget/ColorSimpleLock;->drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V

    .line 316
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v4, v2, v3

    .line 305
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private drawPreviousState(Landroid/graphics/Canvas;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .prologue
    .line 191
    iget v2, p0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 192
    .local v2, "left":I
    const/4 v3, 0x0

    .line 193
    .local v3, "top":I
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int v5, v3, v0

    .line 194
    .local v5, "bottom":I
    const/4 v4, 0x0

    .line 196
    .local v4, "right":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_2

    .line 197
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v4, v2, v0

    .line 198
    if-gt v6, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorSimpleLock;->drawCircle(Landroid/graphics/Canvas;IIII)V

    .line 201
    :cond_0
    if-le v6, p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorSimpleLock;->drawLine(Landroid/graphics/Canvas;IIII)V

    .line 204
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclePadding:I

    add-int v2, v4, v0

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    :cond_2
    return-void
.end method

.method private drawScaleCircle(Landroid/graphics/Canvas;IIIIFF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 322
    iget-object v4, p0, Lcom/color/widget/ColorSimpleLock;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 323
    add-int v4, p3, p4

    div-int/lit8 v0, v4, 0x2

    .line 324
    .local v0, "centerX":I
    add-int v4, p2, p5

    div-int/lit8 v1, v4, 0x2

    .line 325
    .local v1, "centerY":I
    iget v4, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p6

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 326
    .local v2, "x_retract":I
    iget v4, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, p7

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 327
    .local v3, "y_retract":I
    sub-int p3, v0, v2

    .line 328
    add-int p4, v0, v2

    .line 329
    sub-int p2, v1, v3

    .line 330
    add-int p5, v1, v3

    .line 331
    iget-object v4, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object v4, p0, Lcom/color/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    return-void
.end method


# virtual methods
.method public createFailedAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 545
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 603
    :goto_0
    return-object v0

    .line 548
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 549
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/color/widget/ColorSimpleLock$5;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$5;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 562
    new-instance v1, Lcom/color/widget/ColorSimpleLock$6;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorSimpleLock$6;-><init>(Lcom/color/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 602
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 548
    nop

    :array_0
    .array-data 4
        0x0
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public getAddAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationLineToCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationCircleToLine()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getFailedAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/color/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    packed-switch v0, :pswitch_data_0

    .line 122
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 126
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawCircleToLine(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawLineToCircle(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawClearAllAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawAllCodeAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 119
    :pswitch_4
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSimpleLock;->drawFailedAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mContentWidth:I

    .line 339
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mContentWidth:I

    iget v1, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 340
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mContentWidth:I

    iget v1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawableHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorSimpleLock;->setMeasuredDimension(II)V

    .line 341
    return-void
.end method

.method public setAllCode(Z)V
    .locals 2
    .param p1, "drawAll"    # Z

    .prologue
    const/4 v1, 0x3

    .line 361
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    if-lt v0, v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-eqz p1, :cond_0

    .line 365
    const/4 v0, 0x4

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 366
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesNumber:I

    .line 367
    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 368
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationLineToCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 369
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setClearAll(Z)V
    .locals 3
    .param p1, "clear"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, -0x1

    .line 393
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    if-gt v0, v2, :cond_0

    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iput v2, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 397
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCirclesNumber:I

    .line 398
    iput v1, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 399
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationCircleToLine()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 400
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setDeleteLast(Z)V
    .locals 3
    .param p1, "delete"    # Z

    .prologue
    const/4 v2, -0x1

    .line 379
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 383
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    if-lt v0, v2, :cond_2

    .line 384
    const/4 v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 385
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationCircleToLine()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 386
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 388
    :cond_2
    iput v2, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    goto :goto_0
.end method

.method public setFailed(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    .line 376
    return-void
.end method

.method public setFingerprintRecognition(Z)V
    .locals 0
    .param p1, "isFingerprint"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z

    .line 210
    return-void
.end method

.method public setOneCode(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    .line 344
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-eqz v0, :cond_1

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    .line 350
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 354
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->animationMode:I

    .line 355
    iget v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorSimpleLock;->mCodeNumber:I

    .line 356
    invoke-direct {p0}, Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationLineToCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 405
    iput p1, p0, Lcom/color/widget/ColorSimpleLock;->mScaleX:F

    .line 406
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .prologue
    .line 410
    iput p1, p0, Lcom/color/widget/ColorSimpleLock;->mScaleY:F

    .line 411
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0
    .param p1, "translationX"    # F

    .prologue
    .line 415
    iput p1, p0, Lcom/color/widget/ColorSimpleLock;->mTransitionX:F

    .line 416
    return-void
.end method

.method public translationValueForScale(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "output":F
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 433
    sub-float v1, p1, v2

    neg-float v1, v1

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    add-float v0, v1, v2

    .line 439
    :goto_0
    return v0

    .line 434
    :cond_0
    cmpl-float v1, p1, v3

    if-lez v1, :cond_1

    .line 435
    const v1, 0x4047ae14    # 3.12f

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    const v2, 0x3da3d70a    # 0.08f

    sub-float v0, v1, v2

    goto :goto_0

    .line 437
    :cond_1
    const v1, 0x3f19999a    # 0.6f

    sub-float v1, p1, v1

    const v2, 0x3fe66666    # 1.8f

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    const v2, 0x3df5c28f    # 0.12f

    add-float v0, v1, v2

    goto :goto_0
.end method

.method public translationValueForTranslant(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 420
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 421
    const/high16 v0, -0x40000000    # -2.0f

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 425
    :goto_0
    return v0

    .line 422
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 423
    const v0, 0x3fa66666    # 1.3f

    sub-float v0, p1, v0

    mul-float/2addr v0, p1

    goto :goto_0

    .line 425
    :cond_1
    const v0, 0x3f19999a    # 0.6f

    sub-float v0, p1, v0

    const v1, 0x406ccccd    # 3.7f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    const v1, 0x3e3851ec    # 0.18f

    add-float/2addr v0, v1

    goto :goto_0
.end method
