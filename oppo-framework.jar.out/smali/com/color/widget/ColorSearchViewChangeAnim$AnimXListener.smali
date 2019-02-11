.class Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;
.super Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimXListener"
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
    .line 681
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    .line 682
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    .line 683
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;->getStartValue()F

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 688
    return-void

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;->getEndValue()F

    move-result v0

    goto :goto_0
.end method
