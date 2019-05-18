.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;
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


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 920
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 922
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    return-void
.end method
