.class public Lcom/color/widget/help/ColorItemTouchHelper;
.super Lcom/color/widget/ColorRecyclerView$ItemDecoration;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;,
        Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/color/widget/help/ColorItemTouchHelper$SimpleCallback;,
        Lcom/color/widget/help/ColorItemTouchHelper$Callback;,
        Lcom/color/widget/help/ColorItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private final mOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/color/widget/ColorRecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 424
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$ItemDecoration;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    .line 172
    iput-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 201
    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 237
    new-instance v0, Lcom/color/widget/help/ColorItemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/color/widget/help/ColorItemTouchHelper$1;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;)V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 264
    iput-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    .line 271
    iput-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 278
    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I

    .line 285
    new-instance v0, Lcom/color/widget/help/ColorItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/color/widget/help/ColorItemTouchHelper$2;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;)V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    .line 425
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    .line 426
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/help/ColorItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->moveIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/color/widget/help/ColorItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/help/ColorItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper;->postDispatchSwipe(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/color/widget/help/ColorItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/color/widget/help/ColorItemTouchHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/color/widget/help/ColorItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/color/widget/help/ColorItemTouchHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I

    return p1
.end method

.method static synthetic access$2400(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/color/widget/help/ColorItemTouchHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;)Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper;->endRecoverAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/help/ColorItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .prologue
    .line 1232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1236
    new-instance v0, Lcom/color/widget/help/ColorItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/color/widget/help/ColorItemTouchHelper$5;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;)V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->setChildDrawingOrderCallback(Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;)V

    goto :goto_0
.end method

.method private checkHorizontalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x0

    .line 1187
    and-int/lit8 v6, p2, 0xc

    if-eqz v6, :cond_3

    .line 1188
    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    move v0, v4

    .line 1189
    .local v0, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1190
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 1192
    .local v3, "xVelocity":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 1193
    .local v2, "velDirFlag":I
    :goto_1
    and-int v4, v2, p2

    if-eqz v4, :cond_2

    if-ne v0, v2, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getMinFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1206
    .end local v0    # "dirFlag":I
    .end local v2    # "velDirFlag":I
    .end local v3    # "xVelocity":F
    :goto_2
    return v2

    :cond_0
    move v0, v5

    .line 1188
    goto :goto_0

    .restart local v0    # "dirFlag":I
    .restart local v3    # "xVelocity":F
    :cond_1
    move v2, v5

    .line 1192
    goto :goto_1

    .line 1199
    .end local v3    # "xVelocity":F
    :cond_2
    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v5, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getSwipeThreshold(Lcom/color/widget/ColorRecyclerView$ViewHolder;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1202
    .local v1, "threshold":F
    and-int v4, p2, v0

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    move v2, v0

    .line 1203
    goto :goto_2

    .line 1206
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .prologue
    .line 932
    iget-object v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v9}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 934
    :cond_0
    const/4 v9, 0x0

    .line 986
    :goto_0
    return v9

    .line 936
    :cond_1
    iget-object v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v9}, Lcom/color/widget/ColorRecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 937
    const/4 v9, 0x0

    goto :goto_0

    .line 939
    :cond_2
    invoke-direct {p0, p2}, Lcom/color/widget/help/ColorItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v6

    .line 940
    .local v6, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v6, :cond_3

    .line 941
    const/4 v9, 0x0

    goto :goto_0

    .line 943
    :cond_3
    iget-object v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v10, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v9, v10, v6}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v4

    .line 945
    .local v4, "movementFlags":I
    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    .line 948
    .local v5, "swipeFlags":I
    if-nez v5, :cond_4

    .line 949
    const/4 v9, 0x0

    goto :goto_0

    .line 954
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 955
    .local v7, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 958
    .local v8, "y":F
    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    .line 959
    .local v2, "dx":F
    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    .line 962
    .local v3, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 963
    .local v0, "absDx":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 965
    .local v1, "absDy":F
    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 966
    const/4 v9, 0x0

    goto :goto_0

    .line 968
    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    .line 969
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    .line 970
    const/4 v9, 0x0

    goto :goto_0

    .line 972
    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    .line 973
    const/4 v9, 0x0

    goto :goto_0

    .line 976
    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    .line 977
    const/4 v9, 0x0

    goto :goto_0

    .line 979
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    .line 980
    const/4 v9, 0x0

    goto :goto_0

    .line 983
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    iput v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 984
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    .line 985
    const/4 v9, 0x1

    invoke-direct {p0, v6, v9}, Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 986
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private checkVerticalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1210
    and-int/lit8 v6, p2, 0x3

    if-eqz v6, :cond_3

    .line 1211
    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    move v0, v4

    .line 1212
    .local v0, "dirFlag":I
    :goto_0
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1213
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 1215
    .local v3, "yVelocity":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 1216
    .local v2, "velDirFlag":I
    :goto_1
    and-int v4, v2, p2

    if-eqz v4, :cond_2

    if-ne v2, v0, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getMinFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1228
    .end local v0    # "dirFlag":I
    .end local v2    # "velDirFlag":I
    .end local v3    # "yVelocity":F
    :goto_2
    return v2

    :cond_0
    move v0, v5

    .line 1211
    goto :goto_0

    .restart local v0    # "dirFlag":I
    .restart local v3    # "yVelocity":F
    :cond_1
    move v2, v5

    .line 1215
    goto :goto_1

    .line 1222
    .end local v3    # "yVelocity":F
    :cond_2
    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v5, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getSwipeThreshold(Lcom/color/widget/ColorRecyclerView$ViewHolder;)F

    move-result v5

    mul-float v1, v4, v5

    .line 1224
    .local v1, "threshold":F
    and-int v4, p2, v0

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    move v2, v0

    .line 1225
    goto :goto_2

    .line 1228
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 6

    .prologue
    .line 465
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3, p0}, Lcom/color/widget/ColorRecyclerView;->removeItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;)V

    .line 466
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorRecyclerView;->removeOnItemTouchListener(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V

    .line 467
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3, p0}, Lcom/color/widget/ColorRecyclerView;->removeOnChildAttachStateChangeListener(Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;)V

    .line 469
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 470
    .local v1, "recoverAnimSize":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 471
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .line 472
    .local v2, "recoverAnimation":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v2, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->clearView(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 470
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 474
    .end local v2    # "recoverAnimation":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :cond_0
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 475
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 476
    const/4 v3, -0x1

    iput v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I

    .line 477
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->releaseVelocityTracker()V

    .line 478
    return-void
.end method

.method private endRecoverAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I
    .locals 5
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .prologue
    .line 866
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 867
    .local v2, "recoverAnimSize":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 868
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .line 869
    .local v0, "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 870
    iget-boolean v3, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 871
    # getter for: Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->access$1900(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->cancel()V

    .line 874
    :cond_0
    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 875
    iget-object v3, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 876
    # getter for: Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mAnimationType:I
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->access$2000(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;)I

    move-result v3

    .line 879
    .end local v0    # "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :goto_1
    return v3

    .line 867
    .restart local v0    # "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 879
    .end local v0    # "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1106
    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 1116
    :cond_0
    :goto_0
    return-object v0

    .line 1109
    :cond_1
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1110
    .local v2, "target":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1111
    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .line 1112
    .local v0, "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    iget-object v4, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v4, v2, :cond_0

    .line 1110
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :cond_2
    move-object v0, v3

    .line 1116
    goto :goto_0
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 992
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 993
    .local v5, "y":F
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 994
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v2, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 995
    .local v2, "selectedView":Landroid/view/View;
    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lcom/color/widget/help/ColorItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1006
    .end local v2    # "selectedView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 999
    :cond_0
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1000
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .line 1001
    .local v0, "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v3, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1002
    .local v3, "view":Landroid/view/View;
    iget v6, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Lcom/color/widget/help/ColorItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1003
    goto :goto_0

    .line 999
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1006
    .end local v0    # "anim":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6, v4, v5}, Lcom/color/widget/ColorRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private findSwapTargets(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 755
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 756
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mDistances:Ljava/util/List;

    .line 761
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    .line 762
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    .line 763
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    .line 764
    .local v21, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    .line 765
    .local v20, "right":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    .line 766
    .local v4, "bottom":I
    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    .line 767
    .local v5, "centerX":I
    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    .line 768
    .local v6, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v15

    .line 769
    .local v15, "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-virtual {v15}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 770
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_4

    .line 771
    invoke-virtual {v15, v12}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 772
    .local v17, "other":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 770
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 758
    .end local v4    # "bottom":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "left":I
    .end local v15    # "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .end local v16    # "margin":I
    .end local v17    # "other":Landroid/view/View;
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 775
    .restart local v4    # "bottom":I
    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .restart local v16    # "margin":I
    .restart local v17    # "other":Landroid/view/View;
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v18

    .line 780
    .local v18, "otherVh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->canDropOver(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 782
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 783
    .local v10, "dx":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 784
    .local v11, "dy":I
    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    .line 786
    .local v9, "dist":I
    const/16 v19, 0x0

    .line 787
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 788
    .local v8, "cnt":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v8, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_3

    .line 790
    add-int/lit8 v19, v19, 0x1

    .line 788
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 795
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 799
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v13    # "j":I
    .end local v17    # "other":Landroid/view/View;
    .end local v18    # "otherVh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v19    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 903
    iget-object v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v8}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v5

    .line 904
    .local v5, "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    iget v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-object v7

    .line 907
    :cond_1
    iget v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 908
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v8, v9

    .line 909
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v9, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v8, v9

    .line 910
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 911
    .local v0, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 913
    .local v1, "absDy":F
    iget v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    .line 916
    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-nez v8, :cond_0

    .line 918
    :cond_3
    cmpl-float v8, v1, v0

    if-lez v8, :cond_4

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-nez v8, :cond_0

    .line 921
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 922
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 925
    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v7, v2}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v7

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 4
    .param p1, "outPosition"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 494
    :goto_0
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 495
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 499
    :goto_1
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 678
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 679
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 680
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v2}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->access$1900(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    const/4 v2, 0x1

    .line 684
    :goto_1
    return v2

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 429
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method private moveIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getMoveThreshold(Lcom/color/widget/ColorRecyclerView$ViewHolder;)F

    move-result v9

    .line 814
    .local v9, "threshold":F
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 815
    .local v6, "x":I
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 816
    .local v7, "y":I
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 821
    :cond_2
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->findSwapTargets(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    .line 822
    .local v8, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->chooseDropTarget(Lcom/color/widget/ColorRecyclerView$ViewHolder;Ljava/util/List;II)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v4

    .line 827
    .local v4, "target":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v4, :cond_3

    .line 828
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 829
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 832
    :cond_3
    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 833
    .local v5, "toPosition":I
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 834
    .local v3, "fromPosition":I
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onMove(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onMoved(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;ILcom/color/widget/ColorRecyclerView$ViewHolder;III)V

    goto/16 :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 892
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 893
    return-void
.end method

.method private postDispatchSwipe(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    new-instance v1, Lcom/color/widget/help/ColorItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/color/widget/help/ColorItemTouchHelper$4;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 900
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1258
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1259
    iput-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1261
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mChildDrawingOrderCallback:Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->setChildDrawingOrderCallback(Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;)V

    .line 1265
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 27

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 692
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 693
    const/4 v5, 0x0

    .line 750
    :goto_0
    return v5

    .line 695
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 696
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    const-wide/16 v10, 0x0

    .line 698
    .local v10, "scrollDuration":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v22

    .line 699
    .local v22, "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 700
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 702
    :cond_1
    const/4 v8, 0x0

    .line 703
    .local v8, "scrollX":I
    const/16 v16, 0x0

    .line 704
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 705
    invoke-virtual/range {v22 .. v22}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    .line 707
    .local v12, "curX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    .line 708
    .local v21, "leftDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    .line 709
    move/from16 v8, v21

    .line 719
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    :cond_2
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 721
    .local v20, "curY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    .line 722
    .local v26, "topDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    .line 723
    move/from16 v16, v26

    .line 732
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v9}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v9

    invoke-virtual/range {v5 .. v11}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/color/widget/ColorRecyclerView;IIIJ)I

    move-result v8

    .line 737
    :cond_4
    if-eqz v16, :cond_5

    .line 738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/color/widget/ColorRecyclerView;IIIJ)I

    move-result v16

    .line 742
    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    .line 743
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    .line 744
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 746
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Lcom/color/widget/ColorRecyclerView;->scrollBy(II)V

    .line 747
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 696
    .end local v8    # "scrollX":I
    .end local v10    # "scrollDuration":J
    .end local v16    # "scrollY":I
    .end local v22    # "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    goto/16 :goto_1

    .line 710
    .restart local v8    # "scrollX":I
    .restart local v10    # "scrollDuration":J
    .restart local v12    # "curX":I
    .restart local v16    # "scrollY":I
    .restart local v21    # "leftDiff":I
    .restart local v22    # "lm":Lcom/color/widget/ColorRecyclerView$LayoutManager;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v23, v5, v6

    .line 714
    .local v23, "rightDiff":I
    if-lez v23, :cond_2

    .line 715
    move/from16 v8, v23

    goto/16 :goto_2

    .line 724
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    .end local v23    # "rightDiff":I
    .restart local v20    # "curY":I
    .restart local v26    # "topDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 727
    .local v4, "bottomDiff":I
    if-lez v4, :cond_3

    .line 728
    move/from16 v16, v4

    goto/16 :goto_3

    .line 749
    .end local v4    # "bottomDiff":I
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_b
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 750
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    .locals 22
    .param p1, "selected"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 652
    :goto_0
    return-void

    .line 538
    :cond_0
    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/color/widget/help/ColorItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 539
    move-object/from16 v0, p0

    iget v8, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    .line 541
    .local v8, "prevActionState":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/color/widget/help/ColorItemTouchHelper;->endRecoverAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I

    .line 542
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    .line 543
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 547
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/help/ColorItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 550
    :cond_1
    const/4 v5, 0x1

    mul-int/lit8 v14, p2, 0x8

    add-int/lit8 v14, v14, 0x8

    shl-int/2addr v5, v14

    add-int/lit8 v15, v5, -0x1

    .line 552
    .local v15, "actionStateMask":I
    const/16 v18, 0x0

    .line 554
    .local v18, "preventLayout":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    .line 555
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 556
    .local v6, "prevSelected":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v5, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 557
    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    const/4 v13, 0x0

    .line 559
    .local v13, "swipeDir":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/help/ColorItemTouchHelper;->releaseVelocityTracker()V

    .line 563
    sparse-switch v13, :sswitch_data_0

    .line 577
    const/4 v11, 0x0

    .line 578
    .local v11, "targetTranslateX":F
    const/4 v12, 0x0

    .line 580
    .local v12, "targetTranslateY":F
    :goto_2
    const/4 v5, 0x2

    if-ne v8, v5, :cond_7

    .line 581
    const/16 v7, 0x8

    .line 587
    .local v7, "animationType":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/color/widget/help/ColorItemTouchHelper;->getSelectedDxDy([F)V

    .line 588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x0

    aget v9, v5, v14

    .line 589
    .local v9, "currentTranslateX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x1

    aget v10, v5, v14

    .line 590
    .local v10, "currentTranslateY":F
    new-instance v4, Lcom/color/widget/help/ColorItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object v14, v6

    invoke-direct/range {v4 .. v14}, Lcom/color/widget/help/ColorItemTouchHelper$3;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIFFFFILcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 619
    .local v4, "rv":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v14, v7, v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getAnimationDuration(Lcom/color/widget/ColorRecyclerView;IFF)J

    move-result-wide v16

    .line 621
    .local v16, "duration":J
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v4}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->start()V

    .line 624
    const/16 v18, 0x1

    .line 629
    .end local v4    # "rv":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    .end local v7    # "animationType":I
    .end local v9    # "currentTranslateX":F
    .end local v10    # "currentTranslateY":F
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    .end local v16    # "duration":J
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 631
    .end local v6    # "prevSelected":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    if-eqz p1, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v5

    and-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    mul-int/lit8 v14, v14, 0x8

    shr-int/2addr v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    .line 635
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartX:F

    .line 636
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedStartY:F

    .line 637
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 639
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 643
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 644
    .local v19, "rvParent":Landroid/view/ViewParent;
    if-eqz v19, :cond_4

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 647
    :cond_4
    if-nez v18, :cond_5

    .line 648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 650
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onSelectedChanged(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 557
    .end local v19    # "rvParent":Landroid/view/ViewParent;
    .restart local v6    # "prevSelected":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/color/widget/help/ColorItemTouchHelper;->swipeIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v13

    goto/16 :goto_1

    .line 568
    .restart local v13    # "swipeDir":I
    :sswitch_0
    const/4 v12, 0x0

    .line 569
    .restart local v12    # "targetTranslateY":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v14}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v11, v5, v14

    .line 570
    .restart local v11    # "targetTranslateX":F
    goto/16 :goto_2

    .line 573
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    :sswitch_1
    const/4 v11, 0x0

    .line 574
    .restart local v11    # "targetTranslateX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v14}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v12, v5, v14

    .line 575
    .restart local v12    # "targetTranslateY":F
    goto/16 :goto_2

    .line 582
    :cond_7
    if-lez v13, :cond_8

    .line 583
    const/4 v7, 0x2

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 585
    .end local v7    # "animationType":I
    :cond_8
    const/4 v7, 0x4

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 626
    .end local v7    # "animationType":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    :cond_9
    iget-object v5, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/color/widget/help/ColorItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5, v14, v6}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->clearView(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 645
    .end local v6    # "prevSelected":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v19    # "rvParent":Landroid/view/ViewParent;
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 457
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSlop:I

    .line 458
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorRecyclerView;->addItemDecoration(Lcom/color/widget/ColorRecyclerView$ItemDecoration;)V

    .line 459
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOnItemTouchListener:Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView;->addOnItemTouchListenerSy(Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;)V

    .line 460
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorRecyclerView;->addOnChildAttachStateChangeListener(Lcom/color/widget/ColorRecyclerView$OnChildAttachStateChangeListener;)V

    .line 461
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->initGestureDetector()V

    .line 462
    return-void
.end method

.method private swipeIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const v8, 0xff00

    const/4 v5, 0x0

    .line 1141
    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 1183
    :cond_0
    :goto_0
    return v4

    .line 1144
    :cond_1
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6, v7, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->getMovementFlags(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v3

    .line 1145
    .local v3, "originalMovementFlags":I
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    .line 1148
    .local v0, "absoluteMovementFlags":I
    and-int v6, v0, v8

    shr-int/lit8 v1, v6, 0x8

    .line 1150
    .local v1, "flags":I
    if-nez v1, :cond_2

    move v4, v5

    .line 1151
    goto :goto_0

    .line 1153
    :cond_2
    and-int v6, v3, v8

    shr-int/lit8 v2, v6, 0x8

    .line 1156
    .local v2, "originalFlags":I
    iget v6, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1157
    invoke-direct {p0, p1, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->checkHorizontalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I

    move-result v4

    .local v4, "swipeDir":I
    if-lez v4, :cond_3

    .line 1159
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1161
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0

    .line 1166
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->checkVerticalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_4
    move v4, v5

    .line 1183
    goto :goto_0

    .line 1170
    .end local v4    # "swipeDir":I
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->checkVerticalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I

    move-result v4

    .restart local v4    # "swipeDir":I
    if-gtz v4, :cond_0

    .line 1173
    invoke-direct {p0, p1, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->checkHorizontalSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1175
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1177
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1120
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1121
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1124
    .local v1, "y":F
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 1125
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    .line 1126
    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    .line 1127
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 1129
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1130
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 1132
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1133
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    .line 1135
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1136
    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    .line 1138
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-ne v0, p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->destroyCallbacks()V

    .line 449
    :cond_2
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 450
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->setupCallbacks()V

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p4, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 885
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 886
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 843
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 847
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 848
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 849
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    .line 853
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 855
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/color/widget/help/ColorItemTouchHelper;->endRecoverAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I

    .line 856
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->clearView(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I

    .line 517
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 518
    .local v7, "dy":F
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/color/widget/help/ColorItemTouchHelper;->getSelectedDxDy([F)V

    .line 520
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 521
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Ljava/util/List;IFF)V
    invoke-static/range {v0 .. v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->access$1400(Lcom/color/widget/help/ColorItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 525
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 503
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 504
    .local v7, "dy":F
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/color/widget/help/ColorItemTouchHelper;->getSelectedDxDy([F)V

    .line 506
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 507
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Ljava/util/List;IFF)V
    invoke-static/range {v0 .. v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->access$1300(Lcom/color/widget/help/ColorItemTouchHelper$Callback;Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 511
    return-void
.end method

.method public startDrag(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper$Callback;->hasDragFlag(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    invoke-static {v0, v1, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->access$2100(Lcom/color/widget/help/ColorItemTouchHelper$Callback;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eq v0, v1, :cond_1

    .line 1049
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    :cond_1
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->obtainVelocityTracker()V

    .line 1054
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 1055
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public startSwipe(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper$Callback;->hasSwipeFlag(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    invoke-static {v0, v1, p1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->access$2200(Lcom/color/widget/help/ColorItemTouchHelper$Callback;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eq v0, v1, :cond_1

    .line 1096
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_1
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchHelper;->obtainVelocityTracker()V

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 1102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
