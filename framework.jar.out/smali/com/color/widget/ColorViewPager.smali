.class public Lcom/color/widget/ColorViewPager;
.super Landroid/view/ViewGroup;
.source "ColorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;,
        Lcom/color/widget/ColorViewPager$ViewPositionComparator;,
        Lcom/color/widget/ColorViewPager$LayoutParams;,
        Lcom/color/widget/ColorViewPager$PagerObserver;,
        Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;,
        Lcom/color/widget/ColorViewPager$SavedState;,
        Lcom/color/widget/ColorViewPager$Decor;,
        Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;,
        Lcom/color/widget/ColorViewPager$PageTransformer;,
        Lcom/color/widget/ColorViewPager$SimpleOnPageChangeListener;,
        Lcom/color/widget/ColorViewPager$OnPageChangeListener;,
        Lcom/color/widget/ColorViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/color/widget/ColorViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final DURATION_SCALE:F

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/color/widget/ColorViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/color/widget/ColorPagerAdapter;

.field private mAdapterChangeListener:Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDisableTouch:Z

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/color/widget/ColorViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/color/widget/ColorViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/color/widget/ColorViewPager;->LAYOUT_ATTRS:[I

    .line 113
    new-instance v0, Lcom/color/widget/ColorViewPager$1;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$1;-><init>()V

    sput-object v0, Lcom/color/widget/ColorViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 120
    sget-object v0, Lcom/color/widget/ColorBottomMenuCallback;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/color/widget/ColorViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 215
    new-instance v0, Lcom/color/widget/ColorViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/color/widget/ColorViewPager;->sPositionComparator:Lcom/color/widget/ColorViewPager$ViewPositionComparator;

    .line 2910
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    sput v0, Lcom/color/widget/ColorViewPager;->DURATION_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 336
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/color/widget/ColorViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mTempItem:Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 129
    iput v2, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    .line 130
    iput-object v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 131
    iput-object v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 143
    const v0, -0x800001

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    .line 144
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    .line 153
    iput v3, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    .line 172
    iput v2, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 199
    iput-boolean v3, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 200
    iput-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mNeedCalculatePageOffsets:Z

    .line 233
    new-instance v0, Lcom/color/widget/ColorViewPager$2;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorViewPager$2;-><init>(Lcom/color/widget/ColorViewPager;)V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 240
    iput v1, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    .line 2911
    new-instance v0, Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorPagerMenuDelegate;-><init>(Lcom/color/widget/ColorViewPager;)V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    .line 2912
    iput-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mDisableTouch:Z

    .line 337
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->initViewPager()V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/color/widget/ColorViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mTempItem:Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 129
    iput v2, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    .line 130
    iput-object v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 131
    iput-object v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 143
    const v0, -0x800001

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    .line 144
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    .line 153
    iput v3, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    .line 172
    iput v2, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 199
    iput-boolean v3, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 200
    iput-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mNeedCalculatePageOffsets:Z

    .line 233
    new-instance v0, Lcom/color/widget/ColorViewPager$2;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorViewPager$2;-><init>(Lcom/color/widget/ColorViewPager;)V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 240
    iput v1, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    .line 2911
    new-instance v0, Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorPagerMenuDelegate;-><init>(Lcom/color/widget/ColorViewPager;)V

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    .line 2912
    iput-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mDisableTouch:Z

    .line 342
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->initViewPager()V

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/color/widget/ColorViewPager;)Lcom/color/widget/ColorPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorViewPager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorViewPager;

    .prologue
    .line 80
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/color/widget/ColorViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/color/widget/ColorViewPager$ItemInfo;ILcom/color/widget/ColorViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/color/widget/ColorViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/color/widget/ColorViewPager$ItemInfo;

    .prologue
    .line 1123
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v1

    .line 1124
    .local v1, "N":I
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v11

    .line 1125
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1127
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1128
    move-object/from16 v0, p3

    iget v8, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 1130
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1131
    const/4 v5, 0x0

    .line 1132
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1133
    .local v3, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1134
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1135
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1136
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1137
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1138
    add-int/lit8 v5, v5, 0x1

    .line 1139
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    goto :goto_2

    .line 1125
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1141
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1144
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1145
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1147
    :cond_2
    iput v7, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1148
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1135
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1150
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1151
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1152
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1153
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1154
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1155
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1156
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1157
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1158
    add-int/lit8 v5, v5, -0x1

    .line 1159
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    goto :goto_5

    .line 1161
    :cond_4
    :goto_6
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1164
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1165
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1167
    :cond_5
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1168
    iput v7, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1155
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1174
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1175
    .local v4, "itemCount":I
    iget v7, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1176
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1177
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    .line 1178
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    .line 1181
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1182
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1183
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1184
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1177
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1178
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1186
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1187
    iput v7, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1188
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    .line 1181
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1190
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1191
    iget v12, p1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1193
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1194
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1195
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1196
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1198
    :cond_c
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1199
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    .line 1201
    :cond_d
    iput v7, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 1202
    iget v12, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1193
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1205
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/color/widget/ColorViewPager;->mNeedCalculatePageOffsets:Z

    .line 1206
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1743
    iget v8, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1744
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1746
    invoke-direct {p0, v7}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 1747
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1748
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v3

    .line 1749
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v4

    .line 1750
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1751
    .local v5, "x":I
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1752
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1753
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 1756
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 1757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1758
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1759
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1760
    const/4 v2, 0x1

    .line 1761
    iput-boolean v7, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->scrolling:Z

    .line 1757
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1743
    goto :goto_0

    .line 1764
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1765
    if-eqz p1, :cond_6

    .line 1766
    iget-object v7, p0, Lcom/color/widget/ColorViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/color/widget/ColorViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1771
    :cond_5
    :goto_2
    return-void

    .line 1768
    :cond_6
    iget-object v7, p0, Lcom/color/widget/ColorViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2168
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/color/widget/ColorViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/color/widget/ColorViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2169
    if-lez p3, :cond_1

    move v2, p1

    .line 2175
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2176
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2177
    .local v0, "firstItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2180
    .local v1, "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v4, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2183
    .end local v0    # "firstItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2169
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2171
    :cond_2
    iget v4, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2172
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2171
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v0

    .line 1779
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1780
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1781
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1780
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1783
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2415
    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    .line 2416
    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    .line 2418
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2422
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2596
    if-nez p1, :cond_0

    .line 2597
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2599
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2600
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2618
    :cond_1
    return-object p1

    .line 2603
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2604
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2605
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2606
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2608
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2609
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2610
    check-cast v0, Landroid/view/ViewGroup;

    .line 2611
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2612
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2613
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2614
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2616
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2617
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1774
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2401
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2402
    .local v1, "pointerId":I
    iget v3, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2405
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2406
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2407
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 2408
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2409
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2412
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1637
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1638
    iput-boolean v7, p0, Lcom/color/widget/ColorViewPager;->mCalledSuper:Z

    .line 1639
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/color/widget/ColorViewPager;->onPageScrolled(IFI)V

    .line 1640
    iget-boolean v8, p0, Lcom/color/widget/ColorViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1641
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->infoForCurrentScrollPosition()Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v1

    .line 1647
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v5

    .line 1648
    .local v5, "width":I
    iget v8, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1649
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1650
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 1651
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1653
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1655
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/color/widget/ColorViewPager;->mCalledSuper:Z

    .line 1656
    invoke-virtual {p0, v0, v4, v3}, Lcom/color/widget/ColorViewPager;->onPageScrolled(IFI)V

    .line 1657
    iget-object v7, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-virtual {v7, v0, v4}, Lcom/color/widget/ColorPagerMenuDelegate;->pageMenuScrolled(IF)V

    .line 1658
    iget-boolean v7, p0, Lcom/color/widget/ColorViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1659
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1662
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2071
    const/4 v7, 0x0

    .line 2073
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2074
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2077
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2078
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v13

    .line 2080
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2081
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2082
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2083
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2085
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2086
    .local v3, "firstItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2087
    .local v4, "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v14, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2088
    const/4 v5, 0x0

    .line 2089
    iget v14, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2091
    :cond_0
    iget v14, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v15}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2092
    const/4 v10, 0x0

    .line 2093
    iget v14, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2096
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_5

    .line 2097
    if-eqz v5, :cond_2

    .line 2098
    sub-float v9, v6, v12

    .line 2099
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v7, 0x1

    .line 2102
    .end local v9    # "over":F
    :cond_2
    :goto_0
    move v12, v6

    .line 2112
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2113
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-virtual {v14, v2}, Lcom/color/widget/ColorPagerMenuDelegate;->updateNextItem(F)V

    .line 2115
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/color/widget/ColorViewPager;->pageScrolled(I)Z

    .line 2117
    return v7

    .line 2100
    .restart local v9    # "over":F
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 2103
    .end local v9    # "over":F
    :cond_5
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2104
    if-eqz v10, :cond_6

    .line 2105
    sub-float v9, v12, v11

    .line 2106
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v7, 0x1

    .line 2109
    .end local v9    # "over":F
    :cond_6
    :goto_2
    move v12, v11

    goto :goto_1

    .line 2107
    .restart local v9    # "over":F
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1473
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1475
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1477
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v13

    .line 1478
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1479
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1481
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 1482
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget v2, Lcom/color/widget/ColorViewPager;->DURATION_SCALE:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 1485
    .local v5, "newDuration":I
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForPosition(I)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v11

    .line 1486
    .local v11, "targetInfo":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1499
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForPosition(I)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v6

    .line 1491
    .local v6, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1492
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1494
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->completeScroll(Z)V

    .line 1496
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1491
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 446
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 448
    .local v2, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 449
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->removeViewAt(I)V

    .line 450
    add-int/lit8 v1, v1, -0x1

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2065
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2066
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2068
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 553
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorViewPager;->infoForPosition(I)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v0

    .line 554
    .local v0, "curInfo":Lcom/color/widget/ColorViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 555
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v2

    .line 557
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 560
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 561
    invoke-virtual {p0, v1, v7, p3}, Lcom/color/widget/ColorViewPager;->smoothScrollTo(III)V

    .line 562
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 565
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 579
    :cond_2
    :goto_0
    return-void

    .line 569
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 570
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 572
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 573
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 575
    :cond_5
    invoke-direct {p0, v7}, Lcom/color/widget/ColorViewPager;->completeScroll(Z)V

    .line 576
    invoke-virtual {p0, v1, v7}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 577
    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 378
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 382
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    .line 383
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

    if-eqz v0, :cond_1

    .line 385
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->enableLayers(Z)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerMenuDelegate;->onPageMenuScrollStateChanged(I)V

    goto :goto_0

    .line 385
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2425
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2426
    iput-boolean p1, p0, Lcom/color/widget/ColorViewPager;->mScrollingCacheEnabled:Z

    .line 2437
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1107
    iget v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1113
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v1

    .line 1114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1115
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1111
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1118
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/color/widget/ColorViewPager;->sPositionComparator:Lcom/color/widget/ColorViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1120
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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
    .line 2642
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2644
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2646
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2647
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2648
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2649
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2650
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v4

    .line 2651
    .local v4, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2652
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2647
    .end local v4    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2662
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2668
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2679
    :cond_3
    :goto_1
    return-void

    .line 2671
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2675
    :cond_5
    if-eqz p1, :cond_3

    .line 2676
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/color/widget/ColorViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 828
    new-instance v0, Lcom/color/widget/ColorViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$ItemInfo;-><init>()V

    .line 829
    .local v0, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iput p1, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 830
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/color/widget/ColorPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 831
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    .line 832
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :goto_0
    return-object v0

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2689
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2690
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2691
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2692
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v2

    .line 2693
    .local v2, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2694
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2689
    .end local v2    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2698
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1297
    invoke-virtual {p0, p3}, Lcom/color/widget/ColorViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1298
    invoke-virtual {p0, p3}, Lcom/color/widget/ColorViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1300
    check-cast v0, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1301
    .local v0, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/color/widget/ColorViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    .line 1302
    iget-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1303
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1304
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1306
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->needsMeasure:Z

    .line 1307
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/widget/ColorViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1319
    :goto_0
    return-void

    .line 1309
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2530
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2531
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2532
    const/4 v1, 0x0

    .line 2556
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2558
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2560
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2561
    if-ne p1, v11, :cond_8

    .line 2564
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/color/widget/ColorViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2565
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/color/widget/ColorViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2566
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2567
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->pageLeft()Z

    move-result v2

    .line 2589
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2590
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/color/widget/ColorViewPager;->playSoundEffect(I)V

    .line 2592
    :cond_2
    return v2

    .line 2533
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2534
    const/4 v3, 0x0

    .line 2535
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2537
    if-ne v6, p0, :cond_5

    .line 2538
    const/4 v3, 0x1

    .line 2542
    :cond_4
    if-nez v3, :cond_0

    .line 2544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2545
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2548
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2536
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2550
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ColorViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2569
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2571
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2574
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/color/widget/ColorViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2575
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/color/widget/ColorViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/color/widget/ColorViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2576
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2577
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2579
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2582
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2584
    :cond_b
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2585
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2587
    :cond_d
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2290
    iget-boolean v2, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2306
    :goto_0
    return v4

    .line 2293
    :cond_0
    iput-boolean v9, p0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    .line 2294
    invoke-direct {p0, v9}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    .line 2295
    iput v5, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    .line 2296
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2297
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2301
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2302
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2303
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2304
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2305
    iput-wide v0, p0, Lcom/color/widget/ColorViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2306
    goto :goto_0

    .line 2299
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method public bindSplitMenuCallback(Lcom/color/widget/ColorBottomMenuCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/color/widget/ColorBottomMenuCallback;

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorPagerMenuDelegate;->bindSplitMenuCallback(Lcom/color/widget/ColorBottomMenuCallback;)V

    .line 2942
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2467
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2468
    check-cast v7, Landroid/view/ViewGroup;

    .line 2469
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2470
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2471
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2473
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2476
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2477
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x1

    .line 2486
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2473
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2486
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2440
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-nez v4, :cond_1

    .line 2451
    :cond_0
    :goto_0
    return v3

    .line 2444
    :cond_1
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v1

    .line 2445
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v0

    .line 2446
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2447
    int-to-float v4, v1

    iget v5, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2448
    :cond_3
    if-lez p1, :cond_0

    .line 2449
    int-to-float v4, v1

    iget v5, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2768
    instance-of v0, p1, Lcom/color/widget/ColorViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1612
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1613
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v0

    .line 1614
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v1

    .line 1615
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1616
    .local v2, "x":I
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1618
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1619
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 1621
    invoke-direct {p0, v2}, Lcom/color/widget/ColorViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1622
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1623
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 1628
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->postInvalidateOnAnimation()V

    .line 1634
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1633
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/color/widget/ColorViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 843
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v0

    .line 844
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/color/widget/ColorViewPager;->mExpectedAdapterCount:I

    .line 845
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 847
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    .line 849
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 850
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 851
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 852
    .local v4, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v13, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/color/widget/ColorPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 854
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 850
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 845
    goto :goto_0

    .line 858
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 859
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 860
    add-int/lit8 v3, v3, -0x1

    .line 862
    if-nez v5, :cond_3

    .line 863
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/color/widget/ColorPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 864
    const/4 v5, 0x1

    .line 867
    :cond_3
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget v13, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/color/widget/ColorPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 868
    const/4 v7, 0x1

    .line 870
    iget v12, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    iget v13, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 872
    iget v12, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 873
    const/4 v7, 0x1

    goto :goto_2

    .line 878
    :cond_4
    iget v12, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 879
    iget v12, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 881
    move v8, v9

    .line 884
    :cond_5
    iput v9, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 885
    const/4 v7, 0x1

    goto :goto_2

    .line 889
    .end local v4    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 890
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/color/widget/ColorPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 893
    :cond_7
    iget-object v12, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/color/widget/ColorViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 895
    if-eqz v7, :cond_a

    .line 897
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v2

    .line 898
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 899
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 900
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 901
    .local v6, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 902
    const/4 v12, 0x0

    iput v12, v6, Lcom/color/widget/ColorViewPager$LayoutParams;->widthFactor:F

    .line 898
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 906
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZ)V

    .line 907
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->requestLayout()V

    .line 909
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2736
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2737
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2753
    :goto_0
    return v4

    .line 2741
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v1

    .line 2742
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2743
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2744
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2745
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v3

    .line 2746
    .local v3, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2748
    const/4 v4, 0x1

    goto :goto_0

    .line 2742
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2753
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 763
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 764
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 765
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2188
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2189
    const/4 v1, 0x0

    .line 2191
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getOverScrollMode()I

    move-result v2

    .line 2192
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v5}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2195
    :cond_0
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2197
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2198
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v4

    .line 2200
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2201
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2202
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2203
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2204
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2206
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2208
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v4

    .line 2209
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2211
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2212
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2213
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2214
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2215
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2222
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2224
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->postInvalidateOnAnimation()V

    .line 2226
    :cond_3
    return-void

    .line 2218
    :cond_4
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2219
    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 752
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 756
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2316
    iget-boolean v9, p0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2317
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2320
    :cond_0
    iget-object v7, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2321
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/color/widget/ColorViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2322
    iget v9, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2323
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 2324
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v8

    .line 2325
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v5

    .line 2326
    .local v5, "scrollX":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->infoForCurrentScrollPosition()Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v1

    .line 2327
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v0, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2328
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2329
    .local v4, "pageOffset":F
    iget v9, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    iget v10, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2330
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/color/widget/ColorViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2332
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZI)V

    .line 2333
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->endDrag()V

    .line 2335
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    .line 2336
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2504
    const/4 v0, 0x0

    .line 2505
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2526
    :cond_0
    :goto_0
    return v0

    .line 2508
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2509
    goto :goto_0

    .line 2511
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2512
    goto :goto_0

    .line 2514
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2517
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2518
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2519
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2520
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2506
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2346
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2347
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2350
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2352
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2353
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2354
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v17

    .line 2356
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2357
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2359
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2360
    .local v11, "firstItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2361
    .local v12, "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v2, v11, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2362
    iget v2, v11, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2364
    :cond_1
    iget v2, v12, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2365
    iget v2, v12, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2368
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2369
    move/from16 v16, v13

    .line 2374
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2375
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 2376
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/color/widget/ColorViewPager;->pageScrolled(I)Z

    .line 2379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2380
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/color/widget/ColorViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2382
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2383
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2384
    return-void

    .line 2370
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2371
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2758
    new-instance v0, Lcom/color/widget/ColorViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/color/widget/ColorViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2773
    new-instance v0, Lcom/color/widget/ColorViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/color/widget/ColorViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2763
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/color/widget/ColorPagerAdapter;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 639
    iget v2, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 640
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorViewPager$LayoutParams;

    iget v1, v2, Lcom/color/widget/ColorViewPager$LayoutParams;->childIndex:I

    .line 641
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 639
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    return v0
.end method

.method getDragState()Z
    .locals 1

    .prologue
    .line 2949
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    return v0
.end method

.method getScrollState()I
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1342
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1343
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1344
    :cond_0
    const/4 v1, 0x0

    .line 1348
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1346
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1348
    :cond_2
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1332
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1333
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v3, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/color/widget/ColorPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1331
    .restart local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1337
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForCurrentScrollPosition()Lcom/color/widget/ColorViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2125
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v12

    .line 2126
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2127
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2128
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2129
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2130
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2131
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2133
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2134
    .local v3, "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2135
    iget-object v13, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2137
    .local v2, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2139
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mTempItem:Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2140
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 2141
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2142
    iget-object v13, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget v14, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    .line 2143
    add-int/lit8 v1, v1, -0x1

    .line 2145
    :cond_1
    iget v9, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 2147
    .local v9, "offset":F
    move v7, v9

    .line 2148
    .local v7, "leftBound":F
    iget v13, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2149
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2150
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2163
    .end local v2    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v3    # "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2126
    goto :goto_0

    .line 2156
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v3    # "lastItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2157
    iget v5, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2158
    move v4, v9

    .line 2159
    iget v6, v2, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    .line 2160
    move-object v3, v2

    .line 2134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/color/widget/ColorViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1353
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 1354
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v2, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1358
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1352
    .restart local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 346
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->setWillNotDraw(Z)V

    .line 347
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->setDescendantFocusability(I)V

    .line 348
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorViewPager;->setFocusable(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 350
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/color/widget/ColorViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    .line 351
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 352
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 354
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    .line 355
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mMinimumVelocity:I

    .line 356
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mMaximumVelocity:I

    .line 357
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 358
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 360
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mFlingDistance:I

    .line 361
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mCloseEnough:I

    .line 362
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/color/widget/ColorViewPager;->mDefaultGutterSize:I

    .line 364
    new-instance v3, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/color/widget/ColorViewPager$MyAccessibilityDelegate;-><init>(Lcom/color/widget/ColorViewPager;)V

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 366
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 367
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorViewPager;->setImportantForAccessibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2396
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1363
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 1365
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 375
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2230
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2233
    move-object/from16 v0, p0

    iget v13, v0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v13, :cond_2

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v10

    .line 2235
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v11

    .line 2237
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2238
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2239
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 2240
    .local v3, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v8, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    .line 2241
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2242
    .local v4, "itemCount":I
    iget v2, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2243
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/color/widget/ColorViewPager$ItemInfo;

    iget v6, v13, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2244
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2245
    :goto_1
    iget v13, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    goto :goto_1

    .line 2250
    :cond_0
    iget v13, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2251
    iget v13, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2252
    .local v1, "drawAt":F
    iget v13, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2259
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2265
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2270
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2254
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2255
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2256
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2244
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1787
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mDisableTouch:Z

    if-eqz v0, :cond_0

    .line 1788
    const/4 v0, 0x0

    .line 1930
    :goto_0
    return v0

    .line 1797
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1800
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1803
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    .line 1805
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 1806
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1810
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1815
    :cond_3
    if-eqz v6, :cond_5

    .line 1816
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1818
    const/4 v0, 0x1

    goto :goto_0

    .line 1820
    :cond_4
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1822
    const/4 v0, 0x0

    goto :goto_0

    .line 1826
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1921
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1922
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1924
    :cond_7
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1930
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1837
    :sswitch_0
    iget v7, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 1838
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1843
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1844
    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1845
    .local v10, "x":F
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1846
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1847
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1848
    .local v12, "y":F
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1851
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/color/widget/ColorViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1854
    iput v10, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 1855
    iput v12, p0, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    .line 1857
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1859
    :cond_8
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_b

    .line 1861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    .line 1862
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1863
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    .line 1864
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 1866
    iput v12, p0, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    .line 1867
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 1876
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1878
    invoke-direct {p0, v10}, Lcom/color/widget/ColorViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1879
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1864
    :cond_a
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1868
    :cond_b
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 1874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1890
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 1891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    .line 1892
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 1893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsUnableToDrag:Z

    .line 1895
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1896
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1899
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 1901
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    .line 1903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1904
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1906
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorViewPager;->completeScroll(Z)V

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1917
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1826
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v9

    .line 1504
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1505
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1506
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v19

    .line 1507
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v21

    .line 1508
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v20

    .line 1509
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingBottom()I

    move-result v18

    .line 1510
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v22

    .line 1512
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1516
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1517
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1518
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1519
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1520
    .local v17, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1521
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1522
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1523
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1524
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1525
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1527
    :pswitch_0
    move/from16 v6, v19

    .line 1542
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1544
    move/from16 v7, v21

    .line 1559
    :goto_2
    add-int v6, v6, v22

    .line 1560
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1563
    add-int/lit8 v10, v10, 0x1

    .line 1516
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1530
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1531
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1532
    goto :goto_1

    .line 1534
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1536
    goto :goto_1

    .line 1538
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1539
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1547
    :sswitch_0
    move/from16 v7, v21

    .line 1548
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1549
    goto :goto_2

    .line 1551
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1553
    goto :goto_2

    .line 1555
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1556
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1568
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1570
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1571
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1572
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1573
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1575
    .restart local v17    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1576
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1577
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1578
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1579
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1582
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->needsMeasure:Z

    .line 1583
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1586
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1589
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1594
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1570
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1600
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mTopPageBounds:I

    .line 1601
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mBottomPageBounds:I

    .line 1602
    move-object/from16 v0, p0

    iput v10, v0, Lcom/color/widget/ColorViewPager;->mDecorChildCount:I

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/widget/ColorViewPager;->scrollToItem(IZIZ)V

    .line 1607
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 1608
    return-void

    .line 1525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1374
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/color/widget/ColorViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/color/widget/ColorViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorViewPager;->setMeasuredDimension(II)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1378
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1379
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mGutterSize:I

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1383
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1390
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v16

    .line 1391
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1392
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1393
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1394
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1395
    .local v13, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1396
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1397
    .local v11, "hgrav":I
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1398
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1399
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1400
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1401
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1403
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1404
    const/high16 v18, 0x40000000    # 2.0f

    .line 1409
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1410
    .local v19, "widthSize":I
    move v9, v4

    .line 1411
    .local v9, "heightSize":I
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1412
    const/high16 v18, 0x40000000    # 2.0f

    .line 1413
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1414
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1417
    :cond_3
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1418
    const/high16 v8, 0x40000000    # 2.0f

    .line 1419
    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1420
    iget v9, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->height:I

    .line 1423
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1424
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1425
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1427
    if-eqz v7, :cond_9

    .line 1428
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1391
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1400
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1401
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1405
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1406
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1429
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1430
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1436
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mChildWidthMeasureSpec:I

    .line 1437
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mChildHeightMeasureSpec:I

    .line 1440
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mInLayout:Z

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 1442
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mInLayout:Z

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v16

    .line 1446
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1447
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1448
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1452
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1453
    .restart local v13    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1454
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/color/widget/ColorViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1456
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1446
    .end local v13    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1460
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1679
    move-object/from16 v0, p0

    iget v15, v0, Lcom/color/widget/ColorViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v12

    .line 1681
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v10

    .line 1682
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v11

    .line 1683
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v14

    .line 1684
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v4

    .line 1685
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1686
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1687
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1688
    .local v9, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1685
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1690
    :cond_1
    iget v15, v9, Lcom/color/widget/ColorViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1691
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1692
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1694
    :pswitch_0
    move v5, v10

    .line 1709
    :goto_2
    add-int/2addr v5, v12

    .line 1711
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1712
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1713
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1697
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1698
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1699
    goto :goto_2

    .line 1701
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1703
    goto :goto_2

    .line 1705
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1706
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    .line 1718
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1721
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1725
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v12

    .line 1727
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v4

    .line 1728
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1729
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1730
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1732
    .restart local v9    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1728
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1734
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1735
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorViewPager;->mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/color/widget/ColorViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1739
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/color/widget/ColorViewPager;->mCalledSuper:Z

    .line 1740
    return-void

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2709
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v1

    .line 2710
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2711
    const/4 v6, 0x0

    .line 2712
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2713
    .local v5, "increment":I
    move v2, v1

    .line 2719
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2720
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2721
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2722
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v4

    .line 2723
    .local v4, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2724
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2725
    const/4 v7, 0x1

    .line 2730
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2715
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2716
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2717
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2719
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2730
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1277
    instance-of v1, p1, Lcom/color/widget/ColorViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1278
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1293
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1282
    check-cast v0, Lcom/color/widget/ColorViewPager$SavedState;

    .line 1283
    .local v0, "ss":Lcom/color/widget/ColorViewPager$SavedState;
    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1285
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v1, :cond_1

    .line 1286
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v2, v0, Lcom/color/widget/ColorViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/color/widget/ColorViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/color/widget/ColorPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1287
    iget v1, v0, Lcom/color/widget/ColorViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1289
    :cond_1
    iget v1, v0, Lcom/color/widget/ColorViewPager$SavedState;->position:I

    iput v1, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    .line 1290
    iget-object v1, v0, Lcom/color/widget/ColorViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/color/widget/ColorViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1291
    iget-object v1, v0, Lcom/color/widget/ColorViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/color/widget/ColorViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1266
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1267
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/color/widget/ColorViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/color/widget/ColorViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1268
    .local v0, "ss":Lcom/color/widget/ColorViewPager$SavedState;
    iget v2, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    iput v2, v0, Lcom/color/widget/ColorViewPager$SavedState;->position:I

    .line 1269
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v2}, Lcom/color/widget/ColorPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/color/widget/ColorViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1272
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1464
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1467
    if-eq p1, p3, :cond_0

    .line 1468
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/color/widget/ColorViewPager;->recomputeScrollPosition(IIII)V

    .line 1470
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1935
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mDisableTouch:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1936
    const/16 v24, 0x0

    .line 2060
    :goto_0
    return v24

    .line 1939
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1943
    const/16 v24, 0x1

    goto :goto_0

    .line 1946
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_2

    .line 1949
    const/16 v24, 0x0

    goto :goto_0

    .line 1952
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_4

    .line 1954
    :cond_3
    const/16 v24, 0x0

    goto :goto_0

    .line 1957
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 1958
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1960
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1962
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1963
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1965
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2057
    :cond_6
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_7

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->postInvalidateOnAnimation()V

    .line 2060
    :cond_7
    const/16 v24, 0x1

    goto :goto_0

    .line 1967
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1968
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 1972
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 1973
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    .line 1974
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1978
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 1979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 1980
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 1981
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1982
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 1983
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1985
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_8

    cmpl-float v24, v21, v23

    if-lez v24, :cond_8

    .line 1987
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    .line 1988
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/color/widget/ColorViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1989
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 1991
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionY:F

    .line 1992
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    .line 1993
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1997
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_8

    .line 1998
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2003
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2005
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2006
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2007
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/color/widget/ColorViewPager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 2008
    goto/16 :goto_1

    .line 1989
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 2011
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2013
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2015
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 2016
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v19

    .line 2017
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v16

    .line 2018
    .local v16, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->infoForCurrentScrollPosition()Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v8

    .line 2019
    .local v8, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v7, v8, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 2020
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/color/widget/ColorViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2021
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2022
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2023
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2024
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/color/widget/ColorViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 2026
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZI)V

    .line 2028
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 2029
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->endDrag()V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v24

    if-nez v24, :cond_b

    :cond_a
    const/4 v11, 0x1

    .line 2033
    :goto_3
    goto/16 :goto_1

    .line 2032
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 2036
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/widget/ColorViewPager;->scrollToItem(IZIZ)V

    .line 2038
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    .line 2039
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->endDrag()V

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v24

    if-nez v24, :cond_d

    :cond_c
    const/4 v11, 0x1

    :goto_4
    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 2046
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2047
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2048
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    .line 2049
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2053
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/color/widget/ColorViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1965
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2622
    iget v1, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2623
    iget v1, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorViewPager;->setCurrentItem(IZ)V

    .line 2626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2630
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v2}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2631
    iget v1, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorViewPager;->setCurrentItem(IZ)V

    .line 2634
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->populate(I)V

    .line 913
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 916
    const/16 v21, 0x0

    .line 917
    .local v21, "oldCurInfo":Lcom/color/widget/ColorViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 918
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 920
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->infoForPosition(I)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v21

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerMenuDelegate;->updateDirection(Z)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerMenuDelegate;->onPageMenuSelected(I)V

    .line 924
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorViewPager;->mCurItem:I

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_4

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->sortChildDrawingOrder()V

    .line 1104
    :cond_1
    :goto_2
    return-void

    .line 919
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 921
    :cond_3
    const/16 v27, 0x0

    goto :goto_1

    .line 936
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->sortChildDrawingOrder()V

    goto :goto_2

    .line 945
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 952
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 953
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v4

    .line 954
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 956
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_6

    .line 959
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 963
    .local v24, "resName":Ljava/lang/String;
    :goto_3
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s ColorPagerAdapter changed the adapter\'s contents without calling ColorPagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 960
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 961
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_3

    .line 972
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_6
    const/4 v8, -0x1

    .line 973
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 974
    .local v9, "curItem":Lcom/color/widget/ColorViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_7

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 976
    .local v17, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 977
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    move-object/from16 v9, v17

    .line 982
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_7
    if-nez v9, :cond_8

    if-lez v4, :cond_8

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/color/widget/ColorViewPager;->addNewItem(II)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v9

    .line 989
    :cond_8
    if-eqz v9, :cond_b

    .line 990
    const/4 v13, 0x0

    .line 991
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 992
    .local v18, "itemIndex":I
    if-ltz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 993
    .restart local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v7

    .line 994
    .local v7, "clientWidth":I
    if-gtz v7, :cond_f

    const/16 v19, 0x0

    .line 996
    .local v19, "leftWidthNeeded":F
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_7
    if-ltz v23, :cond_9

    .line 997
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_13

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    .line 998
    if-nez v17, :cond_10

    .line 1024
    :cond_9
    iget v14, v9, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    .line 1025
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1026
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_a

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1028
    :goto_8
    if-gtz v7, :cond_18

    const/16 v25, 0x0

    .line 1030
    .local v25, "rightWidthNeeded":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_a
    move/from16 v0, v23

    if-ge v0, v4, :cond_a

    .line 1031
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1c

    move/from16 v0, v23

    if-le v0, v12, :cond_1c

    .line 1032
    if-nez v17, :cond_19

    .line 1057
    .end local v25    # "rightWidthNeeded":F
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/color/widget/ColorViewPager;->calculatePageOffsets(Lcom/color/widget/ColorViewPager$ItemInfo;ILcom/color/widget/ColorViewPager$ItemInfo;)V

    .line 1067
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_20

    iget-object v0, v9, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v6

    .line 1074
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_c
    move/from16 v0, v16

    if-ge v0, v6, :cond_21

    .line 1075
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1076
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 1077
    .local v20, "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->childIndex:I

    .line 1078
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, v20

    iget v0, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_c

    .line 1080
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v17

    .line 1081
    .restart local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    if-eqz v17, :cond_c

    .line 1082
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->widthFactor:F

    .line 1083
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->position:I

    .line 1074
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 974
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/color/widget/ColorViewPager$LayoutParams;
    .restart local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 992
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 994
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_f
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_6

    .line 1001
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_10
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_11

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1008
    add-int/lit8 v18, v18, -0x1

    .line 1009
    add-int/lit8 v8, v8, -0x1

    .line 1010
    if-ltz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 996
    :cond_11
    :goto_d
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_7

    .line 1010
    :cond_12
    const/16 v17, 0x0

    goto :goto_d

    .line 1012
    :cond_13
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1013
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1014
    add-int/lit8 v18, v18, -0x1

    .line 1015
    if-ltz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_d

    :cond_14
    const/16 v17, 0x0

    goto :goto_e

    .line 1017
    :cond_15
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorViewPager;->addNewItem(II)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v17

    .line 1018
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1019
    add-int/lit8 v8, v8, 0x1

    .line 1020
    if-ltz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_f
    goto :goto_d

    :cond_16
    const/16 v17, 0x0

    goto :goto_f

    .line 1027
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1028
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_9

    .line 1035
    .restart local v25    # "rightWidthNeeded":F
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_1a

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1030
    :cond_1a
    :goto_10
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a

    .line 1042
    :cond_1b
    const/16 v17, 0x0

    goto :goto_10

    .line 1044
    :cond_1c
    if-eqz v17, :cond_1e

    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 1045
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1046
    add-int/lit8 v18, v18, 0x1

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_10

    :cond_1d
    const/16 v17, 0x0

    goto :goto_11

    .line 1049
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorViewPager;->addNewItem(II)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v17

    .line 1050
    add-int/lit8 v18, v18, 0x1

    .line 1051
    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/color/widget/ColorViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_12
    goto :goto_10

    :cond_1f
    const/16 v17, 0x0

    goto :goto_12

    .line 1067
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 1087
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->sortChildDrawingOrder()V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1091
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/color/widget/ColorViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v17

    .line 1092
    .restart local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :goto_13
    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1093
    :cond_22
    const/16 v16, 0x0

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1095
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/color/widget/ColorViewPager;->infoForChild(Landroid/view/View;)Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v17

    .line 1096
    if-eqz v17, :cond_23

    move-object/from16 v0, v17

    iget v0, v0, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 1097
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1093
    :cond_23
    add-int/lit8 v16, v16, 0x1

    goto :goto_14

    .line 1091
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_24
    const/16 v17, 0x0

    goto :goto_13
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1328
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/color/widget/ColorPagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/color/widget/ColorPagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 399
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mObserver:Lcom/color/widget/ColorViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 401
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v4, p0}, Lcom/color/widget/ColorPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$ItemInfo;

    .line 404
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget v5, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/color/widget/ColorPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v4, p0}, Lcom/color/widget/ColorPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 407
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 408
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->removeNonDecorViews()V

    .line 409
    iput v7, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    .line 410
    invoke-virtual {p0, v7, v7}, Lcom/color/widget/ColorViewPager;->scrollTo(II)V

    .line 413
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    .line 414
    .local v2, "oldAdapter":Lcom/color/widget/ColorPagerAdapter;
    iput-object p1, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    .line 415
    iput v7, p0, Lcom/color/widget/ColorViewPager;->mExpectedAdapterCount:I

    .line 417
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v4, :cond_3

    .line 418
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mObserver:Lcom/color/widget/ColorViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 419
    new-instance v4, Lcom/color/widget/ColorViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/color/widget/ColorViewPager$PagerObserver;-><init>(Lcom/color/widget/ColorViewPager;Lcom/color/widget/ColorViewPager$1;)V

    iput-object v4, p0, Lcom/color/widget/ColorViewPager;->mObserver:Lcom/color/widget/ColorViewPager$PagerObserver;

    .line 421
    :cond_2
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mObserver:Lcom/color/widget/ColorViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    iput-boolean v7, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 423
    iget-boolean v3, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 424
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    .line 425
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v4}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/color/widget/ColorViewPager;->mExpectedAdapterCount:I

    .line 426
    iget v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 427
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget-object v5, p0, Lcom/color/widget/ColorViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/color/widget/ColorViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/color/widget/ColorPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 428
    iget v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZ)V

    .line 429
    const/4 v4, -0x1

    iput v4, p0, Lcom/color/widget/ColorViewPager;->mRestoredCurItem:I

    .line 430
    iput-object v8, p0, Lcom/color/widget/ColorViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 431
    iput-object v8, p0, Lcom/color/widget/ColorViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 439
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapterChangeListener:Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 440
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mAdapterChangeListener:Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/color/widget/ColorPagerAdapter;Lcom/color/widget/ColorPagerAdapter;)V

    .line 442
    :cond_4
    return-void

    .line 432
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 433
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->populate()V

    goto :goto_1

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->requestLayout()V

    goto :goto_1
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 620
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 621
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 623
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 635
    :cond_1
    :goto_1
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ColorViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 631
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ColorViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 480
    iput-boolean v1, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 481
    iget-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZ)V

    .line 482
    return-void

    :cond_0
    move v0, v1

    .line 481
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Lcom/color/widget/ColorViewPager;->mPopulatePending:Z

    .line 492
    invoke-virtual {p0, p1, p2, v0}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZ)V

    .line 493
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorViewPager;->setCurrentItemInternal(IZZI)V

    .line 501
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 504
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 505
    :cond_0
    invoke-direct {p0, v4}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 549
    :goto_0
    return-void

    .line 508
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    invoke-direct {p0, v4}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerMenuDelegate;->setSettleState()V

    .line 517
    if-gez p1, :cond_5

    .line 518
    const/4 p1, 0x0

    .line 522
    :cond_3
    :goto_1
    iget v2, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    .line 523
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 527
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 528
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorViewPager$ItemInfo;

    iput-boolean v0, v3, Lcom/color/widget/ColorViewPager$ItemInfo;->scrolling:Z

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 519
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 520
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 531
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    .line 533
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/color/widget/ColorViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 536
    iput p1, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    .line 537
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    iget v4, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorPagerMenuDelegate;->onPageMenuSelected(I)V

    .line 538
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 539
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 541
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 542
    iget-object v3, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/color/widget/ColorViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 544
    :cond_8
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_9
    move v0, v4

    .line 531
    goto :goto_3

    .line 546
    .restart local v0    # "dispatchSelected":Z
    :cond_a
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorViewPager;->populate(I)V

    .line 547
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/color/widget/ColorViewPager;->scrollToItem(IZIZ)V

    goto/16 :goto_0
.end method

.method public setDisableTouchEvent(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 2930
    iput-boolean p1, p0, Lcom/color/widget/ColorViewPager;->mDisableTouch:Z

    .line 2931
    return-void
.end method

.method setInternalPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)Lcom/color/widget/ColorViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    .line 652
    .local v0, "oldListener":Lcom/color/widget/ColorViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/color/widget/ColorViewPager;->mInternalPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    .line 653
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 685
    if-ge p1, v3, :cond_0

    .line 686
    const-string v0, "ColorViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 p1, 0x1

    .line 690
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 691
    iput p1, p0, Lcom/color/widget/ColorViewPager;->mOffscreenPageLimit:I

    .line 692
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 694
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/color/widget/ColorViewPager;->mAdapterChangeListener:Lcom/color/widget/ColorViewPager$OnAdapterChangeListener;

    .line 466
    return-void
.end method

.method public setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/color/widget/ColorViewPager;->mOnPageChangeListener:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    .line 589
    return-void
.end method

.method public setOnPageMenuChangeListener(Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mMenuDelegate:Lcom/color/widget/ColorPagerMenuDelegate;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorPagerMenuDelegate;->setOnPageMenuChangeListener(Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;)V

    .line 2922
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 705
    iget v0, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    .line 706
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    .line 708
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getWidth()I

    move-result v1

    .line 709
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/color/widget/ColorViewPager;->recomputeScrollPosition(IIII)V

    .line 711
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->requestLayout()V

    .line 712
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 730
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->refreshDrawableState()V

    .line 731
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->setWillNotDraw(Z)V

    .line 732
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->invalidate()V

    .line 733
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/color/widget/ColorViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/color/widget/ColorViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 604
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 605
    if-eqz p2, :cond_2

    move v0, v2

    .line 606
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/color/widget/ColorViewPager;->mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 607
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/color/widget/ColorViewPager;->mPageTransformer:Lcom/color/widget/ColorViewPager$PageTransformer;

    .line 608
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 609
    if-eqz v0, :cond_5

    .line 610
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrder:I

    .line 614
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 616
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 605
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 606
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 612
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/color/widget/ColorViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/widget/ColorViewPager;->smoothScrollTo(III)V

    .line 776
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 788
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 825
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollX()I

    move-result v2

    .line 792
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->getScrollY()I

    move-result v3

    .line 793
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 794
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 795
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 796
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->completeScroll(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->populate()V

    .line 798
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    goto :goto_0

    .line 802
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->setScrollingCacheEnabled(Z)V

    .line 803
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/color/widget/ColorViewPager;->setScrollState(I)V

    .line 805
    invoke-direct {p0}, Lcom/color/widget/ColorViewPager;->getClientWidth()I

    move-result v12

    .line 806
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 807
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 808
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/color/widget/ColorViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 811
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 812
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 813
    if-lez p3, :cond_2

    .line 814
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 821
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v13, Lcom/color/widget/ColorViewPager;->DURATION_SCALE:F

    mul-float/2addr v1, v13

    float-to-int v6, v1

    .line 823
    iget-object v1, p0, Lcom/color/widget/ColorViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 824
    invoke-virtual {p0}, Lcom/color/widget/ColorViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 816
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/color/widget/ColorViewPager;->mAdapter:Lcom/color/widget/ColorPagerAdapter;

    iget v14, p0, Lcom/color/widget/ColorViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/color/widget/ColorPagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 817
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/color/widget/ColorViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 818
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 746
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
