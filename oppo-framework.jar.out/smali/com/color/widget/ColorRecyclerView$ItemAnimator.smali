.class public abstract Lcom/color/widget/ColorRecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J

.field private mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 9506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 9509
    iput-wide v2, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mAddDuration:J

    .line 9510
    iput-wide v2, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 9511
    iput-wide v4, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 9512
    iput-wide v4, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 9514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 9928
    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
.end method

.method public abstract animateChange(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateMove(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateRemove(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
.end method

.method public final dispatchAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9771
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9772
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 9773
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;->onAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9775
    :cond_0
    return-void
.end method

.method public final dispatchAddStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9818
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onAddStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9819
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 9914
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9915
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9916
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 9915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9918
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9919
    return-void
.end method

.method public final dispatchChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 9788
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V

    .line 9789
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 9790
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;->onChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9792
    :cond_0
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 9831
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onChangeStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V

    .line 9832
    return-void
.end method

.method public final dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9759
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9760
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 9761
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;->onMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9763
    :cond_0
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9809
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onMoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9810
    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9747
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9748
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 9749
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;->onRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9751
    :cond_0
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9800
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->onRemoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9801
    return-void
.end method

.method public abstract endAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 9540
    iget-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 9576
    iget-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 9522
    iget-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 9558
    iget-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 9594
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .prologue
    .line 9886
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 9887
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 9888
    if-nez v0, :cond_1

    .line 9889
    invoke-interface {p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 9894
    :cond_0
    :goto_0
    return v0

    .line 9891
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9970
    return-void
.end method

.method public onAddStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9960
    return-void
.end method

.method public onChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10014
    return-void
.end method

.method public onChangeStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10002
    return-void
.end method

.method public onMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9990
    return-void
.end method

.method public onMoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9980
    return-void
.end method

.method public onRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9950
    return-void
.end method

.method public onRemoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9940
    return-void
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 9549
    iput-wide p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mAddDuration:J

    .line 9550
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 9585
    iput-wide p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 9586
    return-void
.end method

.method setListener(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 9626
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mListener:Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 9627
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 9531
    iput-wide p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 9532
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 9567
    iput-wide p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 9568
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 9614
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 9615
    return-void
.end method
