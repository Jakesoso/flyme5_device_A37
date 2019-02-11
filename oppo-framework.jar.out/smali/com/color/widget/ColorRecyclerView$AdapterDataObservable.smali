.class Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9077
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 9079
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 9087
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9088
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;->onChanged()V

    .line 9087
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9090
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 9123
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9124
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 9123
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9126
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9097
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9098
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 9097
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9100
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9107
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9108
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 9107
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9110
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 9117
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9118
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 9117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9120
    :cond_0
    return-void
.end method
