.class Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;
.super Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 0

    .prologue
    .line 4216
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "x1"    # Lcom/color/widget/ColorRecyclerView$1;

    .prologue
    .line 4216
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/color/widget/ColorRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4219
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4220
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4224
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 4225
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4500(Lcom/color/widget/ColorRecyclerView;)V

    .line 4230
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0}, Lcom/color/widget/ColorAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    .line 4233
    :cond_0
    return-void

    .line 4227
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView$State;->access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z

    .line 4228
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4500(Lcom/color/widget/ColorRecyclerView;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4238
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->onItemRangeChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4239
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4241
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4246
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4247
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4249
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 4261
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4262
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/widget/ColorAdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4263
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4265
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4254
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mAdapterHelper:Lcom/color/widget/ColorAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4255
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4257
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mPostUpdatesOnAnimation:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4600(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mHasFixedSize:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4700(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mIsAttached:Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4800(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4269
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$4900(Lcom/color/widget/ColorRecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4274
    :goto_0
    return-void

    .line 4271
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v1, 0x1

    # setter for: Lcom/color/widget/ColorRecyclerView;->mAdapterUpdateDuringMeasure:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$5002(Lcom/color/widget/ColorRecyclerView;Z)Z

    .line 4272
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->requestLayout()V

    goto :goto_0
.end method
