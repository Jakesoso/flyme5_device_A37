.class Lcom/color/widget/ColorRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Lcom/color/widget/ColorRecyclerView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorRecyclerView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3936
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3931
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3934
    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3937
    new-instance v0, Landroid/widget/OppoOverScroller;

    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/color/widget/ColorRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/color/widget/ColorRecyclerView;->access$2100()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    # setter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {p1, v0}, Lcom/color/widget/ColorRecyclerView;->access$2002(Lcom/color/widget/ColorRecyclerView;Landroid/widget/OppoOverScroller;)Landroid/widget/OppoOverScroller;

    .line 3938
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4173
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4174
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4175
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 4176
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 4177
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 4178
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v11}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v3

    .line 4179
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 4180
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4181
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    invoke-direct {p0, v6}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 4185
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 4186
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 4191
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 4175
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 4178
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v11}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 4188
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 4189
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 4188
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4124
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 4167
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4168
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 4169
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4128
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4129
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4131
    :cond_0
    return-void
.end method


# virtual methods
.method public Overfling(II)V
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4149
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v2, 0x2

    # invokes: Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView;->access$3700(Lcom/color/widget/ColorRecyclerView;I)V

    .line 4150
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4151
    if-gez p2, :cond_0

    move v9, v6

    .line 4152
    .local v9, "initialY":I
    :goto_0
    iput v9, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4153
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OppoOverScroller;->fling(IIIIIIII)V

    .line 4155
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4156
    return-void

    .end local v9    # "initialY":I
    :cond_0
    move v9, v1

    .line 4151
    goto :goto_0
.end method

.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4143
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v2, 0x2

    # invokes: Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView;->access$3700(Lcom/color/widget/ColorRecyclerView;I)V

    .line 4144
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4145
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OppoOverScroller;->fling(IIIIIIII)V

    .line 4146
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4147
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 4134
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4140
    :goto_0
    return-void

    .line 4137
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4138
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 46

    .prologue
    .line 3943
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 3944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->consumePendingUpdateOperations()V
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2200(Lcom/color/widget/ColorRecyclerView;)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v34

    .line 3948
    .local v34, "scroller":Landroid/widget/OppoOverScroller;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    iget-object v0, v3, Lcom/color/widget/ColorRecyclerView$LayoutManager;->mSmoothScroller:Lcom/color/widget/ColorRecyclerView$SmoothScroller;

    move-object/from16 v36, v0

    .line 3949
    .local v36, "smoothScroller":Lcom/color/widget/ColorRecyclerView$SmoothScroller;
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollType:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2300(Lcom/color/widget/ColorRecyclerView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 3953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2400(Lcom/color/widget/ColorRecyclerView;)I

    move-result v7

    .line 3954
    .local v7, "scrollY":I
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrY()I

    move-result v22

    .line 3955
    .local v22, "currY":I
    sub-int v23, v22, v7

    .line 3956
    .local v23, "deltaY":I
    move/from16 v5, v23

    .line 3957
    .local v5, "overScrollDistance":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I
    invoke-static {v11}, Lcom/color/widget/ColorRecyclerView;->access$2500(Lcom/color/widget/ColorRecyclerView;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/color/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3959
    if-gtz v7, :cond_3

    if-lez v22, :cond_3

    const/16 v20, 0x1

    .line 3960
    .local v20, "crossDown":Z
    :goto_0
    if-ltz v7, :cond_4

    if-gez v22, :cond_4

    const/16 v21, 0x1

    .line 3961
    .local v21, "crossUp":Z
    :goto_1
    if-nez v20, :cond_0

    if-eqz v21, :cond_2

    .line 3962
    :cond_0
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v0, v3

    move/from16 v41, v0

    .line 3963
    .local v41, "velocity":I
    if-eqz v21, :cond_1

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    .line 3966
    :cond_1
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->abortAnimation()V

    .line 3968
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v3, v1}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->Overfling(II)V

    .line 4108
    .end local v5    # "overScrollDistance":I
    .end local v7    # "scrollY":I
    .end local v20    # "crossDown":Z
    .end local v21    # "crossUp":Z
    .end local v22    # "currY":I
    .end local v23    # "deltaY":I
    .end local v41    # "velocity":I
    :cond_2
    :goto_2
    return-void

    .line 3959
    .restart local v5    # "overScrollDistance":I
    .restart local v7    # "scrollY":I
    .restart local v22    # "currY":I
    .restart local v23    # "deltaY":I
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 3960
    .restart local v20    # "crossDown":Z
    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .line 3974
    .end local v20    # "crossDown":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 3975
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_2

    .line 3980
    .end local v5    # "overScrollDistance":I
    .end local v7    # "scrollY":I
    .end local v22    # "currY":I
    .end local v23    # "deltaY":I
    :cond_6
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrX()I

    move-result v44

    .line 3981
    .local v44, "x":I
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrY()I

    move-result v45

    .line 3982
    .local v45, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v24, v44, v3

    .line 3983
    .local v24, "dx":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v25, v45, v3

    .line 3984
    .local v25, "dy":I
    const/16 v30, 0x0

    .line 3985
    .local v30, "hresult":I
    const/16 v43, 0x0

    .line 3986
    .local v43, "vresult":I
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3987
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 3988
    const/16 v33, 0x0

    .local v33, "overscrollX":I
    const/4 v10, 0x0

    .line 3989
    .local v10, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mAdapter:Lcom/color/widget/ColorRecyclerView$Adapter;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2600(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 3990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->eatRequestLayout()V

    .line 3991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->onEnterLayoutOrScroll()V
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2700(Lcom/color/widget/ColorRecyclerView;)V

    .line 3993
    if-eqz v24, :cond_7

    .line 3994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v6, v6, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move/from16 v0, v24

    invoke-virtual {v3, v0, v4, v6}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v30

    .line 3995
    sub-int v33, v24, v30

    .line 3997
    :cond_7
    if-eqz v25, :cond_8

    .line 3998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v4, v4, Lcom/color/widget/ColorRecyclerView;->mRecycler:Lcom/color/widget/ColorRecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v6, v6, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v6}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/color/widget/ColorRecyclerView$Recycler;Lcom/color/widget/ColorRecyclerView$State;)I

    move-result v43

    .line 3999
    sub-int v10, v25, v43

    .line 4001
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->supportsChangeAnimations()Z
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2800(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    invoke-virtual {v3}, Lcom/color/widget/ColorChildHelper;->getChildCount()I

    move-result v19

    .line 4004
    .local v19, "count":I
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 4005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mChildHelper:Lcom/color/widget/ColorChildHelper;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/color/widget/ColorChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 4006
    .local v42, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/color/widget/ColorRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v29

    .line 4007
    .local v29, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-eqz v29, :cond_a

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v3, :cond_a

    .line 4008
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v3, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v35, v0

    .line 4009
    .local v35, "shadowingView":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLeft()I

    move-result v32

    .line 4010
    .local v32, "left":I
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v37

    .line 4011
    .local v37, "top":I
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLeft()I

    move-result v3

    move/from16 v0, v32

    if-ne v0, v3, :cond_9

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v37

    if-eq v0, v3, :cond_a

    .line 4013
    :cond_9
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, v3, v32

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, v4, v37

    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 4004
    .end local v32    # "left":I
    .end local v35    # "shadowingView":Landroid/view/View;
    .end local v37    # "top":I
    :cond_a
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 4021
    .end local v19    # "count":I
    .end local v29    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v31    # "i":I
    .end local v42    # "view":Landroid/view/View;
    :cond_b
    if-eqz v36, :cond_c

    invoke-virtual/range {v36 .. v36}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {v36 .. v36}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    iget-object v3, v3, Lcom/color/widget/ColorRecyclerView;->mState:Lcom/color/widget/ColorRecyclerView$State;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$State;->getItemCount()I

    move-result v18

    .line 4024
    .local v18, "adapterSize":I
    if-nez v18, :cond_1e

    .line 4025
    invoke-virtual/range {v36 .. v36}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->stop()V

    .line 4033
    .end local v18    # "adapterSize":I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->onExitLayoutOrScroll()V
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3000(Lcom/color/widget/ColorRecyclerView;)V

    .line 4034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorRecyclerView;->resumeRequestLayout(Z)V

    .line 4036
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3100(Lcom/color/widget/ColorRecyclerView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 4037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 4039
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    .line 4041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    move/from16 v0, v24

    move/from16 v1, v25

    # invokes: Lcom/color/widget/ColorRecyclerView;->considerReleasingGlowsOnScroll(II)V
    invoke-static {v3, v0, v1}, Lcom/color/widget/ColorRecyclerView;->access$3200(Lcom/color/widget/ColorRecyclerView;II)V

    .line 4043
    :cond_f
    if-nez v33, :cond_10

    if-eqz v10, :cond_15

    .line 4045
    :cond_10
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v0, v3

    move/from16 v38, v0

    .line 4048
    .local v38, "vel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3300(Lcom/color/widget/ColorRecyclerView;)I

    move-result v7

    .line 4049
    .restart local v7    # "scrollY":I
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getCurrY()I

    move-result v22

    .line 4050
    .restart local v22    # "currY":I
    sub-int v3, v22, v7

    .line 4053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v4, 0x3

    # setter for: Lcom/color/widget/ColorRecyclerView;->mScrollType:I
    invoke-static {v3, v4}, Lcom/color/widget/ColorRecyclerView;->access$2302(Lcom/color/widget/ColorRecyclerView;I)I

    .line 4055
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3400(Lcom/color/widget/ColorRecyclerView;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2500(Lcom/color/widget/ColorRecyclerView;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/color/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 4057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->access$3500(Lcom/color/widget/ColorRecyclerView;)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mOverflingDistance:I
    invoke-static {v8}, Lcom/color/widget/ColorRecyclerView;->access$2500(Lcom/color/widget/ColorRecyclerView;)I

    move-result v8

    invoke-virtual {v3, v4, v6, v8}, Landroid/widget/OppoOverScroller;->notifyVerticalEdgeReached(III)V

    .line 4058
    const/16 v39, 0x0

    .line 4059
    .local v39, "velX":I
    move/from16 v0, v33

    move/from16 v1, v44

    if-eq v0, v1, :cond_11

    .line 4060
    if-gez v33, :cond_20

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v39, v0

    .line 4063
    :cond_11
    :goto_5
    const/16 v40, 0x0

    .line 4064
    .local v40, "velY":I
    move/from16 v0, v45

    if-eq v10, v0, :cond_12

    .line 4065
    if-gez v10, :cond_22

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v40, v0

    .line 4068
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 4070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v3, v0, v1}, Lcom/color/widget/ColorRecyclerView;->absorbGlows(II)V

    .line 4072
    :cond_13
    if-nez v39, :cond_14

    move/from16 v0, v33

    move/from16 v1, v44

    if-eq v0, v1, :cond_14

    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    if-nez v40, :cond_15

    move/from16 v0, v45

    if-eq v10, v0, :cond_15

    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_15

    .line 4077
    .end local v7    # "scrollY":I
    .end local v22    # "currY":I
    .end local v38    # "vel":I
    .end local v39    # "velX":I
    .end local v40    # "velY":I
    :cond_15
    if-nez v30, :cond_16

    if-eqz v43, :cond_17

    .line 4078
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    move/from16 v0, v30

    move/from16 v1, v43

    invoke-virtual {v3, v0, v1}, Lcom/color/widget/ColorRecyclerView;->dispatchOnScrolled(II)V

    .line 4081
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->awakenScrollBars()Z
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3600(Lcom/color/widget/ColorRecyclerView;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 4082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->invalidate()V

    .line 4085
    :cond_18
    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_24

    move/from16 v0, v43

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    const/16 v28, 0x1

    .line 4087
    .local v28, "fullyConsumedVertical":Z
    :goto_7
    if-eqz v24, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mLayout:Lcom/color/widget/ColorRecyclerView$LayoutManager;
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$1100(Lcom/color/widget/ColorRecyclerView;)Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_25

    move/from16 v0, v30

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    const/16 v27, 0x1

    .line 4089
    .local v27, "fullyConsumedHorizontal":Z
    :goto_8
    if-nez v24, :cond_19

    if-eqz v25, :cond_1a

    :cond_19
    if-nez v27, :cond_1a

    if-eqz v28, :cond_26

    :cond_1a
    const/16 v26, 0x1

    .line 4092
    .local v26, "fullyConsumedAny":Z
    :goto_9
    invoke-virtual/range {v34 .. v34}, Landroid/widget/OppoOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    if-nez v26, :cond_27

    .line 4093
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollType:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$2300(Lcom/color/widget/ColorRecyclerView;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1c

    .line 4094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v4, 0x0

    # invokes: Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V
    invoke-static {v3, v4}, Lcom/color/widget/ColorRecyclerView;->access$3700(Lcom/color/widget/ColorRecyclerView;I)V

    .line 4104
    .end local v10    # "overscrollY":I
    .end local v24    # "dx":I
    .end local v25    # "dy":I
    .end local v26    # "fullyConsumedAny":Z
    .end local v27    # "fullyConsumedHorizontal":Z
    .end local v28    # "fullyConsumedVertical":Z
    .end local v30    # "hresult":I
    .end local v33    # "overscrollX":I
    .end local v43    # "vresult":I
    .end local v44    # "x":I
    .end local v45    # "y":I
    :cond_1c
    :goto_a
    if-eqz v36, :cond_1d

    invoke-virtual/range {v36 .. v36}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4105
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v36

    # invokes: Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v0, v3, v4}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->access$2900(Lcom/color/widget/ColorRecyclerView$SmoothScroller;II)V

    .line 4107
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    goto/16 :goto_2

    .line 4026
    .restart local v10    # "overscrollY":I
    .restart local v18    # "adapterSize":I
    .restart local v24    # "dx":I
    .restart local v25    # "dy":I
    .restart local v30    # "hresult":I
    .restart local v33    # "overscrollX":I
    .restart local v43    # "vresult":I
    .restart local v44    # "x":I
    .restart local v45    # "y":I
    :cond_1e
    invoke-virtual/range {v36 .. v36}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v3

    move/from16 v0, v18

    if-lt v3, v0, :cond_1f

    .line 4027
    add-int/lit8 v3, v18, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4028
    sub-int v3, v24, v33

    sub-int v4, v25, v10

    move-object/from16 v0, v36

    # invokes: Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v0, v3, v4}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->access$2900(Lcom/color/widget/ColorRecyclerView$SmoothScroller;II)V

    goto/16 :goto_4

    .line 4030
    :cond_1f
    sub-int v3, v24, v33

    sub-int v4, v25, v10

    move-object/from16 v0, v36

    # invokes: Lcom/color/widget/ColorRecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v0, v3, v4}, Lcom/color/widget/ColorRecyclerView$SmoothScroller;->access$2900(Lcom/color/widget/ColorRecyclerView$SmoothScroller;II)V

    goto/16 :goto_4

    .line 4060
    .end local v18    # "adapterSize":I
    .restart local v7    # "scrollY":I
    .restart local v22    # "currY":I
    .restart local v38    # "vel":I
    .restart local v39    # "velX":I
    :cond_20
    if-lez v33, :cond_21

    move/from16 v39, v38

    goto/16 :goto_5

    :cond_21
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 4065
    .restart local v40    # "velY":I
    :cond_22
    if-lez v10, :cond_23

    move/from16 v40, v38

    goto/16 :goto_6

    :cond_23
    const/16 v40, 0x0

    goto/16 :goto_6

    .line 4085
    .end local v7    # "scrollY":I
    .end local v22    # "currY":I
    .end local v38    # "vel":I
    .end local v39    # "velX":I
    .end local v40    # "velY":I
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 4087
    .restart local v28    # "fullyConsumedVertical":Z
    :cond_25
    const/16 v27, 0x0

    goto :goto_8

    .line 4089
    .restart local v27    # "fullyConsumedHorizontal":Z
    :cond_26
    const/16 v26, 0x0

    goto :goto_9

    .line 4097
    .restart local v26    # "fullyConsumedAny":Z
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_a

    .line 4099
    .end local v10    # "overscrollY":I
    .end local v24    # "dx":I
    .end local v25    # "dy":I
    .end local v26    # "fullyConsumedAny":Z
    .end local v27    # "fullyConsumedHorizontal":Z
    .end local v28    # "fullyConsumedVertical":Z
    .end local v30    # "hresult":I
    .end local v33    # "overscrollX":I
    .end local v43    # "vresult":I
    .end local v44    # "x":I
    .end local v45    # "y":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v3}, Lcom/color/widget/ColorRecyclerView;->access$3800(Lcom/color/widget/ColorRecyclerView;)I

    move-result v3

    if-eqz v3, :cond_1c

    .line 4100
    invoke-virtual/range {p0 .. p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->startSpringback()V

    goto :goto_a
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 4159
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4160
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4196
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 4163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4164
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 4199
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4400(Lcom/color/widget/ColorRecyclerView;)Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eq v0, p4, :cond_0

    .line 4200
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # setter for: Lcom/color/widget/ColorRecyclerView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v0, p4}, Lcom/color/widget/ColorRecyclerView;->access$4402(Lcom/color/widget/ColorRecyclerView;Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    .line 4201
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    new-instance v2, Landroid/widget/OppoOverScroller;

    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v3}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView;->access$2002(Lcom/color/widget/ColorRecyclerView;Landroid/widget/OppoOverScroller;)Landroid/widget/OppoOverScroller;

    .line 4203
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    const/4 v2, 0x2

    # invokes: Lcom/color/widget/ColorRecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Lcom/color/widget/ColorRecyclerView;->access$3700(Lcom/color/widget/ColorRecyclerView;I)V

    .line 4204
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4205
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller;->startScroll(IIIII)V

    .line 4206
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4207
    return-void
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4110
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollX:I
    invoke-static {v1}, Lcom/color/widget/ColorRecyclerView;->access$3900(Lcom/color/widget/ColorRecyclerView;)I

    move-result v1

    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScrollY:I
    invoke-static {v2}, Lcom/color/widget/ColorRecyclerView;->access$4000(Lcom/color/widget/ColorRecyclerView;)I

    move-result v2

    iget-object v4, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->getScrollRange()I
    invoke-static {v4}, Lcom/color/widget/ColorRecyclerView;->access$4100(Lcom/color/widget/ColorRecyclerView;)I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OppoOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 4113
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # setter for: Lcom/color/widget/ColorRecyclerView;->mScrollState:I
    invoke-static {v0, v3}, Lcom/color/widget/ColorRecyclerView;->access$4202(Lcom/color/widget/ColorRecyclerView;I)I

    .line 4117
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$4300(Lcom/color/widget/ColorRecyclerView;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4119
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4211
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewFlinger;->this$0:Lcom/color/widget/ColorRecyclerView;

    # getter for: Lcom/color/widget/ColorRecyclerView;->mScroller:Landroid/widget/OppoOverScroller;
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerView;->access$2000(Lcom/color/widget/ColorRecyclerView;)Landroid/widget/OppoOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller;->abortAnimation()V

    .line 4212
    return-void
.end method
