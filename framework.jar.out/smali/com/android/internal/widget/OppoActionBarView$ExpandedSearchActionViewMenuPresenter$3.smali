.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;
.super Ljava/lang/Object;
.source "OppoActionBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getSearchViewAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 823
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 824
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 827
    .local v1, "value":F
    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    # getter for: Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mContentWidth:I
    invoke-static {v2}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->access$300(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 829
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    .end local v1    # "value":F
    :cond_0
    return-void
.end method
