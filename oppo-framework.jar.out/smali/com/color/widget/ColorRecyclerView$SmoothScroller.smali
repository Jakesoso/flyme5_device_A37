.class public abstract Lcom/color/widget/ColorRecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/color/widget/ColorRecyclerView;

.field private final mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8719
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8734
    new-instance v0, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    .line 8735
    return-void
.end method

.method static synthetic access$2900(Lcom/color/widget/ColorRecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 8717
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 8827
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8828
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->stop()V

    .line 8830
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 8831
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8833
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v0, v1, :cond_4

    .line 8834
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;)V

    .line 8835
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/color/widget/ColorRecyclerView;)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->access$6300(Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;Lcom/color/widget/ColorRecyclerView;)V

    .line 8836
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->stop()V

    .line 8842
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v0, :cond_3

    .line 8843
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;)V

    .line 8844
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/color/widget/ColorRecyclerView;)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;->access$6300(Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;Lcom/color/widget/ColorRecyclerView;)V

    .line 8846
    :cond_3
    return-void

    .line 8838
    :cond_4
    const-string v0, "RecyclerView"

    const-string v1, "Passed over target position while smooth scrolling."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 8866
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 8859
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8852
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 8771
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 8823
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 8873
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView;->scrollToPosition(I)V

    .line 8874
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 8805
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 8813
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 8890
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 8892
    .local v0, "magnitute":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 8893
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 8894
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8877
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8878
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 8883
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/color/widget/ColorRecyclerView$State;Lcom/color/widget/ColorRecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 8764
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8765
    return-void
.end method

.method start(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "layoutManager"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 8750
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    .line 8751
    iput-object p2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .line 8752
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8755
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v1}, Lcom/color/widget/ColorRecyclerView$State;->access$6002(Lcom/color/widget/ColorRecyclerView$State;I)I

    .line 8756
    iput-boolean v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    .line 8757
    iput-boolean v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 8758
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 8759
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onStart()V

    .line 8760
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mViewFlinger:Lcom/color/widget/ColorRecyclerView$ViewFlinger;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$6100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 8761
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 8781
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 8795
    :goto_0
    return-void

    .line 8784
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onStop()V

    .line 8785
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    # setter for: Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView$State;->access$6002(Lcom/color/widget/ColorRecyclerView$State;I)I

    .line 8786
    iput-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 8787
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8788
    iput-boolean v3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 8789
    iput-boolean v3, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRunning:Z

    .line 8791
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    # invokes: Lcom/color/widget/ColorRecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V
    invoke-static {v0, p0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->access$6200(Lcom/color/widget/ColorRecyclerView$LayoutManager;Lcom/color/widget/ColorRecyclerView$SmoothScroller;)V

    .line 8793
    iput-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .line 8794
    iput-object v1, p0, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    goto :goto_0
.end method
