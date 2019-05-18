.class public Lcom/color/widget/ColorDeleteAnimation;
.super Ljava/lang/Object;
.source "ColorDeleteAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field public mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field public mView:Landroid/view/View;

.field public mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 87
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/color/widget/ColorDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;FFFF)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;FFFF)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fadeview"    # Landroid/view/View;
    .param p3, "startDx"    # F
    .param p4, "startDy"    # F
    .param p5, "targetX"    # F
    .param p6, "targetY"    # F

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/color/widget/ColorDeleteAnimation;->mOverridden:Z

    .line 49
    iput-boolean v4, p0, Lcom/color/widget/ColorDeleteAnimation;->mEnded:Z

    .line 54
    iput-object p1, p0, Lcom/color/widget/ColorDeleteAnimation;->mView:Landroid/view/View;

    .line 55
    iput p3, p0, Lcom/color/widget/ColorDeleteAnimation;->mStartDx:F

    .line 56
    iput p4, p0, Lcom/color/widget/ColorDeleteAnimation;->mStartDy:F

    .line 57
    iput p5, p0, Lcom/color/widget/ColorDeleteAnimation;->mTargetX:F

    .line 58
    iput p6, p0, Lcom/color/widget/ColorDeleteAnimation;->mTargetY:F

    .line 59
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 60
    const-string v2, "translationX"

    new-array v3, v5, [F

    aput v7, v3, v4

    const/4 v4, 0x1

    aput p5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 62
    .local v0, "anim":Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_0

    .line 63
    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 64
    .local v1, "fadeAnim":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 68
    .end local v1    # "fadeAnim":Landroid/animation/ValueAnimator;
    :goto_0
    iget-object v2, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e083127    # 0.133f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    iget-object v2, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 63
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFF)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/color/widget/ColorDeleteAnimation;->mOverridden:Z

    .line 49
    iput-boolean v4, p0, Lcom/color/widget/ColorDeleteAnimation;->mEnded:Z

    .line 74
    iput-object p1, p0, Lcom/color/widget/ColorDeleteAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 75
    iput p2, p0, Lcom/color/widget/ColorDeleteAnimation;->mStartDx:F

    .line 76
    iput p3, p0, Lcom/color/widget/ColorDeleteAnimation;->mStartDy:F

    .line 77
    iput p4, p0, Lcom/color/widget/ColorDeleteAnimation;->mTargetX:F

    .line 78
    iput p5, p0, Lcom/color/widget/ColorDeleteAnimation;->mTargetY:F

    .line 79
    iget-object v1, p0, Lcom/color/widget/ColorDeleteAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v6, v3, v4

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 80
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 81
    iget-object v1, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 82
    iget-object v1, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e083127    # 0.133f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v1, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 104
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mEnded:Z

    .line 113
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 92
    iget-object v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 93
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 100
    return-void
.end method
