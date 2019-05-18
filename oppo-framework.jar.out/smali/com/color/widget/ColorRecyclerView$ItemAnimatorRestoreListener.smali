.class Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0

    .prologue
    .line 9414
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "x1"    # Lcom/color/widget/ColorRecyclerView$1;

    .prologue
    .line 9414
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAddFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9426
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9427
    # invokes: Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$6500(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9428
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lcom/color/widget/ColorRecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$6400(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)Z

    .line 9430
    :cond_0
    return-void
.end method

.method public onChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 9442
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9470
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 9471
    iput-object v2, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 9472
    const/16 v0, -0x41

    # getter for: Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$6600(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setFlags(II)V

    .line 9476
    :cond_0
    iput-object v2, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 9477
    # invokes: Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$6500(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9478
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lcom/color/widget/ColorRecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$6400(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)Z

    .line 9480
    :cond_1
    return-void
.end method

.method public onMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9434
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9435
    # invokes: Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->access$6500(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9436
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lcom/color/widget/ColorRecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$6400(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)Z

    .line 9438
    :cond_0
    return-void
.end method

.method public onRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9418
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9419
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lcom/color/widget/ColorRecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$6400(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9420
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9422
    :cond_0
    return-void
.end method
