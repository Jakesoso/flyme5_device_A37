.class public Lcom/color/widget/ColorRecyclerView;
.super Landroid/view/ViewGroup;
.source "ColorRecyclerView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;,
        Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;,
        Lcom/color/widget/ColorRecyclerView$ItemAnimator;,
        Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;,
        Lcom/color/widget/ColorRecyclerView$State;,
        Lcom/color/widget/ColorRecyclerView$SavedState;,
        Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;,
        Lcom/color/widget/ColorRecyclerView$SmoothScroller;,
        Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;,
        Lcom/color/widget/ColorRecyclerView$LayoutParams;,
        Lcom/color/widget/ColorRecyclerView$ViewHolder;,
        Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;,
        Lcom/color/widget/ColorRecyclerView$RecyclerListener;,
        Lcom/color/widget/ColorRecyclerView$OnScrollListener;,
        Lcom/color/widget/ColorRecyclerView$SimpleOnItemTouchListener;,
        Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;,
        Lcom/color/widget/ColorRecyclerView$ItemDecoration;,
        Lcom/color/widget/ColorRecyclerView$LayoutManager;,
        Lcom/color/widget/ColorRecyclerView$Adapter;,
        Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;,
        Lcom/color/widget/ColorRecyclerView$Recycler;,
        Lcom/color/widget/ColorRecyclerView$RecycledViewPool;,
        Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;,
        Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field final FLING:I

.field final OVER_FLING:I

.field final OVER_SCROLLING:I

.field final SCROLLING:I

.field private mAccessibilityDelegate:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

.field private mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

.field mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/color/widget/ColorChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAttached:Z

.field mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLastY:I

.field private mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionY:I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

.field private mRecyclerListener:Lcom/color/widget/ColorRecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollType:I

.field private mScroller:Landroid/widget/OppoOverScroller;

.field final mState:Lcom/color/widget/ColorRecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/color/widget/ColorRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/color/widget/ColorRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 382
    new-instance v0, Lcom/color/widget/ColorRecyclerView$3;

    invoke-direct {v0}, Lcom/color/widget/ColorRecyclerView$3;-><init>()V

    sput-object v0, Lcom/color/widget/ColorRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    new-instance v0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0, v4}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$1;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mObserver:Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;

    .line 231
    new-instance v0, Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerView$Recycler;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    .line 251
    new-instance v0, Lcom/color/widget/ColorRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerView$1;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 296
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 306
    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    .line 310
    new-instance v0, Lcom/color/widget/ColorDefaultItemAnimator;

    invoke-direct {v0}, Lcom/color/widget/ColorDefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    .line 335
    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollFactor:F

    .line 348
    new-instance v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    .line 350
    new-instance v0, Lcom/color/widget/ColorRecyclerView$State;

    invoke-direct {v0}, Lcom/color/widget/ColorRecyclerView$State;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    .line 356
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 357
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    .line 358
    new-instance v0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, v4}, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$1;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 360
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z

    .line 366
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mMinMaxLayoutPositions:[I

    .line 368
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    .line 369
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollConsumed:[I

    .line 370
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    .line 372
    new-instance v0, Lcom/color/widget/ColorRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerView$2;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 438
    sget-object v0, Lcom/color/widget/ColorRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2397
    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->SCROLLING:I

    .line 2398
    iput v10, p0, Lcom/color/widget/ColorRecyclerView;->FLING:I

    .line 2399
    iput v3, p0, Lcom/color/widget/ColorRecyclerView;->OVER_SCROLLING:I

    .line 2400
    const/4 v0, 0x3

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->OVER_FLING:I

    .line 399
    invoke-virtual {p0, v10}, Lcom/color/widget/ColorRecyclerView;->setFocusableInTouchMode(Z)V

    .line 400
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 401
    .local v9, "version":I
    const/16 v0, 0x10

    if-lt v9, v0, :cond_3

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mPostUpdatesOnAnimation:Z

    .line 403
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 404
    .local v8, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    .line 405
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mMinFlingVelocity:I

    .line 406
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    .line 407
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v10

    :cond_0
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView;->setWillNotDraw(Z)V

    .line 409
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->setListener(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 410
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->initAdapterManager()V

    .line 411
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->initChildrenHelper()V

    .line 413
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p0, v10}, Lcom/color/widget/ColorRecyclerView;->setImportantForAccessibility(I)V

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 420
    new-instance v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setAccessibilityDelegateCompat(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)V

    .line 422
    if-eqz p2, :cond_2

    .line 423
    const/4 v5, 0x0

    .line 424
    .local v5, "defStyleRes":I
    sget-object v0, Lcom/oppo/internal/R$styleable;->ColorRecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 426
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 428
    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorRecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 431
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/color/widget/ColorRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 432
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->initOppoProperty(Landroid/content/Context;)V

    .line 433
    new-instance v0, Landroid/widget/OppoOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    .line 434
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 435
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mMinimumVelocity:I

    .line 436
    return-void

    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    .end local v8    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    move v0, v1

    .line 401
    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/color/widget/ColorRecyclerView;Landroid/widget/OppoOverScroller;)Landroid/widget/OppoOverScroller;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/widget/OppoOverScroller;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    return-object p1
.end method

.method static synthetic access$2100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/color/widget/ColorRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$2300(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/color/widget/ColorRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2500(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I

    return v0
.end method

.method static synthetic access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2800(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3100(Lcom/color/widget/ColorRecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/color/widget/ColorRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4000(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Lcom/color/widget/ColorRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Lcom/color/widget/ColorRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    return p1
.end method

.method static synthetic access$4300(Lcom/color/widget/ColorRecyclerView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/color/widget/ColorRecyclerView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/color/widget/ColorRecyclerView;Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$4600(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/color/widget/ColorRecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/color/widget/ColorRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$502(Lcom/color/widget/ColorRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$5100()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/color/widget/ColorRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/color/widget/ColorRecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecyclerListener:Lcom/color/widget/ColorRecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/color/widget/ColorRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->getAdapterPositionFor(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/color/widget/ColorRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 993
    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 994
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 995
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 996
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 998
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/color/widget/ColorChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1004
    :goto_1
    return-void

    .line 994
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 999
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1000
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v1, v2}, Lcom/color/widget/ColorChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1002
    :cond_2
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Lcom/color/widget/ColorRecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "itemHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "beforeBounds"    # Landroid/graphics/Rect;
    .param p3, "afterLeft"    # I
    .param p4, "afterTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 3115
    iget-object v6, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3116
    .local v6, "newItemView":Landroid/view/View;
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    .line 3119
    :cond_0
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3123
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateMove(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3126
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    .line 3137
    :cond_1
    :goto_0
    return-void

    .line 3132
    :cond_2
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3133
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateAdd(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3134
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private animateChange(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "oldHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 3172
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3173
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->addAnimatingView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 3174
    iput-object p2, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 3175
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 3179
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3180
    .local v3, "fromLeft":I
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3182
    .local v4, "fromTop":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3183
    :cond_0
    move v5, v3

    .line 3184
    .local v5, "toLeft":I
    move v6, v4

    .line 3191
    .local v6, "toTop":I
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateChange(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    .line 3195
    :cond_1
    return-void

    .line 3186
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_2
    iget-object v0, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 3187
    .restart local v5    # "toLeft":I
    iget-object v0, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 3188
    .restart local v6    # "toTop":I
    invoke-virtual {p2, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3189
    iput-object p1, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private animateDisappearance(Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;)V
    .locals 7
    .param p1, "disappearingItem"    # Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .prologue
    const/4 v1, 0x0

    .line 3140
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3141
    .local v6, "disappearingItemView":Landroid/view/View;
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRecyclerView;->addAnimatingView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 3142
    iget v2, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    .line 3143
    .local v2, "oldLeft":I
    iget v3, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    .line 3144
    .local v3, "oldTop":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3145
    .local v4, "newLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3146
    .local v5, "newTop":I
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 3147
    :cond_0
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3148
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 3155
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateMove(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3157
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    .line 3169
    :cond_1
    :goto_0
    return-void

    .line 3164
    :cond_2
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3165
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateRemove(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3166
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private calcRealOverScrollDist(I)I
    .locals 4
    .param p1, "dist"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1465
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    int-to-float v0, p1

    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/color/widget/ColorRecyclerView;->mOverscrollDistance:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 1468
    .end local p1    # "dist":I
    :cond_0
    return p1
.end method

.method private cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2460
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2463
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->stopNestedScroll()V

    .line 2464
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->releaseGlows()V

    .line 2465
    invoke-direct {p0, v1}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    .line 2466
    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    .line 2467
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1822
    const/4 v0, 0x0

    .line 1823
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1825
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 1827
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1828
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1829
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1831
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1832
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1833
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1835
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1836
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1837
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1839
    :cond_3
    if-eqz v0, :cond_4

    .line 1840
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 1842
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1323
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 463
    if-eqz p2, :cond_0

    .line 464
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 475
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 478
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 480
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lcom/color/widget/ColorRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 482
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 492
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lcom/color/widget/ColorRecyclerView;->setLayoutManager(Lcom/color/widget/ColorRecyclerView$LayoutManager;)V

    .line 512
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 483
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 485
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 486
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 487
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 488
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 494
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/color/widget/ColorRecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 495
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 497
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 498
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 500
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 501
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 503
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 504
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 506
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 507
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private defaultOnMeasure(II)V
    .locals 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 2567
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2568
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2569
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 2570
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2572
    .local v2, "heightSize":I
    const/4 v3, 0x0

    .line 2573
    .local v3, "width":I
    const/4 v0, 0x0

    .line 2575
    .local v0, "height":I
    sparse-switch v4, :sswitch_data_0

    .line 2582
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMinimumWidth()I

    move-result v3

    .line 2586
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 2593
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMinimumHeight()I

    move-result v0

    .line 2597
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/color/widget/ColorRecyclerView;->setMeasuredDimension(II)V

    .line 2598
    return-void

    .line 2578
    :sswitch_0
    move v3, v5

    .line 2579
    goto :goto_0

    .line 2589
    :sswitch_1
    move v0, v2

    .line 2590
    goto :goto_1

    .line 2575
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2586
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private didChildRangeChange(II)Z
    .locals 7
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3045
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    .line 3046
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 3047
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v4, v5

    .line 3059
    :cond_1
    :goto_0
    return v4

    .line 3049
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3050
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6, v2}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3051
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3049
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3054
    :cond_4
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 3055
    .local v3, "pos":I
    if-lt v3, p1, :cond_5

    if-le v3, p2, :cond_3

    :cond_5
    move v4, v5

    .line 3056
    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5759
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 5760
    .local v2, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 5761
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5762
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorRecyclerView$Adapter;->onViewAttachedToWindow(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5764
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5765
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5766
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5767
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 5766
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5771
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5745
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 5746
    .local v2, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 5747
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5748
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorRecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5750
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5751
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5752
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5753
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 5752
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5756
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 2647
    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2648
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2649
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2650
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2651
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2652
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2653
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2655
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2109
    .local v0, "action":I
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 2110
    if-nez v0, :cond_2

    .line 2112
    iput-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2125
    :cond_0
    if-eqz v0, :cond_5

    .line 2126
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2127
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2128
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2129
    .local v2, "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2130
    iput-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2135
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 2114
    :cond_2
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)V

    .line 2115
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 2117
    :cond_3
    iput-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 2127
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2135
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2092
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 2093
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2096
    :cond_1
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2097
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2098
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2099
    .local v2, "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 2100
    iput-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2101
    const/4 v4, 0x1

    .line 2104
    .end local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 2097
    .restart local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2104
    .end local v2    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 9
    .param p1, "into"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3019
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    .line 3020
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3021
    aput v7, p1, v7

    .line 3022
    aput v7, p1, v8

    .line 3042
    :goto_0
    return-void

    .line 3025
    :cond_0
    const v4, 0x7fffffff

    .line 3026
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3027
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3028
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6, v2}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3029
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3027
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3032
    :cond_2
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 3033
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 3034
    move v4, v5

    .line 3036
    :cond_3
    if-le v5, v3, :cond_1

    .line 3037
    move v3, v5

    goto :goto_2

    .line 3040
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v7

    .line 3041
    aput v3, p1, v8

    goto :goto_0
.end method

.method private getAdapterPositionFor(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 8568
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8571
    :cond_0
    const/4 v0, -0x1

    .line 8573
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    iget v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorAdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 3569
    if-nez p0, :cond_0

    .line 3570
    const/4 v0, 0x0

    .line 3572
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 521
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 518
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2514
    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2515
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2516
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2518
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollFactor:F

    .line 2525
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    .line 2521
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1482
    const/4 v1, 0x0

    .line 1483
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1484
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1485
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/widget/ColorRecyclerView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/color/widget/ColorRecyclerView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1488
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 525
    new-instance v0, Lcom/color/widget/ColorChildHelper;

    new-instance v1, Lcom/color/widget/ColorRecyclerView$4;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorRecyclerView$4;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/color/widget/ColorChildHelper;-><init>(Lcom/color/widget/ColorChildHelper$Callback;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    .line 606
    return-void
.end method

.method private initOppoProperty(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1472
    invoke-virtual {p1}, Landroid/content/Context;->isOppoStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1474
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mOverscrollDistance:I

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I

    .line 1477
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 2631
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    .line 2632
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 2635
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    .line 2636
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2641
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    .line 2642
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2644
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2471
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 2473
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2474
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 2475
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 2476
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    .line 2478
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 2473
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    .prologue
    .line 2714
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z

    .line 2718
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2731
    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 2734
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorAdapterHelper;->reset()V

    .line 2735
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markKnownViewsInvalid()V

    .line 2736
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onItemsChanged(Lcom/color/widget/ColorRecyclerView;)V

    .line 2741
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2742
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorAdapterHelper;->preProcess()V

    .line 2746
    :goto_0
    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move v0, v2

    .line 2748
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    # getter for: Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->access$1700(Lcom/color/widget/ColorRecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v3}, Lcom/color/widget/ColorRecyclerView$State;->access$1602(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2752
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v3, v2}, Lcom/color/widget/ColorRecyclerView$State;->access$1402(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2755
    return-void

    .line 2744
    .end local v0    # "animationTypeSupported":Z
    :cond_5
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorAdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2746
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_7
    move v3, v1

    .line 2748
    goto :goto_2

    :cond_8
    move v2, v1

    .line 2752
    goto :goto_3
.end method

.method private processDisappearingList(Landroid/util/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3090
    .local p1, "appearingViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 3091
    .local v6, "disappearingList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_3

    .line 3092
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3093
    .local v9, "view":Landroid/view/View;
    invoke-static {v9}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3094
    .local v1, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .line 3095
    .local v8, "info":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    :cond_0
    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3099
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, v9, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 3091
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 3102
    :cond_1
    if-eqz v8, :cond_2

    .line 3103
    invoke-direct {p0, v8}, Lcom/color/widget/ColorRecyclerView;->animateDisappearance(Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 3106
    :cond_2
    new-instance v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRecyclerView;->animateDisappearance(Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 3110
    .end local v1    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v8    # "info":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3111
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1765
    const/4 v0, 0x0

    .line 1766
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 1767
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureLeftGlow()V

    .line 1768
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1769
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1770
    const/4 v0, 0x1

    .line 1780
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 1781
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureTopGlow()V

    .line 1782
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1783
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1784
    const/4 v0, 0x1

    .line 1793
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 1794
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 1796
    :cond_3
    return-void

    .line 1772
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureRightGlow()V

    .line 1774
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1775
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1776
    const/4 v0, 0x1

    goto :goto_0

    .line 1786
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 1787
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureBottomGlow()V

    .line 1788
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1789
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1802
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 1804
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 1805
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1806
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1808
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 1809
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1810
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1812
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 1813
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1814
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1816
    :cond_3
    if-eqz v0, :cond_4

    .line 1817
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 1819
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 1014
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, p1}, Lcom/color/widget/ColorChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1015
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1016
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 1017
    .local v1, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 1018
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 1023
    .end local v1    # "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 1024
    return v0
.end method

.method private setAdapterInternal(Lcom/color/widget/ColorRecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 789
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mObserver:Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;)V

    .line 791
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/color/widget/ColorRecyclerView;)V

    .line 793
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 796
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->endAnimations()V

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 803
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 804
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 807
    :cond_3
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->clear()V

    .line 809
    :cond_4
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v1}, Lcom/color/widget/ColorAdapterHelper;->reset()V

    .line 810
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    .line 811
    .local v0, "oldAdapter":Lcom/color/widget/ColorRecyclerView$Adapter;
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    .line 812
    if-eqz p1, :cond_5

    .line 813
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mObserver:Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;)V

    .line 814
    invoke-virtual {p1, p0}, Lcom/color/widget/ColorRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/color/widget/ColorRecyclerView;)V

    .line 816
    :cond_5
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 817
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;)V

    .line 819
    :cond_6
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;Z)V

    .line 820
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v2, 0x1

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v1, v2}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 821
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markKnownViewsInvalid()V

    .line 822
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 3507
    iget-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3519
    :goto_0
    return-void

    .line 3510
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3511
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3512
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3513
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3514
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3515
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 3512
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3518
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1098
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1105
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    .line 1106
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->stopScrollersInternal()V

    .line 1109
    :cond_1
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->stop()V

    .line 1737
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1740
    :cond_0
    return-void
.end method

.method private supportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1845
    if-gez p1, :cond_4

    .line 1846
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureLeftGlow()V

    .line 1847
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1853
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1854
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureTopGlow()V

    .line 1855
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1861
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 1864
    :cond_3
    return-void

    .line 1848
    :cond_4
    if-lez p1, :cond_0

    .line 1849
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureRightGlow()V

    .line 1850
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 1856
    :cond_5
    if-lez p2, :cond_1

    .line 1857
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->ensureBottomGlow()V

    .line 1858
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1976
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onAddFocusables(Lcom/color/widget/ColorRecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1977
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1979
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lcom/color/widget/ColorRecyclerView$ItemDecoration;

    .prologue
    .line 1156
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView;->addItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;I)V

    .line 1157
    return-void
.end method

.method public addItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lcom/color/widget/ColorRecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setWillNotDraw(Z)V

    .line 1134
    :cond_1
    if-gez p2, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markItemDecorInsetsDirty()V

    .line 1140
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 1141
    return-void

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    return-void
.end method

.method public addOnItemTouchListener(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    return-void
.end method

.method public addOnItemTouchListenerSy(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .prologue
    .line 2070
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2071
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView;->removeOnItemTouchListener(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V

    .line 2071
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2075
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2076
    return-void
.end method

.method public addOnScrollListener(Lcom/color/widget/ColorRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->isRunningLayoutOrScroll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2026
    if-nez p1, :cond_0

    .line 2027
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2033
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2043
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->isRunningLayoutOrScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    if-nez p1, :cond_0

    .line 2045
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2048
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2050
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3299
    instance-of v0, p1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    check-cast p1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->checkLayoutParams(Lcom/color/widget/ColorRecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3353
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3354
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3355
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3356
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3357
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearOldPosition()V

    .line 3354
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3360
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->clearOldPositions()V

    .line 3361
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 903
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1248
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 2406
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2424
    iget v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    .line 2425
    .local v3, "oldX":I
    iget v4, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    .line 2426
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller;->getCurrX()I

    move-result v12

    .line 2427
    .local v12, "x":I
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller;->getCurrY()I

    move-result v13

    .line 2429
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_3

    .line 2430
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->getScrollRange()I

    move-result v6

    .line 2431
    .local v6, "range":I
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v11

    .line 2432
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_5

    if-lez v6, :cond_5

    .line 2436
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2437
    :cond_2
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/color/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 2439
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/color/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 2445
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_3
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2447
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 2456
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_4
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_5
    move v10, v5

    .line 2432
    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchLayout()V
    .locals 34
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 2782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-nez v4, :cond_1

    .line 2783
    const-string v4, "RecyclerView"

    const-string v6, "No adapter attached; skipping layout"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_0
    :goto_0
    return-void

    .line 2786
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v4, :cond_2

    .line 2787
    const-string v4, "RecyclerView"

    const-string v6, "No layout manager attached; skipping layout"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2790
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2791
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 2792
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->onEnterLayoutOrScroll()V

    .line 2794
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2796
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    if-eqz v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    :goto_1
    iput-object v4, v6, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    .line 2798
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 2799
    const/4 v12, 0x0

    .line 2800
    .local v12, "appearingViewInitialBounds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1400(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v6

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    .line 2802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mMinMaxLayoutPositions:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/color/widget/ColorRecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 2807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 2808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v14

    .line 2810
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 2811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v5

    .line 2812
    .local v5, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2810
    :cond_3
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 2796
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v12    # "appearingViewInitialBounds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2815
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v12    # "appearingViewInitialBounds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    :cond_5
    iget-object v0, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 2816
    .local v33, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v10, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    new-instance v4, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v10, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2820
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v33    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1400(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->saveOldPositions()V

    .line 2829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    if-eqz v4, :cond_8

    .line 2830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v14

    .line 2831
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_8

    .line 2833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v5

    .line 2834
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2835
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorRecyclerView;->getChangedHolderKey(Lcom/color/widget/ColorRecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2836
    .local v24, "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    .end local v24    # "key":J
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2842
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1200(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v15

    .line 2843
    .local v15, "didStructureChange":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4, v6, v8}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onLayoutChildren(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v15}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2848
    new-instance v12, Landroid/util/ArrayMap;

    .end local v12    # "appearingViewInitialBounds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 2850
    .restart local v12    # "appearingViewInitialBounds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    .line 2851
    const/16 v18, 0x0

    .line 2852
    .local v18, "found":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2853
    .local v13, "child":Landroid/view/View;
    invoke-static {v13}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2850
    :cond_9
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 2856
    :cond_a
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_b

    .line 2857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2858
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v4, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v13, :cond_c

    .line 2859
    const/16 v18, 0x1

    .line 2863
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_b
    if-nez v18, :cond_9

    .line 2864
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v4, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2856
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 2869
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v13    # "child":Landroid/view/View;
    .end local v18    # "found":Z
    .end local v23    # "j":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->clearOldPositions()V

    .line 2870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorAdapterHelper;->consumePostponedUpdates()V

    .line 2890
    .end local v15    # "didStructureChange":Z
    .end local v19    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    .line 2891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1002(Lcom/color/widget/ColorRecyclerView$State;I)I

    .line 2894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4, v6, v8}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onLayoutChildren(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2899
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    .line 2903
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_8
    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v6, v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1602(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    if-eqz v4, :cond_12

    new-instance v26, Landroid/util/ArrayMap;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArrayMap;-><init>()V

    .line 2909
    .local v26, "newChangedHolders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v14

    .line 2911
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_15

    .line 2912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v5

    .line 2913
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2911
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2872
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v26    # "newChangedHolders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->clearOldPositions()V

    .line 2874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorAdapterHelper;->consumeUpdatesInOnePass()V

    .line 2875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    if-eqz v4, :cond_e

    .line 2876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v14

    .line 2878
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_e

    .line 2880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v5

    .line 2881
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2882
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorRecyclerView;->getChangedHolderKey(Lcom/color/widget/ColorRecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2883
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    .end local v24    # "key":J
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 2903
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 2907
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 2916
    .restart local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    .restart local v26    # "newChangedHolders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :cond_13
    iget-object v0, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 2917
    .restart local v33    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorRecyclerView;->getChangedHolderKey(Lcom/color/widget/ColorRecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2918
    .restart local v24    # "key":J
    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2919
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2921
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v10, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    new-instance v4, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v10, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2925
    .end local v5    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v24    # "key":J
    .end local v33    # "view":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/color/widget/ColorRecyclerView;->processDisappearingList(Landroid/util/ArrayMap;)V

    .line 2927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v32

    .line 2929
    .local v32, "preLayoutCount":I
    add-int/lit8 v19, v32, -0x1

    :goto_d
    if-ltz v19, :cond_17

    .line 2930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2931
    .local v22, "itemHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .line 2933
    .local v16, "disappearingItem":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2935
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 2936
    .local v17, "disappearingItemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v4, v6}, Lcom/color/widget/ColorRecyclerView$Recycler;->unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 2937
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/color/widget/ColorRecyclerView;->animateDisappearance(Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;)V

    .line 2929
    .end local v16    # "disappearingItem":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    .end local v17    # "disappearingItemView":Landroid/view/View;
    :cond_16
    add-int/lit8 v19, v19, -0x1

    goto :goto_d

    .line 2942
    .end local v22    # "itemHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v30

    .line 2944
    .local v30, "postLayoutCount":I
    if-lez v30, :cond_1b

    .line 2945
    add-int/lit8 v19, v30, -0x1

    :goto_e
    if-ltz v19, :cond_1b

    .line 2946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2947
    .restart local v22    # "itemHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .line 2948
    .local v20, "info":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 2950
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2951
    if-eqz v12, :cond_1a

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    move-object/from16 v21, v4

    .line 2953
    .local v21, "initialBounds":Landroid/graphics/Rect;
    :goto_f
    move-object/from16 v0, v20

    iget v4, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/color/widget/ColorRecyclerView;->animateAppearance(Lcom/color/widget/ColorRecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    .line 2945
    .end local v21    # "initialBounds":Landroid/graphics/Rect;
    :cond_19
    add-int/lit8 v19, v19, -0x1

    goto :goto_e

    .line 2951
    :cond_1a
    const/16 v21, 0x0

    goto :goto_f

    .line 2960
    .end local v20    # "info":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    .end local v22    # "itemHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2962
    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_1e

    .line 2963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2964
    .local v7, "postHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .line 2965
    .local v29, "postInfo":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;

    .line 2966
    .local v31, "preInfo":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    if-eqz v31, :cond_1d

    if-eqz v29, :cond_1d

    .line 2967
    move-object/from16 v0, v31

    iget v4, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    if-ne v4, v6, :cond_1c

    move-object/from16 v0, v31

    iget v4, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    if-eq v4, v6, :cond_1d

    .line 2968
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    move-object/from16 v0, v31

    iget v8, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v31

    iget v9, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v10, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v11, v0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    invoke-virtual/range {v6 .. v11}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->animateMove(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2975
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->postAnimationRunner()V

    .line 2962
    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 2981
    .end local v7    # "postHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v29    # "postInfo":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    .end local v31    # "preInfo":Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2983
    :goto_11
    add-int/lit8 v19, v14, -0x1

    :goto_12
    if-ltz v19, :cond_22

    .line 2984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2985
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2986
    .local v27, "oldHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2987
    .local v28, "oldView":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2983
    :cond_1f
    :goto_13
    add-int/lit8 v19, v19, -0x1

    goto :goto_12

    .line 2981
    .end local v24    # "key":J
    .end local v27    # "oldHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    :cond_20
    const/4 v14, 0x0

    goto :goto_11

    .line 2992
    .restart local v24    # "key":J
    .restart local v27    # "oldHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v28    # "oldView":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    # getter for: Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->access$1800(Lcom/color/widget/ColorRecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    # getter for: Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->access$1800(Lcom/color/widget/ColorRecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2994
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/color/widget/ColorRecyclerView;->animateChange(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_13

    .line 3000
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v24    # "key":J
    .end local v26    # "newChangedHolders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    .end local v27    # "oldHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    .end local v30    # "postLayoutCount":I
    .end local v32    # "preLayoutCount":I
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 3001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v4, v6}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 3002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget v6, v6, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mPreviousLayoutItemCount:I
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1902(Lcom/color/widget/ColorRecyclerView$State;I)I

    .line 3003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1602(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1402(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 3006
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->onExitLayoutOrScroll()V

    .line 3007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    const/4 v6, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->access$1702(Lcom/color/widget/ColorRecyclerView$LayoutManager;Z)Z

    .line 3008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    # getter for: Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->access$1800(Lcom/color/widget/ColorRecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 3009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    # getter for: Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->access$1800(Lcom/color/widget/ColorRecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3011
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    .line 3013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/color/widget/ColorRecyclerView;->didChildRangeChange(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3014
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/color/widget/ColorRecyclerView;->dispatchOnScrolled(II)V

    goto/16 :goto_0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3887
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 3888
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3893
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->onScrollStateChanged(I)V

    .line 3896
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 3897
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/color/widget/ColorRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/color/widget/ColorRecyclerView;I)V

    .line 3899
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3900
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3901
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/color/widget/ColorRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/color/widget/ColorRecyclerView;I)V

    .line 3900
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3904
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getScrollX()I

    move-result v1

    .line 3852
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getScrollY()I

    move-result v2

    .line 3853
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/color/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 3856
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->onScrolled(II)V

    .line 3860
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 3861
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$OnScrollListener;->onScrolled(Lcom/color/widget/ColorRecyclerView;II)V

    .line 3863
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3864
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3865
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$OnScrollListener;->onScrolled(Lcom/color/widget/ColorRecyclerView;II)V

    .line 3864
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3868
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 982
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 974
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3225
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3228
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3229
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3230
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/color/widget/ColorRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V

    .line 3229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3234
    :cond_0
    const/4 v2, 0x0

    .line 3277
    .local v2, "needsInvalidate":Z
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3279
    const/4 v2, 0x1

    .line 3282
    :cond_1
    if-eqz v2, :cond_2

    .line 3283
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 3285
    :cond_2
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3749
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 1

    .prologue
    .line 1635
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mEatRequestLayout:Z

    .line 1637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z

    .line 1639
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1917
    :goto_0
    return-void

    .line 1910
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 1911
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1912
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1877
    :goto_0
    return-void

    .line 1870
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 1871
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1883
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 1884
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1896
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 1897
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1898
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3732
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v1

    .line 3733
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3734
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v5, v2}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3735
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 3736
    .local v3, "translationX":F
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 3737
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 3744
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 3733
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3744
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 3667
    iget-boolean v4, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 3677
    :cond_0
    :goto_0
    return-object v1

    .line 3670
    :cond_1
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3671
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3672
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3673
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/color/widget/ColorRecyclerView;->getAdapterPositionFor(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    move-object v1, v3

    .line 3677
    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3712
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3713
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3714
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3715
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 3721
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :goto_1
    return-object v1

    .line 3713
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3721
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView;->findViewHolderForPosition(IZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView;->findViewHolderForPosition(IZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 3681
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3682
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3683
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3684
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3685
    if-eqz p2, :cond_1

    .line 3686
    iget v3, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    .line 3697
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v1

    .line 3689
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3682
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3697
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1689
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 1690
    const-string v4, "RecyclerView"

    const-string v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    :goto_0
    return v3

    .line 1695
    :cond_1
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1696
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1698
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/color/widget/ColorRecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 1699
    :cond_2
    const/4 p1, 0x0

    .line 1701
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/color/widget/ColorRecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 1702
    :cond_4
    const/4 p2, 0x0

    .line 1704
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1709
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lcom/color/widget/ColorRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1710
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 1711
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lcom/color/widget/ColorRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1713
    if-eqz v0, :cond_0

    .line 1714
    iget v3, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1715
    iget v3, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1716
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 1717
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 1710
    goto :goto_1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 1927
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1928
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1938
    :goto_0
    return-object v2

    .line 1931
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1932
    .local v0, "ff":Landroid/view/FocusFinder;
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1933
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 1934
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 1935
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;

    move-result-object v1

    .line 1936
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 1938
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/color/widget/ColorRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/color/widget/ColorRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3323
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/color/widget/ColorRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/color/widget/ColorRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 861
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lcom/color/widget/ColorRecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 3082
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3591
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 3592
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 10037
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 10038
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 10040
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 3617
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3621
    :cond_0
    :goto_0
    return-wide v2

    .line 3620
    :cond_1
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 3621
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3606
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 3607
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3581
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3560
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3561
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3562
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3565
    :cond_0
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityDelegate:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3804
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 3805
    .local v3, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-boolean v4, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 3806
    iget-object v2, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3821
    :goto_0
    return-object v2

    .line 3809
    :cond_0
    iget-object v2, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3810
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3811
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3812
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3813
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3814
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorRecyclerView$ItemDecoration;

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lcom/color/widget/ColorRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V

    .line 3815
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 3816
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 3817
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 3818
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 3812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3820
    :cond_1
    iput-boolean v7, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1758
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1748
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 3920
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 609
    new-instance v0, Lcom/color/widget/ColorAdapterHelper;

    new-instance v1, Lcom/color/widget/ColorRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorRecyclerView$5;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/color/widget/ColorAdapterHelper;-><init>(Lcom/color/widget/ColorAdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    .line 686
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 1921
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3551
    :goto_0
    return-void

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3546
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3549
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markItemDecorInsetsDirty()V

    .line 3550
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2014
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    return v0
.end method

.method isRunningLayoutOrScroll()Z
    .locals 1

    .prologue
    .line 2658
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3215
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3216
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3217
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3218
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3220
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3221
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 3526
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3527
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3528
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3529
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3530
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 3527
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3533
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markItemDecorInsetsDirty()V

    .line 3534
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3535
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 3797
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    .line 3798
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3799
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3801
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 3759
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    .line 3760
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3761
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3760
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3763
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3398
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3399
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3400
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3401
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 3406
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3407
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v4, 0x1

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v4}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 3399
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3410
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3411
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 3412
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3364
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3366
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 3367
    move v5, p1

    .line 3368
    .local v5, "start":I
    move v1, p2

    .line 3369
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3376
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 3377
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v6, v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 3378
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 3376
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3371
    .end local v1    # "end":I
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 3372
    .restart local v5    # "start":I
    move v1, p1

    .line 3373
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 3385
    .restart local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 3386
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3391
    :goto_3
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v7, 0x1

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v6, v7}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    goto :goto_2

    .line 3388
    :cond_3
    invoke-virtual {v2, v4, v8}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3393
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3394
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 3395
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3416
    add-int v3, p1, p2

    .line 3417
    .local v3, "positionEnd":I
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3418
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3419
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3420
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3421
    iget v4, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 3427
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3428
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 3418
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3429
    :cond_1
    iget v4, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3434
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3436
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    goto :goto_1

    .line 3440
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3441
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 3442
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1983
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1984
    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutOrScrollCounter:I

    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    .line 1986
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    .line 1987
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/color/widget/ColorRecyclerView;)V

    .line 1990
    :cond_0
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z

    .line 1991
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3776
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3788
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1996
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->endAnimations()V

    .line 1999
    :cond_0
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    .line 2001
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->stopScroll()V

    .line 2002
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    .line 2003
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2007
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3289
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3291
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3292
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3293
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/color/widget/ColorRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V

    .line 3292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3295
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2482
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 2507
    :cond_0
    :goto_0
    return v6

    .line 2485
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 2486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2488
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2489
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 2494
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2495
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2501
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v5

    if-nez v3, :cond_2

    cmpl-float v3, v0, v5

    if-eqz v3, :cond_0

    .line 2502
    :cond_2
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->getScrollFactor()F

    move-result v1

    .line 2503
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/color/widget/ColorRecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 2492
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 2498
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2140
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2141
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->cancelTouch()V

    .line 2142
    const/4 v11, 0x1

    .line 2228
    :goto_0
    return v11

    .line 2145
    :cond_0
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v11, :cond_1

    .line 2146
    const/4 v11, 0x0

    goto :goto_0

    .line 2149
    :cond_1
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v11}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2150
    .local v2, "canScrollHorizontally":Z
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v11}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 2152
    .local v3, "canScrollVertically":Z
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_2

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2155
    :cond_2
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2158
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 2160
    .local v1, "actionIndex":I
    packed-switch v0, :pswitch_data_0

    .line 2228
    :cond_3
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    goto :goto_0

    .line 2162
    :pswitch_1
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 2163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 2164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    .line 2166
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 2167
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2168
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    .line 2171
    :cond_4
    const/4 v7, 0x0

    .line 2172
    .local v7, "nestedScrollAxis":I
    if-eqz v2, :cond_5

    .line 2173
    or-int/lit8 v7, v7, 0x1

    .line 2175
    :cond_5
    if-eqz v3, :cond_6

    .line 2176
    or-int/lit8 v7, v7, 0x2

    .line 2178
    :cond_6
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorRecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2182
    .end local v7    # "nestedScrollAxis":I
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 2183
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 2184
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 2188
    :pswitch_3
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2189
    .local v6, "index":I
    if-gez v6, :cond_7

    .line 2190
    const-string v11, "RecyclerView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error processing scroll; pointer index for id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2195
    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v9, v11

    .line 2196
    .local v9, "x":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v10, v11

    .line 2197
    .local v10, "y":I
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    .line 2198
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    sub-int v4, v9, v11

    .line 2199
    .local v4, "dx":I
    iget v11, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    sub-int v5, v10, v11

    .line 2200
    .local v5, "dy":I
    const/4 v8, 0x0

    .line 2201
    .local v8, "startScroll":Z
    if-eqz v2, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v11, v12, :cond_8

    .line 2202
    iget v12, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    iget v13, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-gez v4, :cond_a

    const/4 v11, -0x1

    :goto_2
    mul-int/2addr v11, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    .line 2203
    const/4 v8, 0x1

    .line 2205
    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v11, v12, :cond_9

    .line 2206
    iget v12, p0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    iget v13, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-gez v5, :cond_b

    const/4 v11, -0x1

    :goto_3
    mul-int/2addr v11, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    .line 2207
    const/4 v8, 0x1

    .line 2209
    :cond_9
    if-eqz v8, :cond_3

    .line 2210
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2202
    :cond_a
    const/4 v11, 0x1

    goto :goto_2

    .line 2206
    :cond_b
    const/4 v11, 0x1

    goto :goto_3

    .line 2216
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "index":I
    .end local v8    # "startScroll":Z
    .end local v9    # "x":I
    .end local v10    # "y":I
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2220
    :pswitch_5
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 2221
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2225
    :pswitch_6
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2228
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3199
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 3200
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->dispatchLayout()V

    .line 3201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 3202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    .line 3203
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 2530
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_0

    .line 2531
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 2532
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2534
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView$State;->access$1400(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2539
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    const/4 v1, 0x1

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$State;->access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2545
    :goto_0
    iput-boolean v3, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2546
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 2550
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    .line 2554
    :goto_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_3

    .line 2555
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->defaultOnMeasure(II)V

    .line 2560
    :goto_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v3}, Lcom/color/widget/ColorRecyclerView$State;->access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 2561
    return-void

    .line 2542
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorAdapterHelper;->consumeUpdatesInOnePass()V

    .line 2543
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v3}, Lcom/color/widget/ColorRecyclerView$State;->access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    goto :goto_0

    .line 2552
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iput v3, v0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    goto :goto_1

    .line 2557
    :cond_3
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onMeasure(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;II)V

    goto :goto_2
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1494
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 1495
    iget v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    iget v2, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/color/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 1496
    iput p2, p0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    .line 1498
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->invalidateParentIfNeeded()V

    .line 1500
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z

    .line 1502
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 961
    check-cast p1, Lcom/color/widget/ColorRecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    .line 962
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 963
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 966
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 947
    new-instance v0, Lcom/color/widget/ColorRecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/widget/ColorRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 948
    .local v0, "state":Lcom/color/widget/ColorRecyclerView$SavedState;
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mPendingSavedState:Lcom/color/widget/ColorRecyclerView$SavedState;

    # invokes: Lcom/color/widget/ColorRecyclerView$SavedState;->copyFrom(Lcom/color/widget/ColorRecyclerView$SavedState;)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$SavedState;->access$1300(Lcom/color/widget/ColorRecyclerView$SavedState;Lcom/color/widget/ColorRecyclerView$SavedState;)V

    .line 956
    :goto_0
    return-object v0

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 953
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 3882
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 3846
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2603
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2604
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->invalidateGlows()V

    .line 2606
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2243
    invoke-direct/range {p0 .. p1}, Lcom/color/widget/ColorRecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2244
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->cancelTouch()V

    .line 2245
    const/4 v2, 0x1

    .line 2394
    :goto_0
    return v2

    .line 2248
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 2249
    const/4 v2, 0x0

    goto :goto_0

    .line 2252
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    .line 2253
    .local v11, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    .line 2255
    .local v12, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 2256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2258
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2260
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    .line 2261
    .local v18, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 2262
    .local v9, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 2263
    .local v10, "actionIndex":I
    if-nez v9, :cond_3

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v2, v3

    .line 2266
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2267
    packed-switch v9, :pswitch_data_0

    .line 2392
    :cond_4
    :goto_1
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 2394
    const/4 v2, 0x1

    goto :goto_0

    .line 2269
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 2270
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 2271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    .line 2273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    invoke-virtual {v2}, Landroid/widget/OppoOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    invoke-virtual {v2}, Landroid/widget/OppoOverScroller;->abortAnimation()V

    .line 2278
    :cond_5
    const/16 v16, 0x0

    .line 2279
    .local v16, "nestedScrollAxis":I
    if-eqz v11, :cond_6

    .line 2280
    or-int/lit8 v16, v16, 0x1

    .line 2282
    :cond_6
    if-eqz v12, :cond_7

    .line 2283
    or-int/lit8 v16, v16, 0x2

    .line 2285
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2290
    .end local v16    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 2291
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 2292
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2296
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 2297
    .local v15, "index":I
    if-gez v15, :cond_8

    .line 2298
    const-string v2, "RecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing scroll; pointer index for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2302
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    .line 2303
    .local v19, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v21, v0

    .line 2304
    .local v21, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    sub-int v13, v2, v19

    .line 2305
    .local v13, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    sub-int v14, v2, v21

    .line 2307
    .local v14, "dy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v2, v3}, Lcom/color/widget/ColorRecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollConsumed:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v13, v2

    .line 2309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v14, v2

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 2313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 2315
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    .line 2316
    const/16 v17, 0x0

    .line 2317
    .local v17, "startScroll":Z
    if-eqz v11, :cond_a

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 2318
    if-lez v13, :cond_d

    .line 2319
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v2

    .line 2323
    :goto_2
    const/16 v17, 0x1

    .line 2325
    :cond_a
    if-eqz v12, :cond_b

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v2, v3, :cond_b

    .line 2326
    if-lez v14, :cond_e

    .line 2327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    sub-int/2addr v14, v2

    .line 2331
    :goto_3
    const/16 v17, 0x1

    .line 2333
    :cond_b
    if-eqz v17, :cond_c

    .line 2334
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    .line 2338
    .end local v17    # "startScroll":Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v2, v19, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    .line 2342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    .line 2344
    if-eqz v11, :cond_f

    .end local v13    # "dx":I
    :goto_4
    if-eqz v12, :cond_10

    .end local v14    # "dy":I
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v14, v1}, Lcom/color/widget/ColorRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2321
    .restart local v13    # "dx":I
    .restart local v14    # "dy":I
    .restart local v17    # "startScroll":Z
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    add-int/2addr v13, v2

    goto :goto_2

    .line 2329
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    add-int/2addr v14, v2

    goto :goto_3

    .line 2344
    .end local v17    # "startScroll":Z
    :cond_f
    const/4 v13, 0x0

    goto :goto_4

    .end local v13    # "dx":I
    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    .line 2355
    .end local v14    # "dy":I
    .end local v15    # "index":I
    .end local v19    # "x":I
    .end local v21    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/color/widget/ColorRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2359
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2360
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 2362
    .local v20, "xvel":F
    :goto_6
    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v0, v2

    move/from16 v22, v0

    .line 2365
    .local v22, "yvel":F
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OppoOverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2369
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 2371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorRecyclerView;->mScrollState:I

    .line 2378
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 2379
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->releaseGlows()V

    goto/16 :goto_1

    .line 2360
    .end local v20    # "xvel":F
    .end local v22    # "yvel":F
    :cond_12
    const/16 v20, 0x0

    goto :goto_6

    .line 2362
    .restart local v20    # "xvel":F
    :cond_13
    const/16 v22, 0x0

    goto :goto_7

    .line 2373
    .restart local v22    # "yvel":F
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-eqz v2, :cond_16

    :cond_15
    move/from16 v0, v20

    float-to-int v2, v0

    move/from16 v0, v22

    float-to-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/color/widget/ColorRecyclerView;->fling(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2374
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    goto :goto_8

    .line 2383
    .end local v20    # "xvel":F
    .end local v22    # "yvel":F
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OppoOverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 2388
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 1344
    add-int v3, p3, p1

    .line 1347
    .local v3, "newScrollX":I
    add-int v4, p4, p2

    .line 1350
    .local v4, "newScrollY":I
    move/from16 v0, p7

    neg-int v2, v0

    .line 1351
    .local v2, "left":I
    add-int v5, p7, p5

    .line 1352
    .local v5, "right":I
    move/from16 v0, p8

    neg-int v6, v0

    .line 1353
    .local v6, "top":I
    add-int v1, p8, p6

    .line 1354
    .local v1, "bottom":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v4, v7, v8}, Lcom/color/widget/ColorRecyclerView;->onOverScrolled(IIZZ)V

    .line 1355
    const/4 v7, 0x0

    return v7
.end method

.method rebindUpdatedViewHolders()V
    .locals 6

    .prologue
    .line 3475
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    .line 3476
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 3477
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v4, v2}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3479
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3476
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3482
    :cond_1
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3483
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    goto :goto_1

    .line 3484
    :cond_3
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3485
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    iget v5, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 3486
    .local v3, "type":I
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 3488
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3489
    :cond_4
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    iget v5, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v1, v5}, Lcom/color/widget/ColorRecyclerView$Adapter;->bindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 3494
    :cond_5
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    goto :goto_1

    .line 3499
    :cond_6
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 3504
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "type":I
    :cond_7
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3064
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 3065
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 3066
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3067
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3073
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3074
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3075
    return-void

    .line 3068
    :cond_1
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3069
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lcom/color/widget/ColorRecyclerView$ItemDecoration;

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setWillNotDraw(Z)V

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->markItemDecorInsetsDirty()V

    .line 1178
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 1179
    return-void

    .line 1175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2085
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mActiveOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2088
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/color/widget/ColorRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1239
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1943
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 1944
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1949
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1950
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1952
    check-cast v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 1953
    .local v2, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-boolean v4, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 1954
    iget-object v1, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 1955
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1956
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1957
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1958
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1962
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/color/widget/ColorRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1963
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lcom/color/widget/ColorRecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1964
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lcom/color/widget/ColorRecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1966
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1967
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2233
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2234
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2235
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 2236
    .local v1, "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2238
    .end local v1    # "listener":Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2239
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3207
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 3208
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3212
    :goto_0
    return-void

    .line 3210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 2
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1642
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mEatRequestLayout:Z

    if-eqz v0, :cond_1

    .line 1643
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->dispatchLayout()V

    .line 1647
    :cond_0
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mEatRequestLayout:Z

    .line 1648
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z

    .line 1650
    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3339
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3340
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3341
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, v2}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 3346
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3347
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->saveOldPosition()V

    .line 3340
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3350
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1301
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 1302
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1306
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1307
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1308
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1309
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/color/widget/ColorRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1360
    const/4 v6, 0x0

    .local v6, "unconsumedX":I
    const/4 v7, 0x0

    .line 1361
    .local v7, "unconsumedY":I
    const/4 v4, 0x0

    .local v4, "consumedX":I
    const/4 v5, 0x0

    .line 1363
    .local v5, "consumedY":I
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->consumePendingUpdateOperations()V

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;

    if-eqz v3, :cond_8

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->onEnterLayoutOrScroll()V

    .line 1367
    if-eqz p1, :cond_0

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v8, v9}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v4

    .line 1369
    sub-int v6, p1, v4

    .line 1371
    :cond_0
    if-eqz p2, :cond_2

    .line 1372
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-gez v3, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-lez v3, :cond_5

    if-gez p2, :cond_5

    .line 1379
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v18

    .line 1382
    .local v18, "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 1383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1384
    .local v25, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v19

    .line 1385
    .local v19, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v3, :cond_4

    .line 1386
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v22, v0

    .line 1387
    .local v22, "shadowingHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v22, :cond_6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1388
    .local v23, "shadowingView":Landroid/view/View;
    :goto_2
    if-eqz v23, :cond_4

    .line 1389
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 1390
    .local v21, "left":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 1391
    .local v24, "top":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v3

    move/from16 v0, v21

    if-ne v0, v3, :cond_3

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v24

    if-eq v0, v3, :cond_4

    .line 1392
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, v3, v21

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v8, v8, v24

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/view/View;->layout(IIII)V

    .line 1382
    .end local v21    # "left":I
    .end local v22    # "shadowingHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v23    # "shadowingView":Landroid/view/View;
    .end local v24    # "top":I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1375
    .end local v18    # "count":I
    .end local v19    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v20    # "i":I
    .end local v25    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v8, v9}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v5

    .line 1376
    sub-int v7, p2, v5

    goto/16 :goto_0

    .line 1387
    .restart local v18    # "count":I
    .restart local v19    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v20    # "i":I
    .restart local v22    # "shadowingHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v25    # "view":Landroid/view/View;
    :cond_6
    const/16 v23, 0x0

    goto :goto_2

    .line 1400
    .end local v18    # "count":I
    .end local v19    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v20    # "i":I
    .end local v22    # "shadowingHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v25    # "view":Landroid/view/View;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->onExitLayoutOrScroll()V

    .line 1401
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 1403
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 1407
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/color/widget/ColorRecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1409
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchX:I

    .line 1410
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/color/widget/ColorRecyclerView;->mLastTouchY:I

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v8, 0x0

    aget v9, v3, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v9, v11

    aput v9, v3, v8

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView;->mNestedOffsets:[I

    const/4 v8, 0x1

    aget v9, v3, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/color/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v9, v11

    aput v9, v3, v8

    .line 1440
    :cond_a
    :goto_3
    if-nez v4, :cond_b

    if-eqz v5, :cond_c

    .line 1441
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/color/widget/ColorRecyclerView;->dispatchOnScrolled(II)V

    .line 1443
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 1446
    :cond_d
    if-nez v4, :cond_e

    if-eqz v5, :cond_17

    :cond_e
    const/4 v3, 0x1

    :goto_4
    return v3

    .line 1414
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_a

    .line 1415
    if-eqz p3, :cond_16

    .line 1416
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v8, v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    int-to-float v11, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9, v11}, Lcom/color/widget/ColorRecyclerView;->pullGlows(FFFF)V

    .line 1418
    if-nez v7, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-eqz v3, :cond_11

    .line 1419
    :cond_10
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollType:I

    .line 1422
    :cond_11
    move v10, v7

    .line 1424
    .local v10, "overScrollDistance":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/color/widget/ColorRecyclerView;->calcRealOverScrollDist(I)I

    move-result v10

    .line 1426
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-gez v3, :cond_12

    if-gtz p2, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    if-lez v3, :cond_14

    if-gez p2, :cond_14

    .line 1427
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/color/widget/ColorRecyclerView;->calcRealOverScrollDist(I)I

    move-result v10

    .line 1430
    :cond_14
    if-eqz v10, :cond_15

    .line 1431
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/color/widget/ColorRecyclerView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorRecyclerView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Lcom/color/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1437
    .end local v10    # "overScrollDistance":I
    :cond_15
    :goto_5
    invoke-direct/range {p0 .. p2}, Lcom/color/widget/ColorRecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_3

    .line 1435
    :cond_16
    const-string v3, "mScrollY"

    const-string v8, "   ev == null: "

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1446
    :cond_17
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->stopScroll()V

    .line 1260
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1261
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1266
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2686
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2690
    :goto_0
    return-void

    .line 2689
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityDelegate:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    .line 455
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mAccessibilityDelegate:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 456
    return-void
.end method

.method public setAdapter(Lcom/color/widget/ColorRecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;

    .prologue
    .line 774
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/color/widget/ColorRecyclerView;->setAdapterInternal(Lcom/color/widget/ColorRecyclerView$Adapter;ZZ)V

    .line 775
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 776
    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1197
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    .line 1198
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->invalidateGlows()V

    .line 712
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z

    .line 713
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 714
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 717
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView;->mHasFixedSize:Z

    .line 697
    return-void
.end method

.method public setItemAnimator(Lcom/color/widget/ColorRecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->endAnimations()V

    .line 2622
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->setListener(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2624
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    .line 2625
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 2626
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mItemAnimatorListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->setListener(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2628
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1085
    return-void
.end method

.method public setLayoutManager(Lcom/color/widget/ColorRecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 924
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->setRecyclerView(Lcom/color/widget/ColorRecyclerView;)V

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->clear()V

    .line 930
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorChildHelper;->removeAllViewsUnfiltered()V

    .line 931
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .line 932
    if-eqz p1, :cond_4

    .line 933
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_3

    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_3
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->setRecyclerView(Lcom/color/widget/ColorRecyclerView;)V

    .line 938
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/color/widget/ColorRecyclerView;)V

    .line 942
    :cond_4
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/color/widget/ColorRecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mScrollListener:Lcom/color/widget/ColorRecyclerView$OnScrollListener;

    .line 1212
    return-void
.end method

.method public setRecycledViewPool(Lcom/color/widget/ColorRecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->setRecycledViewPool(Lcom/color/widget/ColorRecyclerView$RecycledViewPool;)V

    .line 1059
    return-void
.end method

.method public setRecyclerListener(Lcom/color/widget/ColorRecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$RecyclerListener;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView;->mRecyclerListener:Lcom/color/widget/ColorRecyclerView$RecyclerListener;

    .line 846
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 730
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 732
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    .line 743
    :goto_0
    return-void

    .line 740
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->setViewCacheExtension(Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;)V

    .line 1070
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->isRunningLayoutOrScroll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2671
    const/4 v0, 0x0

    .line 2672
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2673
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 2675
    :cond_0
    if-nez v0, :cond_1

    .line 2676
    const/4 v0, 0x0

    .line 2678
    :cond_1
    iget v1, p0, Lcom/color/widget/ColorRecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/color/widget/ColorRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2679
    const/4 v1, 0x1

    .line 2681
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1660
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1665
    const/4 p1, 0x0

    .line 1667
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1668
    const/4 p2, 0x0

    .line 1670
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 1671
    :cond_4
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1286
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;I)V

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1728
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V

    .line 1729
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->stopScrollersInternal()V

    .line 1730
    return-void
.end method

.method public swapAdapter(Lcom/color/widget/ColorRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 760
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/color/widget/ColorRecyclerView;->setAdapterInternal(Lcom/color/widget/ColorRecyclerView$Adapter;ZZ)V

    .line 761
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->setDataSetChangedAfterLayout()V

    .line 762
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 763
    return-void
.end method

.method viewRangeUpdate(II)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3451
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3452
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 3454
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 3455
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v5, v3}, Lcom/color/widget/ColorChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3456
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 3457
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3454
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3460
    :cond_1
    iget v5, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 3463
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 3464
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3465
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 3468
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3471
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3472
    return-void
.end method
