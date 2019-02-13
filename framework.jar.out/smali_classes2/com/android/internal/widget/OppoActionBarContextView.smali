.class public Lcom/android/internal/widget/OppoActionBarContextView;
.super Lcom/android/internal/widget/ActionBarContextView;
.source "OppoActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;,
        Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_ANIMATOR:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:OppoActionBarContextView"


# instance fields
.field private mActionBarHeight:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDuration:I

.field private final mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mHasTranslationY:Z

.field private mHeightMeasureSpec:I

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mHideListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIdCloseButton:I

.field private mInLayout:Z

.field private mInMeasure:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsOppoStyle:Z

.field private mLayoutRight:I

.field private final mScreenLocation:[I

.field private mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingFlags:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStatusBarHeight:I

.field private mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

.field private mUserAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

.field private mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHasTranslationY:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    .line 75
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInMeasure:Z

    .line 77
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInLayout:Z

    .line 78
    iput v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    .line 79
    iput v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    .line 80
    iput v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 81
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWidthMeasureSpec:I

    .line 82
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHeightMeasureSpec:I

    .line 83
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mLayoutRight:I

    .line 84
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIdCloseButton:I

    .line 85
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 87
    new-instance v2, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Z)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 88
    new-instance v2, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Z)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    .line 91
    new-instance v2, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    const-string/jumbo v3, "with"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    .line 92
    new-instance v2, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    const-string v3, "after"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    .line 93
    new-instance v2, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    const-string v3, "before"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAnimations:Ljava/util/List;

    .line 95
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 116
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v2, :cond_0

    .line 135
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0d0414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    .line 123
    sget-object v2, Landroid/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 129
    .local v1, "b":Landroid/content/res/TypedArray;
    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 130
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    const v2, 0xc0204c8

    invoke-static {p1, v2}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIdCloseButton:I

    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAnimations:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAnimations:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAnimations:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getEndingAlpha(I)I
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 560
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEndingY(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getViewHeight()I

    move-result v0

    neg-int v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getStartingAlpha(I)I
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 556
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStartingY(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getViewHeight()I

    move-result v0

    neg-int v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getUserAnimListener(I)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 536
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_0
.end method

.method private getViewHeight()I
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getHeight()I

    move-result v0

    .line 500
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 501
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 503
    :cond_0
    return v0
.end method

.method private initAnimator(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 490
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 491
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 492
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 493
    check-cast v0, Landroid/view/View;

    .end local v0    # "target":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_0
    return-void
.end method

.method private isApproximate(III)Z
    .locals 1
    .param p1, "v1"    # I
    .param p2, "v2"    # I
    .param p3, "offset"    # I

    .prologue
    .line 564
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTranslationY()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHasTranslationY:Z

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 570
    .local v0, "getRect":Z
    if-nez v0, :cond_1

    .line 587
    .end local v0    # "getRect":Z
    :cond_0
    :goto_0
    return v1

    .line 573
    .restart local v0    # "getRect":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->getLocationOnScreen([I)V

    .line 580
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->isApproximate(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->isApproximate(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    .end local v0    # "getRect":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playAlphaAnimator(Landroid/animation/AnimatorSet;IZ)Landroid/animation/AnimatorSet$Builder;
    .locals 7
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "visibility"    # I
    .param p3, "translationY"    # Z

    .prologue
    .line 507
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getStartingAlpha(I)I

    move-result v2

    .line 508
    .local v2, "starting":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getEndingAlpha(I)I

    move-result v1

    .line 511
    .local v1, "ending":I
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setAlpha(F)V

    .line 512
    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 513
    .local v0, "anim":Landroid/animation/Animator;
    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 514
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    return-object v3
.end method

.method private withTransAnimator(Landroid/animation/AnimatorSet$Builder;IZ)V
    .locals 7
    .param p1, "b"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "visibility"    # I
    .param p3, "translationY"    # Z

    .prologue
    .line 519
    if-eqz p3, :cond_0

    .line 520
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getStartingY(I)I

    move-result v2

    .line 521
    .local v2, "starting":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getEndingY(I)I

    move-result v1

    .line 524
    .local v1, "ending":I
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setTranslationY(F)V

    .line 525
    const-string/jumbo v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 526
    .local v0, "anim":Landroid/animation/Animator;
    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 527
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 533
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "ending":I
    .end local v2    # "starting":I
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public addAfterAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public addAfterAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    return-void
.end method

.method public addAfterAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAfterAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public addBeforeAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method public addBeforeAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    return-void
.end method

.method public addBeforeAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserBeforeAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public addWithAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method public addWithAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    return-void
.end method

.method public addWithAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserWithAnimation:Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 9
    .param p1, "visibility"    # I

    .prologue
    const/4 v8, 0x0

    .line 281
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v4, :cond_0

    .line 282
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 314
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 286
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 291
    :cond_2
    const/4 v0, 0x0

    .line 292
    .local v0, "alpha":I
    if-nez p1, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    .line 298
    :cond_3
    const/4 v0, 0x1

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->needTranslationY()Z

    move-result v3

    .line 301
    .local v3, "translationY":Z
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 302
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->playAlphaAnimator(Landroid/animation/AnimatorSet;IZ)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 303
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->withTransAnimator(Landroid/animation/AnimatorSet$Builder;IZ)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_5

    .line 305
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const-string v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    int-to-float v7, v0

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 306
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 307
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 309
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-virtual {p0, v1, v8}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 310
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->getUserAnimListener(I)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 223
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v4, :cond_0

    .line 224
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 276
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_4

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 230
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    .line 231
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/OppoActionBarContextView;->addView(Landroid/view/View;)V

    .line 236
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIdCloseButton:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "closeButton":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    new-instance v4, Lcom/android/internal/widget/OppoActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/widget/OppoActionBarContextView$1;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 245
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 248
    :cond_2
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 249
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 251
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 253
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 254
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 255
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitActionBar:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 259
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    const v5, 0xc0204c2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorOptionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    .line 261
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    if-eqz v4, :cond_5

    .line 262
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v4}, Lcom/color/widget/ColorOptionMenuView;->getPresenter()Lcom/android/internal/view/menu/BaseMenuPresenter;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorOptionMenuPresenter;

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    .line 272
    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 275
    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimateInOnLayout:Z

    goto/16 :goto_0

    .line 232
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/OppoActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 264
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_5
    new-instance v4, Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/color/widget/ColorOptionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    .line 265
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorOptionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorOptionMenuView;

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    .line 266
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorOptionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method makeInAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/color/animation/ColorFakeAnimator;

    invoke-direct {v0}, Lcom/color/animation/ColorFakeAnimator;-><init>()V

    goto :goto_0
.end method

.method makeOutAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 327
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/color/animation/ColorFakeAnimator;

    invoke-direct {v0}, Lcom/color/animation/ColorFakeAnimator;-><init>()V

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 167
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInMeasure:Z

    if-nez v1, :cond_1

    .line 168
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    .line 177
    .end local p2    # "availableWidth":I
    :goto_0
    return p2

    .line 171
    .restart local p2    # "availableWidth":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne p1, v1, :cond_3

    .line 172
    iget v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mContentHeight:I

    if-lez v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mContentHeight:I

    .line 173
    .local v0, "maxHeight":I
    :goto_1
    iget v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWidthMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 172
    .end local v0    # "maxHeight":I
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHeightMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 177
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 370
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 371
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 373
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_1

    .line 370
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 376
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 342
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 361
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 362
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 363
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 364
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 361
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 367
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 379
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 380
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 382
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_1

    .line 379
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 385
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->onAnimationStart(Landroid/animation/Animator;)V

    .line 336
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 352
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 353
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 355
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .line 352
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 358
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 156
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->onLayout(ZIIII)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInLayout:Z

    .line 160
    iput p4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mLayoutRight:I

    .line 161
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->onLayout(ZIIII)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContextView;->onMeasure(II)V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInMeasure:Z

    .line 147
    iput p1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWidthMeasureSpec:I

    .line 148
    iput p2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHeightMeasureSpec:I

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContextView;->onMeasure(II)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInMeasure:Z

    goto :goto_0
.end method

.method public playUserAnimators(Landroid/animation/AnimatorSet$Builder;Z)V
    .locals 12
    .param p1, "b"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "flag"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 444
    iget-object v9, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mUserAnimations:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;

    .line 445
    .local v6, "userAnim":Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;
    invoke-virtual {v6}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimList()Ljava/util/List;

    move-result-object v1

    .line 446
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 447
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 448
    .local v0, "anim":Landroid/animation/Animator;
    invoke-direct {p0, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->initAnimator(Landroid/animation/Animator;)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 450
    const-string v9, "ActionBarTab:OppoActionBarContextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "play "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v0, v10}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getAnimWrapperList()Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "animWrapList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 454
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/animation/ColorAnimatorWrapper;

    .line 455
    .local v2, "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    invoke-virtual {v2}, Lcom/color/animation/ColorAnimatorWrapper;->initialize()V

    .line 456
    invoke-virtual {v2}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 457
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 458
    const-string v9, "ActionBarTab:OppoActionBarContextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "play "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v0, v10}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_1

    .line 461
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v2    # "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    .end local v3    # "animWrapList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    .end local v6    # "userAnim":Lcom/android/internal/widget/OppoActionBarContextView$UserAnimator;
    :cond_2
    if-eqz p2, :cond_6

    move v5, v7

    .line 462
    .local v5, "updateMode":I
    :goto_2
    iget-object v9, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    if-eqz v9, :cond_3

    .line 463
    iget-object v9, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v9, v5}, Lcom/color/widget/ColorOptionMenuView;->setMenuUpdateMode(I)V

    .line 465
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    if-eqz v9, :cond_4

    .line 466
    iget-object v9, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-virtual {v9, v8, p1}, Lcom/color/widget/ColorOptionMenuPresenter;->updateMenuView(ZLandroid/animation/AnimatorSet$Builder;)V

    .line 468
    :cond_4
    iget-object v8, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    if-eqz v8, :cond_5

    .line 469
    iget-object v8, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v8, v7}, Lcom/color/widget/ColorOptionMenuView;->setMenuUpdateMode(I)V

    .line 471
    :cond_5
    return-void

    .end local v5    # "updateMode":I
    :cond_6
    move v5, v8

    .line 461
    goto :goto_2
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInLayout:Z

    if-nez v0, :cond_1

    .line 183
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 187
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mLayoutRight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 p2, v0, 0x2

    .line 188
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public setShowingFlags(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    .line 479
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 484
    :cond_0
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "split"    # Z

    .prologue
    .line 196
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mIsOppoStyle:Z

    if-nez v2, :cond_1

    .line 197
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 p1, 0x1

    .line 204
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_3

    .line 207
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 209
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 212
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitActionBar:Z

    goto :goto_0
.end method
