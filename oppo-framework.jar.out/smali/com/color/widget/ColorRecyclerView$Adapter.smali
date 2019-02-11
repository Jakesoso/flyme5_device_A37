.class public abstract Lcom/color/widget/ColorRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5304
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5305
    new-instance v0, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    .line 5306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5370
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 5371
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5372
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemId:J

    .line 5374
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setFlags(II)V

    .line 5377
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$Adapter;->onBindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 5378
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5357
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 5358
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemViewType:I

    .line 5359
    return-object v0
.end method

.method public delete(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5739
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must override delete(int position) "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5421
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5393
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 5531
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 5439
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 5618
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 5619
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5633
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5634
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5667
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5668
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 5682
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 5683
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5650
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5651
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5701
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5702
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5735
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5736
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5718
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5719
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 5577
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 5586
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5497
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5511
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5523
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5460
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    .prologue
    .line 5551
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 5552
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 5405
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5409
    :cond_0
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mHasStableIds:Z

    .line 5410
    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;

    .prologue
    .line 5565
    .local p0, "this":Lcom/color/widget/ColorRecyclerView$Adapter;, "Lcom/color/widget/ColorRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$Adapter;->mObservable:Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 5566
    return-void
.end method
