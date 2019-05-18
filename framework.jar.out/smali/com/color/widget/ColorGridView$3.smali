.class Lcom/color/widget/ColorGridView$3;
.super Ljava/lang/Object;
.source "ColorGridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorGridView;->initGetureDetecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field position:I

.field final synthetic this$0:Lcom/color/widget/ColorGridView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorGridView;)V
    .locals 1

    .prologue
    .line 295
    iput-object p1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorGridView$3;->position:I

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView$3;->downX:F

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorGridView$3;->downY:F

    .line 302
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget v2, p0, Lcom/color/widget/ColorGridView$3;->downX:F

    iget-object v3, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemWidth:I
    invoke-static {v3}, Lcom/color/widget/ColorGridView;->access$400(Lcom/color/widget/ColorGridView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView$3;->downY:F

    iget-object v4, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemHeight:I
    invoke-static {v4}, Lcom/color/widget/ColorGridView;->access$500(Lcom/color/widget/ColorGridView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/color/widget/ColorGridView;->access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;

    move-result-object v4

    # invokes: Lcom/color/widget/ColorGridView;->select(IILandroid/graphics/Rect;)V
    invoke-static {v1, v2, v3, v4}, Lcom/color/widget/ColorGridView;->access$600(Lcom/color/widget/ColorGridView;IILandroid/graphics/Rect;)V

    .line 303
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$700(Lcom/color/widget/ColorGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 304
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    const/4 v2, 0x0

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v1, v2}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 305
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorGridView$3;->downX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/color/widget/ColorGridView$3;->downY:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v1, v6}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 307
    iget v1, p0, Lcom/color/widget/ColorGridView$3;->downY:F

    iget-object v2, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemHeight:I
    invoke-static {v2}, Lcom/color/widget/ColorGridView;->access$500(Lcom/color/widget/ColorGridView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mColumnCounts:I
    invoke-static {v2}, Lcom/color/widget/ColorGridView;->access$800(Lcom/color/widget/ColorGridView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView$3;->downX:F

    iget-object v3, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemWidth:I
    invoke-static {v3}, Lcom/color/widget/ColorGridView;->access$400(Lcom/color/widget/ColorGridView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorGridView$3;->position:I

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v2, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mOnclickRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/color/widget/ColorGridView;->access$200(Lcom/color/widget/ColorGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/color/widget/ColorGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return v6

    .line 308
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_0

    .line 309
    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v1, v6}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 310
    iget v1, p0, Lcom/color/widget/ColorGridView$3;->downY:F

    iget-object v2, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemHeight:I
    invoke-static {v2}, Lcom/color/widget/ColorGridView;->access$500(Lcom/color/widget/ColorGridView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mColumnCounts:I
    invoke-static {v2}, Lcom/color/widget/ColorGridView;->access$800(Lcom/color/widget/ColorGridView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/color/widget/ColorGridView$3;->downX:F

    iget-object v3, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->mItemWidth:I
    invoke-static {v3}, Lcom/color/widget/ColorGridView;->access$400(Lcom/color/widget/ColorGridView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/color/widget/ColorGridView$3;->position:I

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0}, Lcom/color/widget/ColorGridView;->access$300(Lcom/color/widget/ColorGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0, v2}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 362
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    .line 364
    :cond_0
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget v1, p0, Lcom/color/widget/ColorGridView$3;->position:I

    const/4 v2, 0x1

    # invokes: Lcom/color/widget/ColorGridView;->click(IZ)V
    invoke-static {v0, v1, v2}, Lcom/color/widget/ColorGridView;->access$900(Lcom/color/widget/ColorGridView;IZ)V

    .line 344
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    new-instance v1, Lcom/color/widget/ColorGridView$3$2;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorGridView$3$2;-><init>(Lcom/color/widget/ColorGridView$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0}, Lcom/color/widget/ColorGridView;->access$300(Lcom/color/widget/ColorGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # setter for: Lcom/color/widget/ColorGridView;->isSelected:Z
    invoke-static {v0, v2}, Lcom/color/widget/ColorGridView;->access$302(Lcom/color/widget/ColorGridView;Z)Z

    .line 336
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    iget-object v1, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    # getter for: Lcom/color/widget/ColorGridView;->selRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/color/widget/ColorGridView;->access$100(Lcom/color/widget/ColorGridView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGridView;->invalidate(Landroid/graphics/Rect;)V

    .line 338
    :cond_0
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/color/widget/ColorGridView$3;->this$0:Lcom/color/widget/ColorGridView;

    new-instance v1, Lcom/color/widget/ColorGridView$3$1;

    invoke-direct {v1, p0}, Lcom/color/widget/ColorGridView$3$1;-><init>(Lcom/color/widget/ColorGridView$3;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/widget/ColorGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    const/4 v0, 0x0

    return v0
.end method
