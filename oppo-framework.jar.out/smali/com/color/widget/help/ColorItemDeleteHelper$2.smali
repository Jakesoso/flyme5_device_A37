.class Lcom/color/widget/help/ColorItemDeleteHelper$2;
.super Ljava/lang/Object;
.source "ColorItemDeleteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemDeleteHelper;->postDispatchSwipe(Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

.field final synthetic val$anim:Lcom/color/widget/ColorDeleteAnimation;

.field final synthetic val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorDeleteAnimation;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iput-object p2, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->val$anim:Lcom/color/widget/ColorDeleteAnimation;

    iput-object p3, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->val$anim:Lcom/color/widget/ColorDeleteAnimation;

    iget-boolean v1, v1, Lcom/color/widget/ColorDeleteAnimation;->mOverridden:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->val$anim:Lcom/color/widget/ColorDeleteAnimation;

    iget-object v1, v1, Lcom/color/widget/ColorDeleteAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getItemAnimator()Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    move-result-object v0

    .line 70
    .local v0, "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->isRunning(Lcom/color/widget/ColorRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    # invokes: Lcom/color/widget/help/ColorItemDeleteHelper;->hasRunningRecoverAnim()Z
    invoke-static {v1}, Lcom/color/widget/help/ColorItemDeleteHelper;->access$100(Lcom/color/widget/help/ColorItemDeleteHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView;->getAdapter()Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView$Adapter;->delete(I)V

    .line 77
    .end local v0    # "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    :cond_1
    :goto_0
    return-void

    .line 74
    .restart local v0    # "animator":Lcom/color/widget/ColorRecyclerView$ItemAnimator;
    :cond_2
    iget-object v1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$2;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemDeleteHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
