.class public Landroid/widget/ColorListView;
.super Landroid/widget/ListView;
.source "ColorListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;,
        Landroid/widget/ColorListView$CheckableListener;,
        Landroid/widget/ColorListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = false

.field private static final INVALID_SCROLL_CHOICE_POSITION:I = -0x2

.field private static final SCROLL_CHOICE_SCROLL_DELAY:J = 0x32L

.field public static final SCROLL_HORIZONTAL_LTR:I = 0x1

.field public static final SCROLL_HORIZONTAL_NULL:I = 0x0

.field public static final SCROLL_HORIZONTAL_RTL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorListView"


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

.field private mChoiceModeByLongPressEnabled:Z

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDelayedScroll:Ljava/lang/Runnable;

.field private mDividerItemHeight:I

.field private mFillDivider:Z

.field private mFirstPos:I

.field private mFlag:Z

.field private mHasMoved:Z

.field private mIsNotDrawFirstLine:Z

.field private mIsNotifyCheckedStateEnabled:Z

.field private mItemBottom:I

.field private mItemCount:I

.field private mItemToAppear:Z

.field private mItemTop:I

.field private mLastPos:I

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mPointY:F

.field private mPositionOffset:F

.field private mReferPosition:I

.field private mRightOffset:I

.field private mScrollDirection:I

.field private mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

.field private mSpringEnabled:Z

.field private mUpScroll:Z

.field private mViewPager:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const v0, 0xc010400

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v5, p0, Landroid/widget/ColorListView;->mIsNotDrawFirstLine:Z

    .line 57
    iput-boolean v6, p0, Landroid/widget/ColorListView;->mIsNotifyCheckedStateEnabled:Z

    .line 58
    iput-boolean v5, p0, Landroid/widget/ColorListView;->mChoiceModeByLongPressEnabled:Z

    .line 66
    iput-boolean v6, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    .line 67
    iput v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    .line 68
    iput v4, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    .line 69
    iput-boolean v5, p0, Landroid/widget/ColorListView;->mFlag:Z

    .line 70
    iput-object v7, p0, Landroid/widget/ColorListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 73
    iput-boolean v6, p0, Landroid/widget/ColorListView;->mUpScroll:Z

    .line 74
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ColorListView;->mLastSite:I

    .line 75
    iput-boolean v5, p0, Landroid/widget/ColorListView;->mHasMoved:Z

    .line 76
    iput-object v7, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    .line 77
    new-instance v4, Landroid/widget/ColorListView$1;

    invoke-direct {v4, p0}, Landroid/widget/ColorListView$1;-><init>(Landroid/widget/ColorListView;)V

    iput-object v4, p0, Landroid/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    .line 419
    iput-boolean v6, p0, Landroid/widget/ColorListView;->mItemToAppear:Z

    .line 421
    iput v5, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    .line 107
    sget-object v4, Loppo/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 112
    .local v3, "springEnabled":Z
    invoke-virtual {p0, v3}, Landroid/widget/ColorListView;->setSpringEnabled(Z)V

    .line 114
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 118
    .local v2, "fillDivider":Z
    invoke-virtual {p0, v2}, Landroid/widget/ColorListView;->setFillDivider(Z)V

    .line 120
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 121
    .local v1, "dividerItemHeight":I
    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050440

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ColorListView;->setDividerItemHeight(I)V

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050437

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/ColorListView;->mLeftOffset:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050438

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/ColorListView;->mRightOffset:I

    .line 134
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v4, p0, Landroid/widget/ColorListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 135
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Landroid/widget/ColorListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ColorListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorListView;

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/widget/ColorListView;->mUpScroll:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ColorListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ColorListView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ColorListView;->alignBottomChild(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ColorListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ColorListView;

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/widget/ColorListView;->mIsNotifyCheckedStateEnabled:Z

    return v0
.end method

.method private alignBottomChild(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ColorListView;->alignBottomChild(II)V

    .line 291
    return-void
.end method

.method private alignBottomChild(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    .line 285
    .local v1, "totalHeight":I
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 286
    .local v0, "childHeight":I
    sub-int v2, v1, v0

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Landroid/widget/ColorListView;->setSelectionFromTop(II)V

    .line 287
    return-void
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 295
    .local v3, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 296
    .local v6, "n":I
    invoke-virtual {p0, v3, v6}, Landroid/widget/ColorListView;->pointToPosition(II)I

    move-result v0

    .line 297
    .local v0, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v7, v8

    .line 298
    .local v7, "xRaw":I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 300
    .local v2, "location":[I
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {p0, v8}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0xc020001

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Landroid/widget/ColorListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 302
    iget-object v8, p0, Landroid/widget/ColorListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    aget v8, v2, v9

    iget v10, p0, Landroid/widget/ColorListView;->mLeftOffset:I

    sub-int v4, v8, v10

    .line 310
    .local v4, "mLeftBorder":I
    aget v8, v2, v9

    iget v10, p0, Landroid/widget/ColorListView;->mRightOffset:I

    add-int v5, v8, v10

    .line 311
    .local v5, "mRightBorder":I
    iget-object v8, p0, Landroid/widget/ColorListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    if-le v7, v4, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getHeaderViewsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v0, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getCount()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v8, v10

    if-ge v0, v8, :cond_1

    .line 314
    const/4 v8, 0x1

    .line 319
    .end local v4    # "mLeftBorder":I
    .end local v5    # "mRightBorder":I
    :goto_0
    return v8

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_0

    .line 305
    iput-boolean v9, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    :cond_0
    move v8, v9

    .line 307
    goto :goto_0

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "mLeftBorder":I
    .restart local v5    # "mRightBorder":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_2

    .line 317
    iput-boolean v9, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    :cond_2
    move v8, v9

    .line 319
    goto :goto_0
.end method

.method private isItemCheckable(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/ColorListView$CheckableListener;->isItemCheckable(Landroid/view/View;IJ)Z

    move-result v0

    .line 600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performUncheckableItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->playSoundEffect(I)V

    .line 586
    iget-object v0, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ColorListView$CheckableListener;->onUncheckableItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    move v0, v6

    .line 593
    :cond_1
    return v0
.end method

.method private recomputePositionInParent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 457
    iget v2, p0, Landroid/widget/ColorListView;->mItemTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ColorListView;->mItemTop:I

    .line 458
    iget v2, p0, Landroid/widget/ColorListView;->mItemBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ColorListView;->mItemBottom:I

    .line 459
    iget-object v2, p0, Landroid/widget/ColorListView;->mViewPager:Landroid/view/View;

    if-nez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 466
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 467
    check-cast v0, Landroid/view/View;

    .line 468
    .local v0, "parent":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/ColorListView;->mViewPager:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    invoke-direct {p0, v0}, Landroid/widget/ColorListView;->recomputePositionInParent(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected calChildrenLeftPosition(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "childrenLeft"    # I

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 513
    move v0, p2

    .line 514
    .local v0, "childLeft":I
    iget v2, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 520
    iget v2, p0, Landroid/widget/ColorListView;->mReferPosition:I

    iget v3, p0, Landroid/widget/ColorListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    iget v4, p0, Landroid/widget/ColorListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 521
    .local v1, "count":I
    iget v2, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 522
    iget-boolean v2, p0, Landroid/widget/ColorListView;->mItemToAppear:Z

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Landroid/widget/ColorListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ColorListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 559
    .end local v1    # "count":I
    :cond_0
    :goto_0
    return v0

    .line 526
    .restart local v1    # "count":I
    :cond_1
    iget v2, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 527
    iput v7, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    .line 529
    :cond_2
    iget-object v2, p0, Landroid/widget/ColorListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 532
    :cond_3
    iget v2, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 533
    iget-boolean v2, p0, Landroid/widget/ColorListView;->mItemToAppear:Z

    if-eqz v2, :cond_4

    .line 534
    iget-object v2, p0, Landroid/widget/ColorListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ColorListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 537
    :cond_4
    iget v2, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 538
    iput v6, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    .line 540
    :cond_5
    iget-object v2, p0, Landroid/widget/ColorListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 544
    .end local v1    # "count":I
    :cond_6
    iget v2, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 550
    iget v2, p0, Landroid/widget/ColorListView;->mReferPosition:I

    iget v3, p0, Landroid/widget/ColorListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    iget v4, p0, Landroid/widget/ColorListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 551
    .restart local v1    # "count":I
    iget v2, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 552
    iget-object v2, p0, Landroid/widget/ColorListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto/16 :goto_0

    .line 554
    :cond_7
    iget v2, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 555
    iget-object v2, p0, Landroid/widget/ColorListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Landroid/widget/ColorListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 208
    const/4 v6, 0x0

    .line 209
    .local v6, "isFullScreen":Z
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getChildCount()I

    move-result v1

    .line 210
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getScrollY()I

    move-result v9

    .line 211
    .local v9, "scrollY":I
    const/4 v7, 0x0

    .line 212
    .local v7, "lastchild":Landroid/view/View;
    if-lez v1, :cond_0

    .line 213
    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p0, v11}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 216
    :cond_0
    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getHeight()I

    move-result v12

    if-lt v11, v12, :cond_2

    .line 219
    :cond_1
    const/4 v6, 0x1

    .line 223
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFillDivider()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_6

    .line 224
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getDividerHeight()I

    move-result v2

    .line 225
    .local v2, "dividerHeight":I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    .line 226
    .local v4, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getListPaddingBottom()I

    move-result v12

    sub-int v8, v11, v12

    .line 227
    .local v8, "listBottom":I
    const/4 v5, 0x0

    .line 228
    .local v5, "fillBottom":I
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getDividerItemHeight()I

    move-result v3

    .line 230
    .local v3, "dividerItemHeight":I
    if-lez v1, :cond_3

    .line 231
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 234
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getPaddingLeft()I

    move-result v11

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 236
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getRight()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->right:I

    .line 238
    iget-boolean v11, p0, Landroid/widget/ColorListView;->mIsNotDrawFirstLine:Z

    if-eqz v11, :cond_4

    .line 239
    add-int v11, v5, v3

    add-int v5, v11, v2

    .line 243
    :cond_4
    :goto_1
    if-lez v3, :cond_6

    add-int v11, v8, v9

    if-ge v5, v11, :cond_6

    if-eqz v4, :cond_6

    .line 244
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 245
    add-int v11, v5, v2

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 246
    invoke-virtual {p0, p1, v0, v10}, Landroid/widget/ColorListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 247
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v11, v3

    goto :goto_1

    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "dividerItemHeight":I
    .end local v4    # "drawDividers":Z
    .end local v5    # "fillBottom":I
    .end local v8    # "listBottom":I
    :cond_5
    move v4, v10

    .line 225
    goto :goto_0

    .line 251
    .end local v2    # "dividerHeight":I
    :cond_6
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    return-void
.end method

.method public enableChoiceModeByLongPress(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/widget/ColorListView;->mChoiceModeByLongPressEnabled:Z

    .line 625
    return-void
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/widget/ColorListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/widget/ColorListView;->mFillDivider:Z

    return v0
.end method

.method public getIsNotDrawFirstLine()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/widget/ColorListView;->mIsNotDrawFirstLine:Z

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 272
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 280
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 274
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ColorListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x1

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    iget-boolean v4, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ColorListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 327
    .local v2, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 328
    .local v3, "n":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/ColorListView;->pointToPosition(II)I

    move-result v1

    .line 329
    .local v1, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 380
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 381
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_1

    .line 399
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local v0    # "action":I
    :goto_2
    return v4

    .line 331
    .restart local v1    # "curPosition":I
    .restart local v2    # "m":I
    .restart local v3    # "n":I
    :pswitch_1
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    .line 332
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    goto :goto_0

    .line 335
    :pswitch_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mFlag:Z

    .line 338
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 346
    invoke-direct {p0, v1}, Landroid/widget/ColorListView;->alignBottomChild(I)V

    .line 349
    :cond_1
    iget-boolean v4, p0, Landroid/widget/ColorListView;->mFlag:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    if-eq v4, v1, :cond_5

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    iget-object v4, p0, Landroid/widget/ColorListView;->mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    if-eqz v4, :cond_5

    .line 351
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mHasMoved:Z

    .line 352
    iget-object v4, p0, Landroid/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/ColorListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    iget v4, p0, Landroid/widget/ColorListView;->mLastSite:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Landroid/widget/ColorListView;->mLastSite:I

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Landroid/widget/ColorListView;->mLastSite:I

    if-ge v4, v1, :cond_2

    .line 354
    iget-object v4, p0, Landroid/widget/ColorListView;->mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    iget v5, p0, Landroid/widget/ColorListView;->mLastSite:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Landroid/widget/ColorListView;->mLastSite:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/widget/ColorListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 357
    :cond_2
    iget-object v4, p0, Landroid/widget/ColorListView;->mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/widget/ColorListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 359
    iput v1, p0, Landroid/widget/ColorListView;->mLastSite:I

    .line 360
    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    .line 361
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v4

    if-ne v1, v4, :cond_6

    if-lez v1, :cond_6

    .line 362
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mUpScroll:Z

    .line 363
    iget-object v4, p0, Landroid/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    const-wide/16 v6, 0x32

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/ColorListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_3
    :goto_3
    iget v4, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    if-ne v4, v1, :cond_4

    .line 370
    iget-object v4, p0, Landroid/widget/ColorListView;->mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    iget v5, p0, Landroid/widget/ColorListView;->mLastPosition:I

    iget v6, p0, Landroid/widget/ColorListView;->mLastPosition:I

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/widget/ColorListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 373
    :cond_4
    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    iput v4, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    .line 374
    iput v1, p0, Landroid/widget/ColorListView;->mLastPosition:I

    .line 376
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 364
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getLastVisiblePosition()I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 365
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mUpScroll:Z

    .line 366
    iget-object v4, p0, Landroid/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    const-wide/16 v6, 0x32

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/ColorListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 383
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .restart local v0    # "action":I
    :pswitch_4
    iget-object v4, p0, Landroid/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/ColorListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    iget-boolean v4, p0, Landroid/widget/ColorListView;->mHasMoved:Z

    if-nez v4, :cond_7

    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_7

    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    iget v5, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    if-ne v4, v5, :cond_7

    .line 385
    iget v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Landroid/widget/ColorListView;->mLastPosition:I

    iget-object v6, p0, Landroid/widget/ColorListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v7, p0, Landroid/widget/ColorListView;->mLastPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/ColorListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 390
    :cond_7
    :pswitch_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mHasMoved:Z

    .line 391
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mUpScroll:Z

    .line 392
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/ColorListView;->mLastPosition:I

    .line 393
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/ColorListView;->mLasterPosition:I

    .line 394
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mFlag:Z

    .line 395
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ColorListView;->mMultiChoice:Z

    .line 396
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ColorListView;->mLastSite:I

    goto/16 :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 381
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 564
    iget v0, p0, Landroid/widget/ColorListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ColorListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ColorListView;->isItemCheckable(Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->playSoundEffect(I)V

    .line 571
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ColorListView;->performUncheckableItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 613
    iget-boolean v2, p0, Landroid/widget/ColorListView;->mChoiceModeByLongPressEnabled:Z

    if-eqz v2, :cond_0

    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 620
    :goto_0
    return v0

    .line 616
    :cond_0
    iget v1, p0, Landroid/widget/ColorListView;->mChoiceMode:I

    .line 617
    .local v1, "temp":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ColorListView;->mChoiceMode:I

    .line 618
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 619
    .local v0, "result":Z
    iput v1, p0, Landroid/widget/ColorListView;->mChoiceMode:I

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/widget/ColorListView$CheckableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ColorListView$CheckableListener;

    .prologue
    .line 604
    iput-object p1, p0, Landroid/widget/ColorListView;->mCheckableListener:Landroid/widget/ColorListView$CheckableListener;

    .line 605
    return-void
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .param p1, "itemHeight"    # I

    .prologue
    .line 181
    iput p1, p0, Landroid/widget/ColorListView;->mDividerItemHeight:I

    .line 182
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .param p1, "fillDivider"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Landroid/widget/ColorListView;->mFillDivider:Z

    .line 166
    return-void
.end method

.method public setIsNotDrawFirstLine(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/widget/ColorListView;->mIsNotDrawFirstLine:Z

    .line 198
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/ColorListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;

    invoke-direct {v0, p0}, Landroid/widget/ColorListView$MultiChoiceModeCallbackWrapper;-><init>(Landroid/widget/ColorListView;)V

    iput-object v0, p0, Landroid/widget/ColorListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 579
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 580
    return-void
.end method

.method public setNotifyCheckedStateEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, Landroid/widget/ColorListView;->mIsNotifyCheckedStateEnabled:Z

    .line 609
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 433
    iget v0, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    if-eq v0, p1, :cond_0

    .line 434
    iput p1, p0, Landroid/widget/ColorListView;->mScrollDirection:I

    .line 435
    invoke-virtual {p0}, Landroid/widget/ColorListView;->layoutChildren()V

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mItemCount:I

    .line 438
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mFirstPos:I

    .line 439
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mLastPos:I

    .line 440
    iget v0, p0, Landroid/widget/ColorListView;->mItemCount:I

    if-eqz v0, :cond_1

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mItemTop:I

    .line 442
    iget v0, p0, Landroid/widget/ColorListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mItemBottom:I

    .line 444
    :cond_1
    return-void
.end method

.method public setScrollDirection(ILandroid/view/View;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "pager"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Landroid/widget/ColorListView;->setScrollDirection(I)V

    .line 452
    iput-object p2, p0, Landroid/widget/ColorListView;->mViewPager:Landroid/view/View;

    .line 453
    invoke-direct {p0, p0}, Landroid/widget/ColorListView;->recomputePositionInParent(Landroid/view/View;)V

    .line 454
    return-void
.end method

.method public setScrollMultiChoiceListener(Landroid/widget/ColorListView$ScrollMultiChoiceListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    .prologue
    .line 403
    iput-object p1, p0, Landroid/widget/ColorListView;->mScrollMultiChoiceListener:Landroid/widget/ColorListView$ScrollMultiChoiceListener;

    .line 404
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1
    .param p1, "springEnable"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/widget/ColorListView;->mSpringEnabled:Z

    .line 145
    iget-boolean v0, p0, Landroid/widget/ColorListView;->mSpringEnabled:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->setOverScrollMode(I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ColorListView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FF)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "offset"    # F

    .prologue
    .line 493
    iget v0, p0, Landroid/widget/ColorListView;->mItemCount:I

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 496
    :cond_0
    iget v0, p0, Landroid/widget/ColorListView;->mPointY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 497
    iput p1, p0, Landroid/widget/ColorListView;->mPointY:F

    .line 498
    invoke-virtual {p0}, Landroid/widget/ColorListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/ColorListView;->mPointY:F

    iget v2, p0, Landroid/widget/ColorListView;->mItemTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ColorListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ColorListView;->mReferPosition:I

    .line 500
    :cond_1
    iget v0, p0, Landroid/widget/ColorListView;->mReferPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 501
    iget v0, p0, Landroid/widget/ColorListView;->mPointY:F

    iget v1, p0, Landroid/widget/ColorListView;->mItemTop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 502
    iget v0, p0, Landroid/widget/ColorListView;->mFirstPos:I

    iput v0, p0, Landroid/widget/ColorListView;->mReferPosition:I

    .line 504
    :cond_2
    iget v0, p0, Landroid/widget/ColorListView;->mPointY:F

    iget v1, p0, Landroid/widget/ColorListView;->mItemTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 505
    iget v0, p0, Landroid/widget/ColorListView;->mLastPos:I

    iput v0, p0, Landroid/widget/ColorListView;->mReferPosition:I

    .line 508
    :cond_3
    iput p2, p0, Landroid/widget/ColorListView;->mPositionOffset:F

    .line 509
    invoke-virtual {p0}, Landroid/widget/ColorListView;->layoutChildren()V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FFZ)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "offset"    # F
    .param p3, "toAppear"    # Z

    .prologue
    .line 481
    iput-boolean p3, p0, Landroid/widget/ColorListView;->mItemToAppear:Z

    .line 482
    invoke-virtual {p0, p1, p2}, Landroid/widget/ColorListView;->updateHorizontalPosition(FF)V

    .line 483
    return-void
.end method
