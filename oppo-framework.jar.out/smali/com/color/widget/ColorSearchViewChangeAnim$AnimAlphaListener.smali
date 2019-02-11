.class Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;
.super Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimAlphaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    .prologue
    .line 710
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    .line 711
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    .line 712
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;->getStartValue()F

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 717
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;->getEndValue()F

    move-result v0

    goto :goto_0
.end method
