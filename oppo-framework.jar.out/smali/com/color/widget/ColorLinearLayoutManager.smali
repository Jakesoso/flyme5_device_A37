.class public Lcom/color/widget/ColorLinearLayoutManager;
.super Lcom/color/widget/ColorRecyclerView$LayoutManager;
.source "ColorLinearLayoutManager.java"

# interfaces
.implements Lcom/color/widget/help/ColorItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;,
        Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;,
        Lcom/color/widget/ColorLinearLayoutManager$SavedState;,
        Lcom/color/widget/ColorLinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

.field mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/color/widget/ColorLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .line 135
    new-instance v0, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;-><init>(Lcom/color/widget/ColorLinearLayoutManager;)V

    iput-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .line 153
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorLinearLayoutManager;->setOrientation(I)V

    .line 154
    invoke-virtual {p0, p3}, Lcom/color/widget/ColorLinearLayoutManager;->setReverseLayout(Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;-><init>()V

    .line 93
    iput-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .line 135
    new-instance v1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;-><init>(Lcom/color/widget/ColorLinearLayoutManager;)V

    iput-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .line 167
    invoke-static {p1, p2, p3, p4}, Lcom/color/widget/ColorLinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 168
    .local v0, "properties":Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->setOrientation(I)V

    .line 169
    iget-boolean v1, v0, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->setReverseLayout(Z)V

    .line 170
    iget-boolean v1, v0, Lcom/color/widget/ColorRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->setStackFromEnd(Z)V

    .line 171
    return-void
.end method

.method private computeScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1049
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return v4

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1053
    iget-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/color/widget/ColorScrollbarHelper;->computeScrollExtent(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/color/widget/ColorRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1038
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    :goto_0
    return v4

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1042
    iget-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/color/widget/ColorScrollbarHelper;->computeScrollOffset(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/color/widget/ColorRecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1060
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :goto_0
    return v4

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1064
    iget-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/color/widget/ColorScrollbarHelper;->computeScrollRange(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/color/widget/ColorRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 1439
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1460
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1443
    goto :goto_0

    .line 1445
    :sswitch_2
    iget v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1448
    :sswitch_3
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1451
    :sswitch_4
    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1454
    :sswitch_5
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 1439
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private findFirstReferenceChild(I)Landroid/view/View;
    .locals 2
    .param p1, "itemCount"    # I

    .prologue
    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1516
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .locals 2
    .param p1, "itemCount"    # I

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1533
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 834
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 835
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 836
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 837
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 842
    add-int/2addr p1, v0

    .line 843
    if-eqz p4, :cond_1

    .line 845
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 846
    if-lez v1, :cond_1

    .line 847
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorOrientationHelper;->offsetChildren(I)V

    .line 848
    add-int v2, v1, v0

    .line 851
    :goto_0
    return v2

    .line 839
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 851
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 859
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 860
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 861
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 863
    invoke-virtual {p0, v1, p2, p3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 867
    add-int/2addr p1, v0

    .line 868
    if-eqz p4, :cond_1

    .line 870
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 871
    if-lez v1, :cond_1

    .line 872
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorOrientationHelper;->offsetChildren(I)V

    .line 873
    sub-int v2, v0, v1

    .line 876
    :goto_0
    return v2

    .line 865
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 876
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;II)V
    .locals 13
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 632
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 638
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 639
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 640
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 641
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 642
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 643
    .local v6, "scrap":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 641
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 646
    :cond_2
    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 647
    .local v5, "position":I
    if-ge v5, v3, :cond_3

    const/4 v11, 0x1

    :goto_3
    iget-boolean v12, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_4

    const/4 v2, -0x1

    .line 649
    .local v2, "direction":I
    :goto_4
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 650
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    iget-object v12, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_2

    .line 647
    .end local v2    # "direction":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 652
    .restart local v2    # "direction":I
    :cond_5
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    iget-object v12, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    .line 660
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_6
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput-object v9, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 661
    if-lez v8, :cond_7

    .line 662
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 663
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 664
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v8, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 665
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 666
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 667
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 670
    .end local v1    # "anchor":Landroid/view/View;
    :cond_7
    if-lez v7, :cond_8

    .line 671
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 672
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 673
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v7, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 674
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 675
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 676
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 678
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 5

    .prologue
    .line 1745
    const-string v2, "LinearLayoutManager"

    const-string v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1747
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1748
    .local v0, "child":Landroid/view/View;
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1751
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const-string v2, "LinearLayoutManager"

    const-string v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    return-void
.end method

.method private recycleByLayoutState(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    .prologue
    .line 1283
    iget-boolean v0, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget v0, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1287
    iget v0, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorLinearLayoutManager;->recycleViewsFromEnd(Lcom/color/widget/ColorRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1289
    :cond_1
    iget v0, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorLinearLayoutManager;->recycleViewsFromStart(Lcom/color/widget/ColorRecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Lcom/color/widget/ColorRecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1177
    if-ne p2, p3, :cond_1

    .line 1192
    :cond_0
    return-void

    .line 1183
    :cond_1
    if-le p3, p2, :cond_2

    .line 1184
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1185
    invoke-virtual {p0, v0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->removeAndRecycleViewAt(ILcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 1184
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1188
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 1189
    invoke-virtual {p0, v0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->removeAndRecycleViewAt(ILcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 1188
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Lcom/color/widget/ColorRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1243
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorOrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1251
    .local v3, "limit":I
    iget-boolean v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1253
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1254
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1255
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleChildren(Lcom/color/widget/ColorRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1252
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1260
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 1261
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1262
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 1263
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleChildren(Lcom/color/widget/ColorRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1260
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Lcom/color/widget/ColorRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1203
    if-gez p2, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    move v3, p2

    .line 1212
    .local v3, "limit":I
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1213
    .local v1, "childCount":I
    iget-boolean v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1214
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1215
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1216
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1217
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleChildren(Lcom/color/widget/ColorRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1214
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1222
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1223
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1224
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 1225
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleChildren(Lcom/color/widget/ColorRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1222
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 338
    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v3

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 713
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    # invokes: Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;)Z
    invoke-static {p2, v0, p1}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->access$000(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 714
    invoke-virtual {p2, v0}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 715
    goto :goto_0

    .line 717
    :cond_2
    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_0

    .line 720
    iget-boolean v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 722
    .local v2, "referenceChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p2, v2}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 726
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 728
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_3
    move v1, v4

    .line 733
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 734
    iget-boolean v3, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    :goto_3
    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_4
    move v3, v4

    .line 739
    goto :goto_0

    .line 720
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6
    move v1, v3

    .line 728
    goto :goto_2

    .line 734
    .restart local v1    # "notVisible":Z
    :cond_7
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)Z
    .locals 11
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 749
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_1

    :cond_0
    move v6, v7

    .line 826
    :goto_0
    return v6

    .line 753
    :cond_1
    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 754
    :cond_2
    iput v10, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 755
    iput v9, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 759
    goto :goto_0

    .line 764
    :cond_3
    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 765
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 768
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 769
    iget-boolean v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4

    .line 770
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    iget v7, v7, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 773
    :cond_4
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    iget v7, v7, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 779
    :cond_5
    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_e

    .line 780
    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lcom/color/widget/ColorLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 781
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 782
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 783
    .local v1, "childSize":I
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_6

    .line 785
    invoke-virtual {p2}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_0

    .line 788
    :cond_6
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 790
    .local v4, "startGap":I
    if-gez v4, :cond_7

    .line 791
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 792
    iput-boolean v7, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 795
    :cond_7
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v7, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 797
    .local v2, "endGap":I
    if-gez v2, :cond_8

    .line 798
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 799
    iput-boolean v6, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 802
    :cond_8
    iget-boolean v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v7}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    :goto_1
    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_1

    .line 807
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_a
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 809
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 810
    .local v3, "pos":I
    iget v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_d

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 813
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_0

    .restart local v3    # "pos":I
    :cond_d
    move v5, v7

    .line 810
    goto :goto_2

    .line 818
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_e
    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 819
    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    .line 820
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 823
    :cond_f
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    .line 682
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->updateAnchorFromPendingData(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->updateAnchorFromChildren(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p2}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 699
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p2, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLcom/color/widget/ColorRecyclerView$State;)V
    .locals 7
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1104
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/color/widget/ColorLinearLayoutManager;->getExtraLayoutSpace(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v5

    iput v5, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 1105
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p1, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1107
    if-ne p1, v3, :cond_2

    .line 1108
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorOrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 1110
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1112
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_1

    :goto_0
    iput v2, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1114
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1115
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1117
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1130
    .local v1, "fastScrollSpace":I
    :goto_1
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p2, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1131
    if-eqz p3, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v1, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1135
    return-void

    .end local v1    # "fastScrollSpace":I
    :cond_1
    move v2, v3

    .line 1112
    goto :goto_0

    .line 1121
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1122
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 1123
    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_3

    :goto_2
    iput v3, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1125
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1126
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1127
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "fastScrollSpace":I
    goto :goto_1

    .end local v1    # "fastScrollSpace":I
    :cond_3
    move v3, v2

    .line 1123
    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 884
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 885
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 887
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 888
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 889
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 890
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 891
    return-void

    :cond_0
    move v0, v1

    .line 885
    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    .line 880
    iget v0, p1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 881
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 898
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v2}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 899
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 900
    iget-object v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 902
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 903
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 904
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 906
    return-void

    :cond_0
    move v0, v1

    .line 900
    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    .line 894
    iget v0, p1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 895
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1166
    invoke-super {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1168
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 282
    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

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
    .line 1019
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 436
    const/4 v2, 0x0

    .line 443
    :goto_0
    return-object v2

    .line 438
    :cond_0
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 439
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 440
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 441
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 439
    goto :goto_1

    .line 443
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollExtent(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollOffset(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollRange(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method createLayoutState()Lcom/color/widget/ColorLinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 927
    new-instance v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->createLayoutState()Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    if-nez v0, :cond_1

    .line 917
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/color/widget/ColorOrientationHelper;->createOrientationHelper(Lcom/color/widget/ColorRecyclerView$LayoutManager;I)Lcom/color/widget/ColorOrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    .line 919
    :cond_1
    return-void
.end method

.method fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/color/widget/ColorLinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1307
    iget v2, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1308
    .local v2, "start":I
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_1

    .line 1310
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_0

    .line 1311
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1313
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleByLayoutState(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;)V

    .line 1315
    :cond_1
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1316
    .local v1, "remainingSpace":I
    new-instance v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;-><init>()V

    .line 1317
    .local v0, "layoutChunkResult":Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;
    :cond_2
    if-lez v1, :cond_3

    invoke-virtual {p2, p3}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->hasMore(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1318
    invoke-virtual {v0}, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1319
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/color/widget/ColorLinearLayoutManager;->layoutChunk(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;)V

    .line 1320
    iget-boolean v3, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_4

    .line 1351
    :cond_3
    :goto_0
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1323
    :cond_4
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1330
    iget-boolean v3, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget-object v3, v3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_5

    invoke-virtual {p3}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1332
    :cond_5
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1334
    iget v3, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1337
    :cond_6
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_8

    .line 1338
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1339
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_7

    .line 1340
    iget v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1342
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorLinearLayoutManager;->recycleByLayoutState(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;)V

    .line 1344
    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1626
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1627
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1609
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1610
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1666
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1667
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1649
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/color/widget/ColorLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1650
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1673
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 1674
    .local v7, "start":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1675
    .local v3, "end":I
    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    .line 1676
    .local v5, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 1677
    .local v6, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_4

    .line 1678
    invoke-virtual {p0, v4}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1679
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1680
    .local v2, "childStart":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1681
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v7, :cond_3

    .line 1682
    if-eqz p3, :cond_0

    .line 1683
    if-lt v2, v7, :cond_2

    if-gt v1, v3, :cond_2

    .line 1693
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_0
    :goto_2
    return-object v0

    .line 1675
    .end local v4    # "i":I
    .end local v5    # "next":I
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 1685
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    .restart local v6    # "partiallyVisible":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    if-nez v6, :cond_3

    .line 1686
    move-object v6, v0

    .line 1677
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_4
    move-object v0, v6

    .line 1693
    goto :goto_2
.end method

.method findReferenceChild(III)Landroid/view/View;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1564
    const/4 v4, 0x0

    .line 1565
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1566
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1567
    .local v1, "boundsStart":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1568
    .local v0, "boundsEnd":I
    if-le p2, p1, :cond_1

    const/4 v2, 0x1

    .line 1569
    .local v2, "diff":I
    :goto_0
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-eq v3, p2, :cond_4

    .line 1570
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1571
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1572
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p3, :cond_0

    .line 1573
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1574
    if-nez v4, :cond_0

    .line 1575
    move-object v4, v7

    .line 1569
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1568
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1577
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v7}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_3

    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v7}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_5

    .line 1579
    :cond_3
    if-nez v5, :cond_0

    .line 1580
    move-object v5, v7

    goto :goto_2

    .line 1587
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_6

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v7, v5

    :cond_5
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_6
    move-object v5, v4

    goto :goto_3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 384
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 385
    const/4 v0, 0x0

    .line 396
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 388
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 389
    .local v3, "viewPosition":I
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 390
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 396
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Lcom/color/widget/ColorRecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 178
    new-instance v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/color/widget/ColorRecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpace()I

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 909
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;)V
    .locals 11
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "layoutState"    # Lcom/color/widget/ColorLinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 1356
    invoke-virtual {p3, p1}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->next(Lcom/color/widget/ColorRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1357
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1426
    :goto_0
    return-void

    .line 1366
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 1367
    .local v8, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1368
    iget-boolean v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-ne v2, v0, :cond_4

    .line 1370
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1382
    :goto_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/color/widget/ColorLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1383
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1385
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 1386
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1387
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v9, v0, v2

    .line 1388
    .local v9, "right":I
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v7, v9, v0

    .line 1393
    .local v7, "left":I
    :goto_3
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1394
    iget v6, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1395
    .local v6, "bottom":I
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v10, v0, v2

    .line 1414
    .local v10, "top":I
    :goto_4
    iget v0, v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v7, v0

    iget v0, v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;->topMargin:I

    add-int v3, v10, v0

    iget v0, v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v9, v0

    iget v0, v8, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/color/widget/ColorLinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1422
    invoke-virtual {v8}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lcom/color/widget/ColorRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1425
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_0

    .line 1368
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1372
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorLinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1375
    :cond_5
    iget-boolean v2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_5
    if-ne v2, v0, :cond_7

    .line 1377
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1375
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1379
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/color/widget/ColorLinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_2

    .line 1390
    :cond_8
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getPaddingLeft()I

    move-result v7

    .line 1391
    .restart local v7    # "left":I
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v9, v7, v0

    .restart local v9    # "right":I
    goto :goto_3

    .line 1397
    :cond_9
    iget v10, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1398
    .restart local v10    # "top":I
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v6, v0, v2

    .restart local v6    # "bottom":I
    goto :goto_4

    .line 1401
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_a
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getPaddingTop()I

    move-result v10

    .line 1402
    .restart local v10    # "top":I
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v6, v10, v0

    .line 1404
    .restart local v6    # "bottom":I
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 1405
    iget v9, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1406
    .restart local v9    # "right":I
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v7, v0, v2

    .restart local v7    # "left":I
    goto :goto_4

    .line 1408
    .end local v7    # "left":I
    .end local v9    # "right":I
    :cond_b
    iget v7, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 1409
    .restart local v7    # "left":I
    iget v0, p3, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lcom/color/widget/ColorLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v9, v0, v2

    .restart local v9    # "right":I
    goto :goto_4
.end method

.method onAnchorReady(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V
    .locals 0
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    .prologue
    .line 621
    return-void
.end method

.method public onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 213
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorLinearLayoutManager;->removeAndRecycleAllViews(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 215
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->clear()V

    .line 217
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p4, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1699
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1700
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1737
    :cond_0
    :goto_0
    return-object v2

    .line 1704
    :cond_1
    invoke-direct {p0, p2}, Lcom/color/widget/ColorLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1705
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_2

    move-object v2, v4

    .line 1706
    goto :goto_0

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1710
    if-ne v0, v8, :cond_3

    .line 1711
    invoke-direct {p0, p4}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1715
    .local v3, "referenceChild":Landroid/view/View;
    :goto_1
    if-nez v3, :cond_4

    move-object v2, v4

    .line 1720
    goto :goto_0

    .line 1713
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p4}, Lcom/color/widget/ColorLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/color/widget/ColorRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_1

    .line 1722
    :cond_4
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1723
    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v6}, Lcom/color/widget/ColorOrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1724
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutState(IIZLcom/color/widget/ColorRecyclerView$State;)V

    .line 1725
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v7, v5, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1726
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1727
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 1729
    if-ne v0, v8, :cond_6

    .line 1730
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1734
    .local v2, "nextFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move-object v2, v4

    .line 1735
    goto :goto_0

    .line 1732
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    move-object v0, p1

    .line 224
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 225
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 227
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)V
    .locals 17
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-virtual {v14}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 466
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    invoke-virtual {v14}, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->reset()V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    move/from16 v16, v0

    xor-int v15, v15, v16

    iput-boolean v15, v14, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/color/widget/ColorLinearLayoutManager;->updateAnchorInfoForLayout(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getExtraLayoutSpace(Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v6

    .line 486
    .local v6, "extra":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v14, :cond_6

    .line 487
    move v7, v6

    .line 488
    .local v7, "extraForEnd":I
    const/4 v8, 0x0

    .line 493
    .local v8, "extraForStart":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v14}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v14

    add-int/2addr v8, v14

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v14}, Lcom/color/widget/ColorOrientationHelper;->getEndPadding()I

    move-result v14

    add-int/2addr v7, v14

    .line 495
    invoke-virtual/range {p2 .. p2}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v15, -0x80000000

    if-eq v14, v15, :cond_1

    .line 500
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/color/widget/ColorLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 501
    .local v5, "existing":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v14, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v14}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v15, v5}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    sub-int v3, v14, v15

    .line 507
    .local v3, "current":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v13, v3, v14

    .line 513
    .local v13, "upcomingOffset":I
    :goto_1
    if-lez v13, :cond_8

    .line 514
    add-int/2addr v8, v13

    .line 522
    .end local v3    # "current":I
    .end local v5    # "existing":Landroid/view/View;
    .end local v13    # "upcomingOffset":I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/color/widget/ColorLinearLayoutManager;->onAnchorReady(Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 523
    invoke-virtual/range {p0 .. p1}, Lcom/color/widget/ColorLinearLayoutManager;->detachAndScrapAttachedViews(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual/range {p2 .. p2}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v15

    iput-boolean v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    iget-boolean v14, v14, Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v14, :cond_9

    .line 527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 531
    .local v12, "startOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v9, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 532
    .local v9, "firstElement":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v7, v14

    .line 536
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 542
    .local v4, "endOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_3

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v8, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 545
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 580
    .end local v9    # "firstElement":I
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v14, v15

    if-eqz v14, :cond_b

    .line 585
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v14}, Lcom/color/widget/ColorLinearLayoutManager;->fixLayoutEndGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I

    move-result v10

    .line 586
    .local v10, "fixOffset":I
    add-int/2addr v12, v10

    .line 587
    add-int/2addr v4, v10

    .line 588
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v12, v1, v2, v14}, Lcom/color/widget/ColorLinearLayoutManager;->fixLayoutStartGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I

    move-result v10

    .line 589
    add-int/2addr v12, v10

    .line 590
    add-int/2addr v4, v10

    .line 600
    .end local v10    # "fixOffset":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/color/widget/ColorLinearLayoutManager;->layoutForPredictiveAnimations(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;II)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v14

    if-nez v14, :cond_5

    .line 602
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 603
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    iput v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v14}, Lcom/color/widget/ColorOrientationHelper;->onLayoutComplete()V

    .line 606
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLastStackFromEnd:Z

    .line 607
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .line 611
    return-void

    .line 490
    .end local v4    # "endOffset":I
    .end local v7    # "extraForEnd":I
    .end local v8    # "extraForStart":I
    .end local v12    # "startOffset":I
    :cond_6
    move v8, v6

    .line 491
    .restart local v8    # "extraForStart":I
    const/4 v7, 0x0

    .restart local v7    # "extraForEnd":I
    goto/16 :goto_0

    .line 509
    .restart local v5    # "existing":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v14, v5}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v15}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v15

    sub-int v3, v14, v15

    .line 511
    .restart local v3    # "current":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v13, v14, v3

    .restart local v13    # "upcomingOffset":I
    goto/16 :goto_1

    .line 516
    :cond_8
    sub-int/2addr v7, v13

    goto/16 :goto_2

    .line 552
    .end local v3    # "current":I
    .end local v5    # "existing":Landroid/view/View;
    .end local v13    # "upcomingOffset":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 556
    .restart local v4    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v11, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 557
    .local v11, "lastElement":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_a

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v8, v14

    .line 561
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mAnchorInfo:Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/color/widget/ColorLinearLayoutManager$AnchorInfo;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v8, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v12, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    .line 567
    .restart local v12    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v14, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v14, :cond_3

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v7, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    .line 570
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v7, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v4, v14, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_3

    .line 592
    .end local v11    # "lastElement":I
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v12, v1, v2, v14}, Lcom/color/widget/ColorLinearLayoutManager;->fixLayoutStartGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I

    move-result v10

    .line 593
    .restart local v10    # "fixOffset":I
    add-int/2addr v12, v10

    .line 594
    add-int/2addr v4, v10

    .line 595
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v14}, Lcom/color/widget/ColorLinearLayoutManager;->fixLayoutEndGap(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;Z)I

    move-result v10

    .line 596
    add-int/2addr v12, v10

    .line 597
    add-int/2addr v4, v10

    goto/16 :goto_4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 258
    instance-of v0, p1, Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .line 260
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    .line 267
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 231
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 232
    new-instance v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;-><init>(Lcom/color/widget/ColorLinearLayoutManager$SavedState;)V

    .line 253
    :goto_0
    return-object v2

    .line 234
    :cond_0
    new-instance v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-direct {v2}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;-><init>()V

    .line 235
    .local v2, "state":Lcom/color/widget/ColorLinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 237
    iget-boolean v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 238
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 243
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 245
    .end local v1    # "refChild":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 246
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 247
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3, v1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4}, Lcom/color/widget/ColorOrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 251
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 1814
    const-string v5, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v5}, Lcom/color/widget/ColorLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1816
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1817
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1818
    .local v1, "myPos":I
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1819
    .local v2, "targetPos":I
    if-ge v1, v2, :cond_0

    move v0, v3

    .line 1821
    .local v0, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 1822
    if-ne v0, v3, :cond_1

    .line 1823
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, p2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v5, p1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1841
    :goto_1
    return-void

    .end local v0    # "dropDirection":I
    :cond_0
    move v0, v4

    .line 1819
    goto :goto_0

    .line 1828
    .restart local v0    # "dropDirection":I
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, p2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1833
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1834
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3, p2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1836
    :cond_3
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v3, p2}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v4, p1}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method scrollBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1138
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v4

    .line 1141
    :cond_1
    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput-boolean v5, v6, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1142
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->ensureLayoutState()V

    .line 1143
    if-lez p1, :cond_2

    move v3, v5

    .line 1144
    .local v3, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1145
    .local v0, "absDy":I
    invoke-direct {p0, v3, v0, v5, p3}, Lcom/color/widget/ColorLinearLayoutManager;->updateLayoutState(IIZLcom/color/widget/ColorRecyclerView$State;)V

    .line 1146
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iget v2, v5, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1147
    .local v2, "freeScroll":I
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v5, p3, v4}, Lcom/color/widget/ColorLinearLayoutManager;->fill(Lcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorLinearLayoutManager$LayoutState;Lcom/color/widget/ColorRecyclerView$State;Z)I

    move-result v5

    add-int v1, v2, v5

    .line 1148
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 1154
    if-le v0, v1, :cond_3

    mul-int v4, v3, v1

    .line 1155
    .local v4, "scrolled":I
    :goto_2
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/color/widget/ColorOrientationHelper;->offsetChildren(I)V

    .line 1159
    iget-object v5, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLayoutState:Lcom/color/widget/ColorLinearLayoutManager$LayoutState;

    iput v4, v5, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    goto :goto_0

    .line 1143
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "freeScroll":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "scrolled":I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "freeScroll":I
    .restart local v3    # "layoutDirection":I
    :cond_3
    move v4, p1

    .line 1154
    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 989
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 990
    const/4 v0, 0x0

    .line 992
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 946
    iput p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 947
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 948
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    .line 952
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 974
    iput p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPosition:I

    .line 975
    iput p2, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 976
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    .line 980
    return-void
.end method

.method public scrollVerticallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;
    .param p3, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1001
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/widget/ColorLinearLayoutManager;->scrollBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 319
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 323
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_1
    iput p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientation:I

    .line 327
    iput-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    .line 328
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 208
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 371
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mReverseLayout:Z

    .line 375
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1088
    iput-boolean p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1089
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    .line 294
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "state"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 422
    new-instance v0, Lcom/color/widget/ColorLinearLayoutManager$1;

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/color/widget/ColorLinearLayoutManager$1;-><init>(Lcom/color/widget/ColorLinearLayoutManager;Landroid/content/Context;)V

    .line 430
    .local v0, "linearSmoothScroller":Lcom/color/widget/ColorLinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/color/widget/ColorLinearSmoothScroller;->setTargetPosition(I)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->startSmoothScroll(Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V

    .line 432
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mPendingSavedState:Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1766
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 1802
    :cond_0
    return-void

    .line 1769
    :cond_1
    invoke-virtual {p0, v7}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1770
    .local v2, "lastPos":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {p0, v7}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1771
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    .line 1772
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1773
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1774
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1775
    .local v4, "pos":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1776
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_3

    .line 1777
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->logChildren()V

    .line 1778
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v6, v7

    goto :goto_1

    .line 1781
    :cond_3
    if-le v5, v3, :cond_4

    .line 1782
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->logChildren()V

    .line 1783
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1772
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1787
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/color/widget/ColorLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1788
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1789
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1790
    .restart local v4    # "pos":I
    iget-object v8, p0, Lcom/color/widget/ColorLinearLayoutManager;->mOrientationHelper:Lcom/color/widget/ColorOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/color/widget/ColorOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1791
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_7

    .line 1792
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->logChildren()V

    .line 1793
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_6

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    goto :goto_3

    .line 1796
    :cond_7
    if-ge v5, v3, :cond_8

    .line 1797
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager;->logChildren()V

    .line 1798
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1787
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
