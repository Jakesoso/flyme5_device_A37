.class Lcom/color/widget/ColorRecyclerView$5;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Lcom/color/widget/ColorAdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorRecyclerView;->initAdapterManager()V
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
    .line 609
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 652
    iget v0, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onItemsAdded(Lcom/color/widget/ColorRecyclerView;II)V

    goto :goto_0

    .line 657
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onItemsRemoved(Lcom/color/widget/ColorRecyclerView;II)V

    goto :goto_0

    .line 660
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onItemsUpdated(Lcom/color/widget/ColorRecyclerView;II)V

    goto :goto_0

    .line 663
    :pswitch_3
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onItemsMoved(Lcom/color/widget/ColorRecyclerView;III)V

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findViewHolder(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/color/widget/ColorRecyclerView;->findViewHolderForPosition(IZ)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v0

    .line 613
    .local v0, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 624
    .end local v0    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 618
    .restart local v0    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v2, v2, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 622
    goto :goto_0
.end method

.method public markViewHoldersUpdated(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->viewRangeUpdate(II)V

    .line 643
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView;->mItemsChanged:Z

    .line 644
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 676
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 677
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView;->offsetPositionRecordsForMove(II)V

    .line 683
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 684
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 629
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/color/widget/ColorRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 630
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 631
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # += operator for: Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, p2}, Lcom/color/widget/ColorRecyclerView$State;->access$1012(Lcom/color/widget/ColorRecyclerView$State;I)I

    .line 632
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/color/widget/ColorRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 637
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$5;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView;->mItemsAddedOrRemoved:Z

    .line 638
    return-void
.end method

.method public onDispatchFirstPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$5;->dispatchUpdate(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 649
    return-void
.end method

.method public onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$5;->dispatchUpdate(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 671
    return-void
.end method
