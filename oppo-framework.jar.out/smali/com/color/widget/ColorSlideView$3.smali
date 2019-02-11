.class Lcom/color/widget/ColorSlideView$3;
.super Lcom/color/widget/ColorDeleteAnimation;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSlideView;Landroid/view/View;FFFF)V
    .locals 6
    .param p2, "x0"    # Landroid/view/View;
    .param p3, "x1"    # F
    .param p4, "x2"    # F
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 757
    iput-object p1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorDeleteAnimation;-><init>(Landroid/view/View;FFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 760
    invoke-super {p0, p1}, Lcom/color/widget/ColorDeleteAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 761
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    # getter for: Lcom/color/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;
    invoke-static {v1}, Lcom/color/widget/ColorSlideView;->access$300(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    iget-object v2, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-virtual {v2}, Lcom/color/widget/ColorSlideView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Lcom/color/widget/ColorSlideView;->mInitialHeight:I

    .line 764
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    iget-object v1, v1, Lcom/color/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 765
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    iget-object v1, v1, Lcom/color/widget/ColorSlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 767
    new-instance v0, Lcom/color/widget/ColorSlideView$3$1;

    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-direct {v0, p0, v1}, Lcom/color/widget/ColorSlideView$3$1;-><init>(Lcom/color/widget/ColorSlideView$3;Landroid/view/View;)V

    .line 775
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorSlideView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 777
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
