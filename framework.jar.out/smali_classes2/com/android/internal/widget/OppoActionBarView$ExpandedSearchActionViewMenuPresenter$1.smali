.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
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
    .line 730
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$1;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$1;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->access$102(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 734
    return-void
.end method
