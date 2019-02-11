.class public final Lcom/color/widget/ColorRecyclerView$Recycler;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 1

    .prologue
    .line 4399
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4405
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4408
    const/4 v0, 0x2

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$1800(Lcom/color/widget/ColorRecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 4399
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$5200(Lcom/color/widget/ColorRecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$5200(Lcom/color/widget/ColorRecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4707
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4709
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4716
    :cond_0
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 4725
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4726
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4727
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4728
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4725
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4731
    :cond_1
    if-nez p2, :cond_2

    .line 4743
    :goto_1
    return-void

    .line 4735
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4736
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4737
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4739
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 4740
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4741
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 4719
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4720
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4722
    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 4869
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 4871
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->dispatchViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4872
    iput-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 4873
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->putRecycledView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4874
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 4494
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 4495
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 4496
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4500
    :cond_0
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v5, p2}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 4501
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v5}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 4502
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistency detected. Invalid item position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v6, v6, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4506
    :cond_2
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iput-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 4507
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v5}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/color/widget/ColorRecyclerView$Adapter;->bindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 4508
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4509
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4510
    iput p2, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4513
    :cond_3
    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4515
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_4

    .line 4516
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 4517
    .local v3, "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4525
    :goto_0
    iput-boolean v4, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4526
    iput-object v0, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4527
    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_1
    iput-boolean v4, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4528
    return-void

    .line 4518
    .end local v3    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_4
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5, v1}, Lcom/color/widget/ColorRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4519
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v5, v1}, Lcom/color/widget/ColorRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 4520
    .restart local v3    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v5, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v3    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_5
    move-object v3, v1

    .line 4522
    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .restart local v3    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    goto :goto_0

    .line 4527
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4422
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4423
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 5235
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5236
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 5237
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5238
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearOldPosition()V

    .line 5236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5240
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5241
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 5242
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearOldPosition()V

    .line 5241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5244
    :cond_1
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5245
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5246
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 5247
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearOldPosition()V

    .line 5246
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5250
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4941
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 4549
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4550
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v2, v2, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4553
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4556
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(I)I

    move-result p1

    goto :goto_0
.end method

.method dispatchViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 5081
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mRecyclerListener:Lcom/color/widget/ColorRecyclerView$RecyclerListener;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$5500(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mRecyclerListener:Lcom/color/widget/ColorRecyclerView$RecyclerListener;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$5500(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/color/widget/ColorRecyclerView$RecyclerListener;->onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5084
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5085
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$Adapter;->onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5087
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    if-eqz v0, :cond_2

    .line 5088
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$State;->onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5091
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 4946
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .end local v0    # "changedScrapSize":I
    :cond_0
    move-object v1, v6

    .line 4971
    :goto_0
    return-object v1

    .line 4950
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4951
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4952
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 4953
    invoke-virtual {v1, v10}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 4950
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4958
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v7}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4959
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v7, v7, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v7, p1}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 4960
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v7}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 4961
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v7}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 4962
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 4963
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4964
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    .line 4965
    invoke-virtual {v1, v10}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 4962
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    move-object v1, v6

    .line 4971
    goto :goto_0
.end method

.method getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 5186
    new-instance v0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    .line 5188
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4936
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    .line 5032
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5033
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 5034
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5035
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5036
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 5037
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 5038
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5047
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5048
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setFlags(II)V

    .line 5077
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v2

    .line 5053
    .restart local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    if-nez p4, :cond_2

    .line 5055
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5056
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5057
    iget-object v4, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/color/widget/ColorRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5033
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5063
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5064
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 5065
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5066
    .restart local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    .line 5067
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_4

    .line 5068
    if-nez p4, :cond_0

    .line 5069
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5072
    :cond_4
    if-nez p4, :cond_5

    .line 5073
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5064
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 5077
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 8
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "dryRun"    # Z

    .prologue
    .line 4984
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4987
    .local v3, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4988
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4989
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_5

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # getter for: Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z
    invoke-static {v5}, Lcom/color/widget/ColorRecyclerView$State;->access$1500(Lcom/color/widget/ColorRecyclerView$State;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_5

    .line 4991
    :cond_0
    const/4 v5, -0x1

    if-eq p2, v5, :cond_4

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-eq v5, p2, :cond_4

    .line 4992
    const-string v5, "RecyclerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scrap view for position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isn\'t dirty but has"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wrong view type! (found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    if-nez p3, :cond_2

    .line 5003
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v5, p1, p2}, Lcom/color/widget/ColorChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v4

    .line 5004
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 5006
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v6, v4}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 5011
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5012
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    .line 5013
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5016
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_6

    .line 5017
    if-nez p3, :cond_3

    .line 5018
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5027
    .end local v0    # "cacheSize":I
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_3
    :goto_2
    return-object v1

    .line 4997
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_4
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_2

    .line 4987
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5012
    .restart local v0    # "cacheSize":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5027
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4578
    if-ltz p1, :cond_0

    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 4579
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid item position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "). Item count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4582
    :cond_1
    const/4 v1, 0x0

    .line 4583
    .local v1, "fromScrap":Z
    const/4 v2, 0x0

    .line 4585
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4586
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4587
    if-eqz v2, :cond_7

    move v1, v8

    .line 4590
    :cond_2
    :goto_0
    if-nez v2, :cond_5

    .line 4591
    const/4 v10, -0x1

    invoke-virtual {p0, p1, v10, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4592
    if-eqz v2, :cond_5

    .line 4593
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 4595
    if-nez p2, :cond_4

    .line 4598
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 4599
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4600
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v11, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11, v9}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4601
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->unScrap()V

    .line 4605
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4607
    :cond_4
    const/4 v2, 0x0

    .line 4613
    :cond_5
    :goto_2
    if-nez v2, :cond_f

    .line 4614
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v10, p1}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(I)I

    move-result v4

    .line 4615
    .local v4, "offsetPosition":I
    if-ltz v4, :cond_6

    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v10

    if-lt v4, v10, :cond_a

    .line 4616
    :cond_6
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistency detected. Invalid item position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v4    # "offsetPosition":I
    :cond_7
    move v1, v9

    .line 4587
    goto :goto_0

    .line 4602
    :cond_8
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4603
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 4609
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 4621
    .restart local v4    # "offsetPosition":I
    :cond_a
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemViewType(I)I

    move-result v6

    .line 4623
    .local v6, "type":I
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4624
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v6, p2}, Lcom/color/widget/ColorRecyclerView$Recycler;->getScrapViewForId(JIZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4625
    if-eqz v2, :cond_b

    .line 4627
    iput v4, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 4628
    const/4 v1, 0x1

    .line 4631
    :cond_b
    if-nez v2, :cond_d

    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheExtension:Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_d

    .line 4634
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheExtension:Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

    invoke-virtual {v10, p0, p1, v6}, Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/color/widget/ColorRecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v7

    .line 4636
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_d

    .line 4637
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v10, v7}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4638
    if-nez v2, :cond_c

    .line 4639
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4641
    :cond_c
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 4642
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4648
    .end local v7    # "view":Landroid/view/View;
    :cond_d
    if-nez v2, :cond_e

    .line 4655
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4656
    if-eqz v2, :cond_e

    .line 4657
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->resetInternal()V

    .line 4658
    # getter for: Lcom/color/widget/ColorRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z
    invoke-static {}, Lcom/color/widget/ColorRecyclerView;->access$5100()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 4659
    invoke-direct {p0, v2}, Lcom/color/widget/ColorRecyclerView$Recycler;->invalidateDisplayListInt(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4663
    :cond_e
    if-nez v2, :cond_f

    .line 4664
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v10, v11, v6}, Lcom/color/widget/ColorRecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v2

    .line 4670
    .end local v4    # "offsetPosition":I
    .end local v6    # "type":I
    :cond_f
    const/4 v0, 0x0

    .line 4671
    .local v0, "bound":Z
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4673
    iput p1, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4689
    :cond_10
    :goto_3
    iget-object v10, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4691
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_13

    .line 4692
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 4693
    .local v5, "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v10, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4700
    :goto_4
    iput-object v2, v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4701
    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    :goto_5
    iput-boolean v8, v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4702
    iget-object v8, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v8

    .line 4674
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_11
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4679
    :cond_12
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v10, p1}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(I)I

    move-result v4

    .line 4680
    .restart local v4    # "offsetPosition":I
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iput-object v10, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 4681
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v10}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v2, v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->bindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 4682
    iget-object v10, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/color/widget/ColorRecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4683
    const/4 v0, 0x1

    .line 4684
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v10, v10, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v10}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4685
    iput p1, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 4694
    .end local v4    # "offsetPosition":I
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v10, v3}, Lcom/color/widget/ColorRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 4695
    iget-object v10, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v10, v3}, Lcom/color/widget/ColorRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 4696
    .restart local v5    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v10, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v5    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_14
    move-object v5, v3

    .line 4698
    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .restart local v5    # "rvLayoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    goto :goto_4

    :cond_15
    move v8, v9

    .line 4701
    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 5253
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5254
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5255
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5256
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v4, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 5257
    .local v3, "layoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 5258
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5254
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5261
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 5220
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5221
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5222
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5223
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5224
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5225
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 5222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5230
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5232
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 5129
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5130
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5131
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5132
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 5137
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5130
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5140
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 5101
    if-ge p1, p2, :cond_1

    .line 5102
    move v5, p1

    .line 5103
    .local v5, "start":I
    move v1, p2

    .line 5104
    .local v1, "end":I
    const/4 v4, -0x1

    .line 5110
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5111
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 5112
    iget-object v6, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5113
    .local v2, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 5111
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5106
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 5107
    .restart local v5    # "start":I
    move v1, p1

    .line 5108
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 5116
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 5117
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5119
    :cond_3
    invoke-virtual {v2, v4, v7}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5126
    .end local v2    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 5149
    add-int v3, p1, p2

    .line 5150
    .local v3, "removedEnd":I
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5151
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5152
    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5153
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5154
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 5160
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5151
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5161
    :cond_1
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-lt v4, p1, :cond_0

    .line 5163
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 5164
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5168
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->clear()V

    .line 5096
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->getRecycledViewPool()Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;Z)V

    .line 5097
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4882
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 4883
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$5402(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$Recycler;)Lcom/color/widget/ColorRecyclerView$Recycler;

    .line 4884
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4885
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4886
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 4780
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4781
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4782
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4781
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4784
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4785
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 4802
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4806
    .local v0, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4807
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4808
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4758
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 4759
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4760
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4762
    :cond_0
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4763
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->unScrap()V

    .line 4767
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4768
    return-void

    .line 4764
    :cond_2
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4765
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4816
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4817
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isAttached:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move v5, v6

    goto :goto_0

    .line 4823
    :cond_2
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4824
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4828
    :cond_3
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4829
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4833
    :cond_4
    # invokes: Lcom/color/widget/ColorRecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$5300(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v4

    .line 4835
    .local v4, "transientStatePreventsRecycling":Z
    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v7}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    iget-object v7, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v7}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/color/widget/ColorRecyclerView$Adapter;->onFailedToRecycleView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    .line 4838
    .local v2, "forceRecycle":Z
    :goto_1
    const/4 v0, 0x0

    .line 4839
    .local v0, "cached":Z
    const/4 v3, 0x0

    .line 4840
    .local v3, "recycled":Z
    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4841
    :cond_5
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4843
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4844
    .local v1, "cachedViewSize":I
    iget v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheMax:I

    if-ne v1, v5, :cond_6

    if-lez v1, :cond_6

    .line 4845
    invoke-virtual {p0, v6}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4847
    :cond_6
    iget v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheMax:I

    if-ge v1, v5, :cond_7

    .line 4848
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4849
    const/4 v0, 0x1

    .line 4852
    .end local v1    # "cachedViewSize":I
    :cond_7
    if-nez v0, :cond_8

    .line 4853
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4854
    const/4 v3, 0x1

    .line 4862
    :cond_8
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v5, v5, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v5, p1}, Lcom/color/widget/ColorRecyclerView$State;->onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4863
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 4864
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 4866
    :cond_9
    return-void

    .end local v0    # "cached":Z
    .end local v2    # "forceRecycle":Z
    .end local v3    # "recycled":Z
    :cond_a
    move v2, v6

    .line 4835
    goto :goto_1
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4776
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 4777
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4898
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 4899
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setScrapContainer(Lcom/color/widget/ColorRecyclerView$Recycler;)V

    .line 4900
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2800(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4901
    :cond_0
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4902
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4906
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4913
    :goto_0
    return-void

    .line 4908
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4911
    :cond_3
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .prologue
    .line 5210
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5211
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5212
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5213
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5214
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 5211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5217
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lcom/color/widget/ColorRecyclerView$RecycledViewPool;)V
    .locals 2
    .param p1, "pool"    # Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 5176
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->detach()V

    .line 5178
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    .line 5179
    if-eqz p1, :cond_1

    .line 5180
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mRecyclerPool:Lcom/color/widget/ColorRecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getAdapter()Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->attach(Lcom/color/widget/ColorRecyclerView$Adapter;)V

    .line 5182
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

    .prologue
    .line 5171
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheExtension:Lcom/color/widget/ColorRecyclerView$ViewCacheExtension;

    .line 5172
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2
    .param p1, "viewCount"    # I

    .prologue
    .line 4431
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mViewCacheMax:I

    .line 4433
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4434
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4433
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4436
    :cond_0
    return-void
.end method

.method unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 4922
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2800(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4927
    :goto_0
    const/4 v0, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;
    invoke-static {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$5402(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$Recycler;)Lcom/color/widget/ColorRecyclerView$Recycler;

    .line 4928
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4929
    return-void

    .line 4925
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4458
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4475
    :cond_0
    :goto_0
    return v1

    .line 4461
    :cond_1
    iget v3, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 4462
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4465
    :cond_3
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4467
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    iget v4, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 4468
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 4469
    goto :goto_0

    .line 4472
    .end local v0    # "type":I
    :cond_4
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4473
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    iget v6, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5192
    add-int v4, p1, p2

    .line 5193
    .local v4, "positionEnd":I
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5194
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5195
    iget-object v5, p0, Lcom/color/widget/ColorRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 5196
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v1, :cond_1

    .line 5194
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5200
    :cond_1
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 5201
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 5202
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_1

    .line 5207
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method
