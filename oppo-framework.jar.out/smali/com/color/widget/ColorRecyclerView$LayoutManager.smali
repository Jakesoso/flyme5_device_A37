.class public abstract Lcom/color/widget/ColorRecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field mChildHelper:Lcom/color/widget/ColorChildHelper;

.field private mIsAttachedToWindow:Z

.field mRecyclerView:Lcom/color/widget/ColorRecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5796
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5798
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7904
    return-void
.end method

.method static synthetic access$1700(Lcom/color/widget/ColorRecyclerView$LayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .prologue
    .line 5789
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/color/widget/ColorRecyclerView$LayoutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .param p1, "x1"    # Z

    .prologue
    .line 5789
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/color/widget/ColorRecyclerView$LayoutManager;Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    .prologue
    .line 5789
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 6285
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 6286
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6288
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v3, p1}, Lcom/color/widget/ColorRecyclerView$State;->addToDisappearingList(Landroid/view/View;)V

    .line 6297
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 6298
    .local v2, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6299
    :cond_1
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6300
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->unScrap()V

    .line 6304
    :goto_1
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/color/widget/ColorChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6329
    :cond_2
    :goto_2
    iget-boolean v3, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    .line 6333
    iget-object v3, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6334
    iput-boolean v5, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6336
    :cond_3
    return-void

    .line 6295
    .end local v2    # "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v3, p1}, Lcom/color/widget/ColorRecyclerView$State;->removeFromDisappearingList(Landroid/view/View;)V

    goto :goto_0

    .line 6302
    .restart local v2    # "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_5
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 6308
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-ne v3, v4, :cond_9

    .line 6310
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, p1}, Lcom/color/widget/ColorChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6311
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_7

    .line 6312
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result p2

    .line 6314
    :cond_7
    if-ne v0, v6, :cond_8

    .line 6315
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5, p1}, Lcom/color/widget/ColorRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6319
    :cond_8
    if-eq v0, p2, :cond_2

    .line 6320
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    .line 6323
    .end local v0    # "currentIndex":I
    :cond_9
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lcom/color/widget/ColorChildHelper;->addView(Landroid/view/View;IZ)V

    .line 6324
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6325
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6326
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 6482
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorChildHelper;->detachViewFromParent(I)V

    .line 6483
    return-void
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z

    .prologue
    .line 6949
    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6950
    .local v2, "size":I
    const/4 v1, 0x0

    .line 6951
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 6953
    .local v0, "resultMode":I
    if-eqz p3, :cond_2

    .line 6954
    if-ltz p2, :cond_1

    .line 6955
    move v1, p2

    .line 6956
    const/high16 v0, 0x40000000    # 2.0f

    .line 6975
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 6960
    :cond_1
    const/4 v1, 0x0

    .line 6961
    const/4 v0, 0x0

    goto :goto_0

    .line 6964
    :cond_2
    if-ltz p2, :cond_3

    .line 6965
    move v1, p2

    .line 6966
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6967
    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 6968
    move v1, v2

    .line 6969
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6970
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 6971
    move v1, v2

    .line 6972
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7890
    new-instance v1, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;

    invoke-direct {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;-><init>()V

    .line 7891
    .local v1, "properties":Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;
    sget-object v2, Lcom/oppo/internal/R$styleable;->ColorRecyclerView:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7893
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->orientation:I

    .line 7894
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->spanCount:I

    .line 7895
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 7896
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 7897
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7898
    return-object v1
.end method

.method private onSmoothScrollerStopped(Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    .prologue
    .line 7566
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 7567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    .line 7569
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/color/widget/ColorRecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 6832
    invoke-static {p3}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 6833
    .local v0, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6847
    :goto_0
    return-void

    .line 6839
    :cond_0
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6841
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6842
    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 6844
    :cond_1
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6845
    invoke-virtual {p1, p3}, Lcom/color/widget/ColorRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6240
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 6241
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 6258
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6259
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6269
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 6270
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 6281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6282
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5829
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 5830
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 5832
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5842
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 5843
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5845
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6527
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6528
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 6516
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/color/widget/ColorRecyclerView$LayoutParams;)V

    .line 6517
    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/color/widget/ColorRecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .prologue
    .line 6495
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 6496
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6497
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$State;->addToDisappearingList(Landroid/view/View;)V

    .line 6501
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/color/widget/ColorChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6505
    return-void

    .line 6499
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$State;->removeFromDisappearingList(Landroid/view/View;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 7105
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-nez v1, :cond_0

    .line 7106
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 7111
    :goto_0
    return-void

    .line 7109
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7110
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 6141
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 6151
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/color/widget/ColorRecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .prologue
    .line 6056
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7420
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7435
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7450
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7465
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7480
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7495
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6824
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 6825
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6826
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6827
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/color/widget/ColorRecyclerView$Recycler;ILandroid/view/View;)V

    .line 6825
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6829
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6566
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6567
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/color/widget/ColorRecyclerView$Recycler;ILandroid/view/View;)V

    .line 6568
    return-void
.end method

.method public detachAndScrapViewAt(ILcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6580
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6581
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/color/widget/ColorRecyclerView$Recycler;ILandroid/view/View;)V

    .line 6582
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6453
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6454
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 6455
    invoke-direct {p0, v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6457
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6475
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6476
    return-void
.end method

.method dispatchAttachedToWindow(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 5872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5873
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onAttachedToWindow(Lcom/color/widget/ColorRecyclerView;)V

    .line 5874
    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 5877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5878
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 5879
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6221
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 6222
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 6224
    :cond_0
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 6422
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 6423
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6424
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6425
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v3

    .line 6426
    .local v3, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 6423
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6429
    :cond_1
    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6434
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Lcom/color/widget/ColorRecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/color/widget/ColorRecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6097
    new-instance v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/color/widget/ColorRecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6073
    instance-of v0, p1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 6074
    new-instance v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    check-cast p1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutParams;-><init>(Lcom/color/widget/ColorRecyclerView$LayoutParams;)V

    .line 6078
    :goto_0
    return-object v0

    .line 6075
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6076
    new-instance v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6078
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 6384
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6623
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6614
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mClipToPadding:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$5600(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 7785
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7788
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7084
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7048
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7002
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7003
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6988
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6989
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7072
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7060
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6724
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 6731
    :cond_0
    :goto_0
    return-object v0

    .line 6727
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 6728
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 6729
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 6641
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 6745
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getAdapter()Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    .line 6746
    .local v0, "a":Lcom/color/widget/ColorRecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    .line 6745
    .end local v0    # "a":Lcom/color/widget/ColorRecyclerView$Adapter;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6746
    .restart local v0    # "a":Lcom/color/widget/ColorRecyclerView$Adapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6405
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 6211
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 7538
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 7531
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 6677
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 1

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 6650
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 6668
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 1

    .prologue
    .line 6686
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 6659
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 7766
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7769
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7750
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 6632
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 6715
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6790
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 6793
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6795
    :cond_1
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 6796
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 6797
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorRecyclerView$State;->onViewIgnored(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 6798
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 5889
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 6705
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutHierarchical(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7802
    const/4 v0, 0x0

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .prologue
    .line 6198
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 7034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7035
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 7037
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 6891
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 6893
    .local v2, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, p1}, Lcom/color/widget/ColorRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6894
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 6895
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 6897
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 6900
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 6903
    .local v0, "heightSpec":I
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 6904
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 6919
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 6921
    .local v2, "lp":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, p1}, Lcom/color/widget/ColorRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6922
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 6923
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 6925
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 6929
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 6933
    .local v0, "heightSpec":I
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 6934
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 6547
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6548
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 6549
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6553
    invoke-virtual {p0, v0, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6554
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 6756
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 6757
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->offsetChildrenHorizontal(I)V

    .line 6759
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 6768
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 6769
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->offsetChildrenVertical(I)V

    .line 6771
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;

    .prologue
    .line 7319
    return-void
.end method

.method public onAddFocusables(Lcom/color/widget/ColorRecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/widget/ColorRecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 7347
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 5938
    return-void
.end method

.method public onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5947
    return-void
.end method

.method public onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 5961
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;)V

    .line 5962
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p4, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 7193
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 7654
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7655
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 7670
    move-object v0, p3

    .line 7672
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 7683
    :cond_0
    :goto_0
    return-void

    .line 7675
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 7680
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7681
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    goto :goto_0

    .line 7675
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 7602
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7604
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 7633
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7635
    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7636
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 7638
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7640
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7641
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 7643
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 7649
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 7650
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 7688
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 7690
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7691
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v2, v2, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7694
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 7712
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 7713
    .local v0, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_1
    move v3, v1

    move v5, v4

    .line 7714
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 7717
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 7718
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v0, v4

    .line 7712
    goto :goto_0

    .restart local v0    # "rowIndexGuess":I
    :cond_1
    move v2, v4

    .line 7713
    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 7213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 7369
    return-void
.end method

.method public onItemsChanged(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 7357
    return-void
.end method

.method public onItemsMoved(Lcom/color/widget/ColorRecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 7405
    return-void
.end method

.method public onItemsRemoved(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 7379
    return-void
.end method

.method public onItemsUpdated(Lcom/color/widget/ColorRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 7389
    return-void
.end method

.method public onLayoutChildren(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 6025
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6026
    return-void
.end method

.method public onMeasure(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 7513
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->defaultOnMeasure(II)V
    invoke-static {v0, p3, p4}, Lcom/color/widget/ColorRecyclerView;->access$5700(Lcom/color/widget/ColorRecyclerView;II)V

    .line 7514
    return-void
.end method

.method public onRequestChildFocus(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7281
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView;->isRunningLayoutOrScroll()Z

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

.method public onRequestChildFocus(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 7303
    invoke-virtual {p0, p1, p3, p4}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 7557
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 7551
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 7577
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 7807
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->performAccessibilityAction(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 7823
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-nez v4, :cond_1

    .line 7849
    :cond_0
    :goto_0
    return v2

    .line 7826
    :cond_1
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 7827
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_0

    .line 7845
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 7848
    :cond_3
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/color/widget/ColorRecyclerView;->scrollBy(II)V

    move v2, v3

    .line 7849
    goto :goto_0

    .line 7829
    :sswitch_0
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, v6}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7830
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 7832
    :cond_4
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, v6}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7833
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    .line 7837
    :sswitch_1
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7838
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 7840
    :cond_5
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4, v3}, Lcom/color/widget/ColorRecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7841
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    .line 7827
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 7854
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v0, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v2, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 7875
    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 5903
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 5904
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5906
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 6371
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 6372
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6373
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorChildHelper;->removeViewAt(I)V

    .line 6372
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6375
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 7592
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 7593
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7594
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7595
    invoke-virtual {p0, v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 7592
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7598
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6859
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->getScrapCount()I

    move-result v2

    .line 6861
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 6862
    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 6863
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v3

    .line 6864
    .local v3, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6861
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6867
    :cond_0
    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6868
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6870
    :cond_1
    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 6872
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->clearScrap()V

    .line 6873
    if-lez v2, :cond_3

    .line 6874
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 6876
    :cond_3
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6591
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 6592
    invoke-virtual {p2, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6593
    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 6602
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6603
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6604
    invoke-virtual {p2, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6605
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 5923
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 5924
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 5926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6537
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6538
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6347
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorChildHelper;->removeView(Landroid/view/View;)V

    .line 6348
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 6359
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6360
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6361
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorChildHelper;->removeViewAt(I)V

    .line 6363
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 7233
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    .line 7234
    .local v12, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    .line 7235
    .local v14, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 7236
    .local v13, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    .line 7237
    .local v11, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v2, v15, v16

    .line 7238
    .local v2, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v4, v15, v16

    .line 7239
    .local v4, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    .line 7240
    .local v3, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    .line 7242
    .local v1, "childBottom":I
    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 7243
    .local v8, "offScreenLeft":I
    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7244
    .local v10, "offScreenTop":I
    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7245
    .local v9, "offScreenRight":I
    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7251
    .local v7, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 7252
    if-eqz v9, :cond_1

    move v5, v9

    .line 7261
    .local v5, "dx":I
    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    .line 7264
    .local v6, "dy":I
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    .line 7265
    :cond_0
    if-eqz p4, :cond_5

    .line 7266
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/color/widget/ColorRecyclerView;->scrollBy(II)V

    .line 7270
    :goto_2
    const/4 v15, 0x1

    .line 7272
    :goto_3
    return v15

    .line 7252
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_1
    sub-int v15, v3, v13

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 7255
    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    .restart local v5    # "dx":I
    :goto_4
    goto :goto_0

    .end local v5    # "dx":I
    :cond_3
    sub-int v15, v2, v12

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    .line 7261
    .restart local v5    # "dx":I
    :cond_4
    sub-int v15, v4, v14

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 7268
    .restart local v6    # "dy":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/color/widget/ColorRecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 7272
    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 5816
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v0, :cond_0

    .line 5817
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 5819
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .prologue
    .line 7731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7732
    return-void
.end method

.method public scrollHorizontallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 6114
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6164
    return-void
.end method

.method public scrollVerticallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 6131
    const/4 v0, 0x0

    return v0
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 7524
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->access$5800(Lcom/color/widget/ColorRecyclerView;II)V

    .line 7525
    return-void
.end method

.method setRecyclerView(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    const/4 v0, 0x0

    .line 5801
    if-nez p1, :cond_0

    .line 5802
    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 5803
    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    .line 5809
    :goto_0
    return-void

    .line 5805
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 5806
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 6177
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    return-void
.end method

.method public startSmoothScroll(Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    .prologue
    .line 6186
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6188
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->stop()V

    .line 6190
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    .line 6191
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->start(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$LayoutManager;)V

    .line 6192
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6810
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 6811
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->stopIgnoring()V

    .line 6812
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->resetInternal()V

    .line 6813
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 6814
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 7560
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 7561
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->stop()V

    .line 7563
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 5868
    const/4 v0, 0x0

    return v0
.end method
