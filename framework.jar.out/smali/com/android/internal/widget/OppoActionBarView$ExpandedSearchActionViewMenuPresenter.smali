.class Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;
.super Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.source "OppoActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandedSearchActionViewMenuPresenter"
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x12cL

.field private static final DISPLAY_HOME_FLAGS:I = 0x6

.field private static final MIN_WIDTH_FRACTION:F = 0.1f


# instance fields
.field private final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private final LAYOUT_PARAMS:Landroid/app/ActionBar$LayoutParams;

.field private mContentWidth:I

.field private mSearchActionViewAnim:Landroid/animation/AnimatorSet;

.field private mTitleLeft:I

.field final synthetic this$0:Lcom/android/internal/widget/OppoActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoActionBarView;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 678
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    .line 684
    iput v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mTitleLeft:I

    .line 685
    iput v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mContentWidth:I

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    .line 687
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->LAYOUT_PARAMS:Landroid/app/ActionBar$LayoutParams;

    .line 688
    invoke-static {}, Lcom/color/view/animation/ColorPathInterpolator;->create()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    .prologue
    .line 678
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mContentWidth:I

    return v0
.end method

.method private getExpandedHomeAnimation(Z)Landroid/animation/Animator;
    .locals 11
    .param p1, "isExpand"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "animExpandedHome":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoActionBarView;->getDisplayOptions()I

    move-result v4

    and-int/lit8 v4, v4, 0x6

    if-nez v4, :cond_1

    .line 874
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v3

    .line 875
    .local v3, "width":I
    if-eqz p1, :cond_2

    .line 876
    if-nez v3, :cond_0

    .line 877
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    # invokes: Lcom/android/internal/widget/OppoActionBarView;->makeUnspecifiedMeasureSpec()I
    invoke-static {v5}, Lcom/android/internal/widget/OppoActionBarView;->access$400(Lcom/android/internal/widget/OppoActionBarView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    # invokes: Lcom/android/internal/widget/OppoActionBarView;->makeUnspecifiedMeasureSpec()I
    invoke-static {v6}, Lcom/android/internal/widget/OppoActionBarView;->access$400(Lcom/android/internal/widget/OppoActionBarView;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 878
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v3

    .line 880
    :cond_0
    neg-int v4, v3

    int-to-float v2, v4

    .line 881
    .local v2, "translationXStart":F
    const/4 v1, 0x0

    .line 882
    .local v1, "translationXEnd":F
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    aput v2, v6, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 883
    new-instance v4, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$7;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$7;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 901
    .end local v1    # "translationXEnd":F
    .end local v2    # "translationXStart":F
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-object v0

    .line 890
    .restart local v3    # "width":I
    :cond_2
    const/4 v2, 0x0

    .line 891
    .restart local v2    # "translationXStart":F
    neg-int v4, v3

    int-to-float v1, v4

    .line 892
    .restart local v1    # "translationXEnd":F
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    aput v7, v6, v8

    aput v1, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 893
    new-instance v4, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$8;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$8;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;F)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getMenuViewAnimation(Z)Landroid/animation/Animator;
    .locals 6
    .param p1, "isExpand"    # Z

    .prologue
    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, "animAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, "alphaStart":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 958
    .local v0, "alphaEnd":F
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 959
    new-instance v3, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$11;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$11;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 966
    .end local v0    # "alphaEnd":F
    .end local v1    # "alphaStart":F
    :cond_0
    return-object v2

    .line 958
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSearchViewAnimation(Z)Landroid/animation/Animator;
    .locals 10
    .param p1, "isExpand"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 812
    const/4 v2, 0x0

    .line 813
    .local v2, "animSearchView":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_0

    .line 814
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 815
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 816
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, "alphaStart":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 819
    .local v0, "alphaEnd":F
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 820
    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$3;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 834
    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$4;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 868
    .end local v0    # "alphaEnd":F
    .end local v1    # "alphaStart":F
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v2

    .line 844
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v5, v6

    .line 845
    .local v5, "widthStart":F
    const v6, 0x3dcccccd    # 0.1f

    mul-float v4, v5, v6

    .line 846
    .local v4, "widthEnd":F
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    const-string/jumbo v7, "width"

    new-array v8, v8, [F

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 847
    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$5;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$5;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 856
    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$6;

    invoke-direct {v6, p0, v4}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$6;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;F)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 819
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTitleLayoutAnimation(Z)Landroid/animation/Animator;
    .locals 14
    .param p1, "isExpand"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 905
    const/4 v3, 0x0

    .line 906
    .local v3, "animSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_1

    .line 907
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 908
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mTitleLeft:I

    .line 909
    const/high16 v1, 0x3f800000    # 1.0f

    .line 910
    .local v1, "alphaStart":F
    const/4 v0, 0x0

    .line 911
    .local v0, "alphaEnd":F
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 912
    .local v2, "animAlpha":Landroid/animation/ObjectAnimator;
    iget v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mTitleLeft:I

    int-to-float v6, v7

    .line 913
    .local v6, "xStart":F
    const/4 v5, 0x0

    .line 914
    .local v5, "xEnd":F
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v8, "x"

    new-array v9, v10, [F

    aput v6, v9, v11

    aput v13, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 915
    .local v4, "animX":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    .end local v3    # "animSet":Landroid/animation/AnimatorSet;
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 916
    .restart local v3    # "animSet":Landroid/animation/AnimatorSet;
    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 917
    new-instance v7, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;

    invoke-direct {v7, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$9;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    .end local v0    # "alphaEnd":F
    .end local v1    # "alphaStart":F
    .end local v2    # "animAlpha":Landroid/animation/ObjectAnimator;
    .end local v4    # "animX":Landroid/animation/ObjectAnimator;
    .end local v5    # "xEnd":F
    .end local v6    # "xStart":F
    :cond_0
    :goto_0
    return-object v3

    .line 927
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/OppoActionBarView;->getDisplayOptions()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    .line 928
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    .line 929
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/OppoActionBarView;->initTitle()V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    const/4 v1, 0x0

    .line 933
    .restart local v1    # "alphaStart":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 934
    .restart local v0    # "alphaEnd":F
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 935
    .restart local v2    # "animAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 936
    .restart local v6    # "xStart":F
    iget v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mTitleLeft:I

    int-to-float v5, v7

    .line 937
    .restart local v5    # "xEnd":F
    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v7, v7, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v8, "x"

    new-array v9, v10, [F

    aput v13, v9, v11

    aput v5, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 938
    .restart local v4    # "animX":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    .end local v3    # "animSet":Landroid/animation/AnimatorSet;
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 939
    .restart local v3    # "animSet":Landroid/animation/AnimatorSet;
    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 940
    new-instance v7, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;

    invoke-direct {v7, p0, v5}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$10;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;F)V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 911
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 934
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "animators"    # [Landroid/animation/Animator;

    .prologue
    .line 794
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 795
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    .line 796
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    move-object v2, p1

    .local v2, "arr$":[Landroid/animation/Animator;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 797
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 796
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 800
    :cond_0
    if-nez v3, :cond_1

    .line 801
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 803
    :cond_1
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 806
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 807
    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    return-object v1
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 7
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 744
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v5, v5, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/SearchView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    # getter for: Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z
    invoke-static {v5}, Lcom/android/internal/widget/OppoActionBarView;->access$000(Lcom/android/internal/widget/OppoActionBarView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 745
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-static {v5}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 746
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    .line 747
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 750
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getSearchViewAnimation(Z)Landroid/animation/Animator;

    move-result-object v2

    .line 751
    .local v2, "animSearchView":Landroid/animation/Animator;
    invoke-direct {p0, v6}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getExpandedHomeAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 752
    .local v0, "animExpandedHome":Landroid/animation/Animator;
    invoke-direct {p0, v6}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getTitleLayoutAnimation(Z)Landroid/animation/Animator;

    move-result-object v3

    .line 753
    .local v3, "animTitleLayout":Landroid/animation/Animator;
    invoke-direct {p0, v6}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getMenuViewAnimation(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 754
    .local v1, "animMenuView":Landroid/animation/Animator;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v6

    aput-object v0, v5, v4

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    .line 755
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;

    invoke-direct {v6, p0, p2}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$2;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;Lcom/android/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 787
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 790
    .end local v0    # "animExpandedHome":Landroid/animation/Animator;
    .end local v1    # "animMenuView":Landroid/animation/Animator;
    .end local v2    # "animSearchView":Landroid/animation/Animator;
    .end local v3    # "animTitleLayout":Landroid/animation/Animator;
    :goto_0
    return v4

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v4

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 10
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    .line 692
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 693
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/SearchView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    # getter for: Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z
    invoke-static {v4}, Lcom/android/internal/widget/OppoActionBarView;->access$000(Lcom/android/internal/widget/OppoActionBarView;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 694
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-static {v4}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 695
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 696
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 699
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoActionBarView;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mContentWidth:I

    .line 700
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iput-object p2, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 702
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    if-eq v4, v6, :cond_1

    .line 703
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->LAYOUT_PARAMS:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/widget/OppoActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v4, v6, :cond_2

    .line 706
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 709
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_3

    .line 710
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 712
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_4

    .line 713
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 715
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoActionBarView;->getCustomView()Landroid/view/View;

    move-result-object v3

    .line 716
    .local v3, "customNavView":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 717
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v4, v9, v9}, Lcom/android/internal/widget/OppoActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 720
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoActionBarView;->requestLayout()V

    .line 721
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 722
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/CollapsibleActionView;

    if-eqz v4, :cond_6

    .line 723
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/OppoActionBarView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v4, Landroid/view/CollapsibleActionView;

    invoke-interface {v4}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 726
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getSearchViewAnimation(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 727
    .local v1, "animSearchView":Landroid/animation/Animator;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getExpandedHomeAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 728
    .local v0, "animExpandedHome":Landroid/animation/Animator;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->getTitleLayoutAnimation(Z)Landroid/animation/Animator;

    move-result-object v2

    .line 729
    .local v2, "animTitleLayout":Landroid/animation/Animator;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v0, v4, v5

    const/4 v6, 0x2

    aput-object v2, v4, v6

    invoke-direct {p0, v4}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    .line 730
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter$1;-><init>(Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    iget-object v4, p0, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;->mSearchActionViewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    move v4, v5

    .line 739
    .end local v0    # "animExpandedHome":Landroid/animation/Animator;
    .end local v1    # "animSearchView":Landroid/animation/Animator;
    .end local v2    # "animTitleLayout":Landroid/animation/Animator;
    .end local v3    # "customNavView":Landroid/view/View;
    :goto_0
    return v4

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v4

    goto :goto_0
.end method
