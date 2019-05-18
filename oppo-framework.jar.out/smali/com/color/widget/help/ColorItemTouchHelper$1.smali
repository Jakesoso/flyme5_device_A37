.class Lcom/color/widget/help/ColorItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->scrollIfNecessary()Z
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper;->access$000(Lcom/color/widget/help/ColorItemTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v0, v0, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v1, v1, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->moveIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    invoke-static {v0, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$100(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$200(Lcom/color/widget/help/ColorItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$1;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v0}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 247
    :cond_1
    return-void
.end method
