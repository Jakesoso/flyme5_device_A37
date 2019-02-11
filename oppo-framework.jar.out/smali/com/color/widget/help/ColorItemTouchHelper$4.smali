.class Lcom/color/widget/help/ColorItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemTouchHelper;->postDispatchSwipe(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;

.field final synthetic val$anim:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput-object p2, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$anim:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 659
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$anim:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$anim:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 662
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getItemAnimator()Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    move-result-object v0

    .line 666
    .local v0, "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->isRunning(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->hasRunningRecoverAnim()Z
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1800(Lcom/color/widget/help/ColorItemTouchHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$anim:Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget v3, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onSwiped(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 673
    .end local v0    # "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    :cond_1
    :goto_0
    return-void

    .line 670
    .restart local v0    # "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    :cond_2
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$4;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
