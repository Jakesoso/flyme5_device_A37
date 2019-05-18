.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

.field final synthetic val$item:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iput-object p2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 758
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    # setter for: Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;
    invoke-static {v1, v4}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->access$102(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 761
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarView;->removeView(Landroid/view/View;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 766
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iput-object v4, v1, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 767
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarView;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x6

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    .line 774
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 776
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarView;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 777
    .local v0, "customNavView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 778
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 781
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iput-object v4, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 782
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    # getter for: Lcom/android/internal/widget/OppoActionBarView;->mWasHomeEnabled:Z
    invoke-static {v2}, Lcom/android/internal/widget/OppoActionBarView;->access$200(Lcom/android/internal/widget/OppoActionBarView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarView;->setHomeButtonEnabled(Z)V

    .line 783
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->this$1:Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarView;->requestLayout()V

    .line 784
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 785
    return-void
.end method
