.class public abstract Lcom/color/widget/ColorSlideCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "ColorSlideCollapseAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field mInitialHeight:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mInitialHeight:I

    .line 31
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e083127    # 0.133f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSlideCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/color/widget/ColorSlideCollapseAnimation;->setDuration(J)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/color/widget/ColorSlideCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mInitialHeight:I

    iget v2, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mInitialHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    iget-object v0, p0, Lcom/color/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/color/widget/ColorSlideCollapseAnimation;->onItemDelete()V

    .line 41
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 45
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 50
    return-void
.end method

.method public abstract onItemDelete()V
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
