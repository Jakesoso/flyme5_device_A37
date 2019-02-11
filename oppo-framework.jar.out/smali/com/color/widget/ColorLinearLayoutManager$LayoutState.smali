.class Lcom/color/widget/ColorLinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "ColorLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1907
    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mExtra:I

    .line 1914
    iput-boolean v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 1925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 5

    .prologue
    .line 1957
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1958
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1959
    iget-object v3, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 1960
    .local v2, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1958
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1963
    :cond_1
    iget v3, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1964
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 1965
    iget-object v3, v2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1968
    .end local v2    # "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .prologue
    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 1973
    return-void
.end method

.method public assignPositionFromScrapList(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "ignore"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 1976
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->nextViewHolderInLimitedList(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 1977
    .local v0, "closest":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1979
    return-void

    .line 1977
    :cond_0
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_0
.end method

.method hasMore(Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 1931
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 3

    .prologue
    .line 2010
    const-string v0, "LinearLayoutManager#LayoutState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layoutDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-void
.end method

.method next(Lcom/color/widget/ColorRecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1942
    invoke-direct {p0}, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    .line 1946
    :goto_0
    return-object v0

    .line 1944
    :cond_0
    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorRecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1945
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0
.end method

.method public nextViewHolderInLimitedList(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 8
    .param p1, "ignore"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 1982
    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1983
    .local v4, "size":I
    const/4 v0, 0x0

    .line 1984
    .local v0, "closest":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    const v1, 0x7fffffff

    .line 1988
    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1989
    iget-object v6, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 1990
    .local v5, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eq v5, p1, :cond_0

    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1988
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1993
    :cond_1
    invoke-virtual {v5}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    iget v7, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/color/widget/ColorLinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v2, v6, v7

    .line 1995
    .local v2, "distance":I
    if-ltz v2, :cond_0

    .line 1998
    if-ge v2, v1, :cond_0

    .line 1999
    move-object v0, v5

    .line 2000
    move v1, v2

    .line 2001
    if-nez v2, :cond_0

    .line 2006
    .end local v2    # "distance":I
    .end local v5    # "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_2
    return-object v0
.end method
