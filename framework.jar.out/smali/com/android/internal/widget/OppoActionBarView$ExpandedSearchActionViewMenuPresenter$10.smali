.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getTitleLayoutAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

.field final synthetic val$xEnd:F


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;F)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iput p2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;->val$xEnd:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;->val$xEnd:F

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 945
    return-void
.end method
