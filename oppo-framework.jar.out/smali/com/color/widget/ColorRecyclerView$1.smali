.class Lcom/color/widget/ColorRecyclerView$1;
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
    .line 251
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mFirstLayoutComplete:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$100(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mDataSetHasChangedAfterLayout:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$200(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 261
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorAdapterHelper;->preProcess()V

    .line 262
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayoutRequestEaten:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$300(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->rebindUpdatedViewHolders()V

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$1;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    goto :goto_0
.end method
