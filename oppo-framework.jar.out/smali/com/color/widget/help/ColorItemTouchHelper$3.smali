.class Lcom/color/widget/help/ColorItemTouchHelper$3;
.super Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
.source "ColorItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIFFFFILcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p2, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # F
    .param p6, "x4"    # F
    .param p7, "x5"    # F
    .param p8, "x6"    # F

    .prologue
    .line 592
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput p9, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 596
    iget-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->clearView(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 614
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1600(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1700(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/View;)V

    goto :goto_0

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$prevSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 607
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$3;->val$swipeDir:I

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->postDispatchSwipe(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V
    invoke-static {v0, p0, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1500(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;I)V

    goto :goto_1
.end method
