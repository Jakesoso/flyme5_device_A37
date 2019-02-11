.class Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;
.super Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimWidthListener"
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
    .line 693
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    .line 694
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    .line 695
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;->getTarget()Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, "target":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 701
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;->getStartValue()F

    move-result v2

    :goto_0
    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 703
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    :cond_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;->getEndValue()F

    move-result v2

    goto :goto_0
.end method
