.class Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ColorItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;


# direct methods
.method private constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;)V
    .locals 0

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/help/ColorItemTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper;
    .param p2, "x1"    # Lcom/color/widget/help/ColorItemTouchHelper$1;

    .prologue
    .line 2183
    invoke-direct {p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/color/widget/help/ColorItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2187
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2203
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    invoke-static {v6, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$2400(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2204
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2205
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v3

    .line 2206
    .local v3, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 2207
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v7

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper$Callback;->hasDragFlag(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    invoke-static {v6, v7, v3}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->access$2100(Lcom/color/widget/help/ColorItemTouchHelper$Callback;Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2232
    .end local v3    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 2210
    .restart local v3    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2214
    .local v2, "pointerId":I
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    .line 2215
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2217
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2218
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2219
    .local v5, "y":F
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput v4, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    .line 2220
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput v5, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    .line 2221
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lcom/color/widget/help/ColorItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mDx:F

    .line 2226
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2227
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    const/4 v7, 0x2

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    invoke-static {v6, v3, v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 2191
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    invoke-static {v2, p1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$2400(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2192
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2193
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 2194
    .local v1, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 2195
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorRecyclerView;->playSoundEffect(I)V

    .line 2196
    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v2, v2, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    invoke-virtual {v2, v1}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->onItemClick(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 2199
    .end local v1    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    return v3
.end method
