.class Lcom/color/widget/ColorRecyclerView$2;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
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
    .line 372
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$2;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$2;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$2;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mItemAnimator:Lcom/color/widget/ColorRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$2;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorRecyclerView;->mPostedAnimatorRunner:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$502(Lcom/color/widget/ColorRecyclerView;Z)Z

    .line 379
    return-void
.end method
