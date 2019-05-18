.class Lcom/color/widget/help/ColorItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Lcom/color/widget/ColorRecyclerView$OnItemTouchListener;


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
    .line 286
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v5}, Lcom/color/widget/help/ColorItemTouchHelper;->access$400(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 294
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 295
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    .line 296
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    .line 297
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    .line 298
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->obtainVelocityTracker()V
    invoke-static {v5}, Lcom/color/widget/help/ColorItemTouchHelper;->access$500(Lcom/color/widget/help/ColorItemTouchHelper;)V

    .line 299
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 300
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    invoke-static {v5, p2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$600(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;)Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 301
    .local v1, "animation":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 302
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchX:F

    .line 303
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mInitialTouchY:F

    .line 304
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v6, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->endRecoverAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I
    invoke-static {v5, v6, v3}, Lcom/color/widget/help/ColorItemTouchHelper;->access$700(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)I

    .line 305
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mCallback:Lcom/color/widget/help/ColorItemTouchHelper$Callback;

    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v6

    iget-object v7, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lcom/color/widget/help/ColorItemTouchHelper$Callback;->clearView(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v6, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget v7, v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mActionState:I

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 309
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v5, p2, v6, v4}, Lcom/color/widget/help/ColorItemTouchHelper;->access$900(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 326
    .end local v1    # "animation":Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 329
    :cond_2
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 312
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 313
    :cond_4
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput v6, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    .line 314
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    const/4 v6, 0x0

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v4}, Lcom/color/widget/help/ColorItemTouchHelper;->access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 315
    :cond_5
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 318
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v5, v5, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 322
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 323
    iget-object v5, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v5, v0, p2, v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1000(Lcom/color/widget/help/ColorItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 329
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    invoke-static {v0, v1, v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/color/widget/ColorRecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x3e8

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 334
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$400(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 340
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 342
    :cond_0
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 346
    .local v0, "action":I
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 348
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 349
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v6, v0, p2, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1000(Lcom/color/widget/help/ColorItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 351
    :cond_3
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v5, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mSelected:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 352
    .local v5, "viewHolder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v5, :cond_1

    .line 355
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 370
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 373
    :cond_4
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    const/4 v7, 0x0

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->select(Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V
    invoke-static {v6, v7, v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$800(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;I)V

    .line 374
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iput v8, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 358
    :pswitch_2
    if-ltz v1, :cond_1

    .line 359
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v7, v7, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$900(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 360
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->moveIfNecessary(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    invoke-static {v6, v5}, Lcom/color/widget/help/ColorItemTouchHelper;->access$100(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 361
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$200(Lcom/color/widget/help/ColorItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$200(Lcom/color/widget/help/ColorItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 363
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    goto :goto_0

    .line 377
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 378
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 379
    .local v3, "pointerId":I
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v6, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 380
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 381
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1100(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v7}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/color/widget/ColorRecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 387
    :cond_5
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 388
    .local v2, "newPointerIndex":I
    :cond_6
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/color/widget/help/ColorItemTouchHelper;->mActivePointerId:I

    .line 389
    iget-object v6, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget-object v7, p0, Lcom/color/widget/help/ColorItemTouchHelper$2;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    iget v7, v7, Lcom/color/widget/help/ColorItemTouchHelper;->mSelectedFlags:I

    # invokes: Lcom/color/widget/help/ColorItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v4}, Lcom/color/widget/help/ColorItemTouchHelper;->access$900(Lcom/color/widget/help/ColorItemTouchHelper;Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
