.class Lcom/color/widget/ColorRecyclerView$4;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Lcom/color/widget/ColorChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorRecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->addView(Landroid/view/View;I)V

    .line 534
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->dispatchChildAttached(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/color/widget/ColorRecyclerView;->access$600(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)V

    .line 535
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 573
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 574
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_0
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v1, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView;->access$800(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 585
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 590
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 591
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 592
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 603
    .end local v0    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->detachViewFromParent(I)V
    invoke-static {v2, p1}, Lcom/color/widget/ColorRecyclerView;->access$900(Lcom/color/widget/ColorRecyclerView;I)V

    .line 604
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 567
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$4;->getChildCount()I

    move-result v0

    .line 559
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 560
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorRecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/color/widget/ColorRecyclerView;->dispatchChildDetached(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/color/widget/ColorRecyclerView;->access$700(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView;->removeAllViews()V

    .line 563
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 544
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->dispatchChildDetached(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/color/widget/ColorRecyclerView;->access$700(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$4;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView;->removeViewAt(I)V

    .line 549
    return-void
.end method
