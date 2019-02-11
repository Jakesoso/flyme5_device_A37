.class Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field private final mAnimationType:I

.field private mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2268
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    iput-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2263
    iput-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2269
    iput p4, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2270
    iput p3, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2271
    iput-object p2, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 2272
    iput p5, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2273
    iput p6, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2274
    iput p7, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2275
    iput p8, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2276
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2277
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;Lcom/color/widget/help/ColorItemTouchHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2284
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p2, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2285
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2287
    return-void

    .line 2276
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1900(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2235
    iget-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mEnded:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2235
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2300
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2335
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2336
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2331
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2326
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2291
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 2303
    iput p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2304
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2295
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2296
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 2311
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mX:F

    .line 2316
    :goto_0
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mY:F

    .line 2321
    :goto_1
    return-void

    .line 2314
    :cond_0
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2319
    :cond_1
    iget v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/color/widget/help/ColorItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
