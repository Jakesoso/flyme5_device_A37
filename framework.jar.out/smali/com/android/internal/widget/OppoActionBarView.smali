.class public Lcom/android/internal/widget/OppoActionBarView;
.super Lcom/android/internal/widget/ActionBarView;
.source "OppoActionBarView.java"

# interfaces
.implements Lcom/color/widget/ColorSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoActionBarView$ColorHomeView;,
        Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field private static final MAX_WIDTH_TABSCROLLVIEW:I = 0x2bb

.field private static final OPPO_WIDGET_ANIM_DISABLE:Ljava/lang/String; = "oppo.widget.animation.disabled"

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:OppoActionBarView"


# instance fields
.field private mAnimationDisabled:Z

.field private mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

.field private mDropdownItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDropdownUpdateAfterAnim:Z

.field private mHeightMeasureSpec:I

.field private mIdActionBarSpinner:I

.field private mIdActionMenuPresenter:I

.field private mIdHomeAsUp:I

.field private mIdProgressCircular:I

.field private mInLayout:Z

.field private mInMeasure:Z

.field private mIndeterminateProgressStyle:I

.field private final mIsOppoStyle:Z

.field private mLayoutBottom:I

.field private mLayoutLeft:I

.field private mLayoutRight:I

.field private mLayoutTop:I

.field private mProgressMarginRight:I

.field private mTabScrollViewMaxWidth:I

.field private mWasHomeEnabled:Z

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mInMeasure:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mInLayout:Z

    .line 95
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mWasHomeEnabled:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownUpdateAfterAnim:Z

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mAnimationDisabled:Z

    .line 101
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mWidthMeasureSpec:I

    .line 102
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mHeightMeasureSpec:I

    .line 103
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    .line 104
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    .line 105
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutTop:I

    .line 106
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutBottom:I

    .line 107
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdHomeAsUp:I

    .line 108
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionMenuPresenter:I

    .line 109
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionBarSpinner:I

    .line 111
    iput v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdProgressCircular:I

    .line 113
    iput v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mProgressMarginRight:I

    .line 115
    const/16 v1, 0x2bb

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollViewMaxWidth:I

    .line 116
    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .line 117
    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    const-string v1, "ActionBarTab:OppoActionBarView"

    const-string v2, "OppoActionBarView"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    .line 126
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 129
    :cond_0
    const v1, 0xc0204b0

    invoke-static {p1, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdHomeAsUp:I

    .line 130
    const v1, 0xc0204d1

    invoke-static {p1, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionMenuPresenter:I

    .line 131
    const v1, 0xc0204d2

    invoke-static {p1, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionBarSpinner:I

    .line 133
    const v1, 0xc020400

    invoke-static {p1, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdProgressCircular:I

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mProgressMarginRight:I

    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const v2, 0xc020404

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setId(I)V

    .line 139
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const v2, 0xc020405

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setId(I)V

    .line 150
    sget-object v1, Landroid/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressStyle:I

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0504ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollViewMaxWidth:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/OppoActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoActionBarView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/OppoActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoActionBarView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/OppoActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoActionBarView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->makeUnspecifiedMeasureSpec()I

    move-result v0

    return v0
.end method

.method private doCustomViewAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 566
    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mAnimationDisabled:Z

    if-nez v2, :cond_0

    .line 574
    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 578
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.qualcomm.wfd.client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xc0a0407

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 585
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private doHomeAsUpAnim()V
    .locals 4

    .prologue
    .line 589
    iget v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdHomeAsUp:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 591
    .local v1, "homeAsUp":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mAnimationDisabled:Z

    if-nez v2, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xc0a0406

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 593
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 595
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private getHeightSize()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mContentHeight:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mContentHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mHeightMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private getWidthSize()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mWidthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method private makeAtMostMeasureSpec(I)I
    .locals 1
    .param p1, "measureSize"    # I

    .prologue
    .line 668
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private makeExactlyMeasureSpec(I)I
    .locals 1
    .param p1, "measureSize"    # I

    .prologue
    .line 672
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private makeUnspecifiedMeasureSpec()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private measureMenuView()V
    .locals 6

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    .line 630
    .local v1, "verticalPadding":I
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->getWidthSize()I

    move-result v2

    .line 631
    .local v2, "widthSize":I
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->getHeightSize()I

    move-result v3

    sub-int v0, v3, v1

    .line 632
    .local v0, "heightSize":I
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ActionMenuView;->measure(II)V

    .line 633
    return-void
.end method

.method private measureTabScrollView(II)I
    .locals 4
    .param p1, "availableWidth"    # I
    .param p2, "childSpecHeight"    # I

    .prologue
    .line 658
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollViewMaxWidth:I

    .line 659
    .local v0, "maxWidth":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/OppoActionBarView;->makeAtMostMeasureSpec(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 660
    return p1

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, p1

    .line 658
    goto :goto_0
.end method

.method private positionChildCenterHorizontal(Landroid/view/View;IIIZ)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 644
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .local v2, "childX":I
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 645
    invoke-super/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 646
    return p2
.end method

.method private positionMenuView()V
    .locals 6

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->isLayoutRtl()Z

    move-result v5

    .line 637
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_0

    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    iget v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 638
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingTop()I

    move-result v3

    .line 639
    .local v3, "y":I
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutBottom:I

    iget v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 640
    .local v4, "contentHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/OppoActionBarView;->positionChildCenterHorizontal(Landroid/view/View;IIIZ)I

    .line 641
    return-void

    .line 637
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingLeft()I

    move-result v2

    goto :goto_0
.end method

.method private updateTitleVisibility()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 601
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 607
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 610
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->animateToVisibility(I)V

    .line 268
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorOptionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method hookSetCustomViewPosX(Landroid/app/ActionBar$LayoutParams;III)I
    .locals 6
    .param p1, "ablp"    # Landroid/app/ActionBar$LayoutParams;
    .param p2, "xpos"    # I
    .param p3, "hgravity"    # I
    .param p4, "navWidth"    # I

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v4, :cond_0

    .line 507
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarView;->hookSetCustomViewPosX(Landroid/app/ActionBar$LayoutParams;III)I

    move-result v4

    .line 527
    :goto_0
    return v4

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->isLayoutRtl()Z

    move-result v0

    .line 510
    .local v0, "isLayoutRtl":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getLayoutDirection()I

    move-result v1

    .line 511
    .local v1, "layoutDirection":I
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    .line 512
    .local v2, "leftMargin":I
    :goto_1
    if-eqz p1, :cond_1

    iget v3, p1, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 513
    .local v3, "rightMargin":I
    :cond_1
    invoke-static {p3, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v4, p2

    .line 527
    goto :goto_0

    .end local v2    # "leftMargin":I
    .end local v3    # "rightMargin":I
    :cond_2
    move v2, v3

    .line 511
    goto :goto_1

    .line 515
    .restart local v2    # "leftMargin":I
    .restart local v3    # "rightMargin":I
    :pswitch_1
    iget v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sub-int p2, v4, v3

    .line 517
    goto :goto_2

    .line 519
    :pswitch_2
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    sub-int p2, v4, v3

    .line 521
    :goto_3
    goto :goto_2

    .line 519
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingLeft()I

    move-result v4

    add-int p2, v4, v2

    goto :goto_3

    .line 523
    :pswitch_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingLeft()I

    move-result v4

    add-int p2, v4, v2

    :goto_4
    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    sub-int p2, v4, v3

    goto :goto_4

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 254
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/color/widget/ColorLoadingView;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdProgressCircular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/OppoActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method initTitle()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 498
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->updateTitleVisibility()V

    goto :goto_0
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    instance-of v0, v0, Landroid/widget/ColorSpinner;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v0, Landroid/widget/ColorSpinner;

    invoke-virtual {v0}, Landroid/widget/ColorSpinner;->isDropDownShowing()Z

    move-result v0

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mInMeasure:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-ne p1, v3, :cond_0

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/OppoActionBarView;->measureTabScrollView(II)I

    move-result p2

    .line 216
    .end local p2    # "availableWidth":I
    :goto_0
    return p2

    .line 198
    .restart local p2    # "availableWidth":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mInMeasure:Z

    if-nez v3, :cond_2

    .line 199
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    goto :goto_0

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne p1, v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 204
    .local v1, "temp":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 205
    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 206
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v1}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 210
    .end local v1    # "temp":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne p1, v3, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->getWidthSize()I

    move-result v2

    .line 212
    .local v2, "widthSize":I
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->getHeightSize()I

    move-result v0

    .line 213
    .local v0, "heightSize":I
    invoke-direct {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/OppoActionBarView;->makeExactlyMeasureSpec(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 216
    .end local v0    # "heightSize":I
    .end local v2    # "widthSize":I
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result p2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_1

    .line 176
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarView;->onLayout(ZIIII)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mInLayout:Z

    .line 180
    iput p2, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutLeft:I

    .line 181
    iput p4, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    .line 182
    iput p3, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutTop:I

    .line 183
    iput p5, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutBottom:I

    .line 184
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarView;->onLayout(ZIIII)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mInLayout:Z

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->measureMenuView()V

    .line 188
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->positionMenuView()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->onMeasure(II)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mInMeasure:Z

    .line 167
    iput p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mWidthMeasureSpec:I

    .line 168
    iput p2, p0, Lcom/android/internal/widget/OppoActionBarView;->mHeightMeasureSpec:I

    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->onMeasure(II)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mInMeasure:Z

    goto :goto_0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mInLayout:Z

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne p1, v0, :cond_2

    move v0, p2

    .line 226
    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_3

    .line 230
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/OppoActionBarView;->positionChildCenterHorizontal(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-ne p1, v0, :cond_4

    .line 234
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/OppoActionBarView;->positionChildCenterHorizontal(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_5

    .line 238
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/OppoActionBarView;->positionChildCenterHorizontal(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-ne p1, v0, :cond_6

    .line 243
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mLayoutRight:I

    iget v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mProgressMarginRight:I

    sub-int p2, v0, v1

    .line 244
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0

    .line 247
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    instance-of v0, v0, Landroid/widget/ColorSpinner;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v0, Landroid/widget/ColorSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/ColorSpinner;->setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V

    .line 536
    :cond_0
    return-void
.end method

.method public setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    instance-of v0, v0, Landroid/widget/ColorSpinner;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v0, Landroid/widget/ColorSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/ColorSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 544
    :cond_0
    return-void
.end method

.method public setDropdownUpdateAfterAnim(Z)V
    .locals 1
    .param p1, "update"    # Z

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownUpdateAfterAnim:Z

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    instance-of v0, v0, Landroid/widget/ColorSpinner;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v0, Landroid/widget/ColorSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/ColorSpinner;->setDropdownUpdateAfterAnim(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 1
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->updateTitleVisibility()V

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    .line 481
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mWasHomeEnabled:Z

    .line 483
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 484
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 278
    iget-boolean v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v5, :cond_1

    .line 279
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 357
    .end local p1    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local p1    # "menu":Landroid/view/Menu;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v5, :cond_0

    .line 285
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 287
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 288
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 290
    :cond_2
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 291
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    if-eqz v5, :cond_3

    .line 292
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v5}, Lcom/color/widget/ColorOptionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 293
    .local v2, "oldParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 294
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    .end local v2    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_4

    .line 298
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 299
    .restart local v2    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 300
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    .end local v2    # "oldParent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v5, :cond_5

    .line 304
    new-instance v5, Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 305
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v5, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 306
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionMenuPresenter:I

    invoke-virtual {v5, v6}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 307
    new-instance v5, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/OppoActionBarView$ExpandedSearchActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/OppoActionBarView;)V

    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 310
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 312
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc0c040a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 315
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/OppoActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 316
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    .line 317
    .local v1, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 318
    .restart local v2    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_6

    if-eq v2, p0, :cond_6

    .line 319
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/OppoActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 323
    iget-boolean v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitActionBar:Z

    if-eqz v5, :cond_0

    .line 324
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    if-nez v5, :cond_7

    .line 325
    new-instance v5, Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/color/widget/ColorOptionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    .line 326
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    invoke-virtual {v5, p2}, Lcom/color/widget/ColorOptionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 328
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_9

    .line 329
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v7, p0, Lcom/android/internal/widget/OppoActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 334
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Lcom/color/widget/ColorOptionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorOptionMenuView;

    .line 337
    .local v4, "optionMenuView":Lcom/color/widget/ColorOptionMenuView;
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    .line 340
    invoke-virtual {v4}, Lcom/color/widget/ColorOptionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 341
    .local v3, "oldSplitParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v5, :cond_8

    .line 342
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .end local v3    # "oldSplitParent":Landroid/view/ViewGroup;
    :goto_2
    iput-object v4, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    goto/16 :goto_0

    .line 331
    .end local v4    # "optionMenuView":Lcom/color/widget/ColorOptionMenuView;
    :cond_9
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/OppoActionBarView;->mPopupContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/color/widget/ColorOptionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 332
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuPresenter:Lcom/color/widget/ColorOptionMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/color/widget/ColorOptionMenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 353
    .restart local v4    # "optionMenuView":Lcom/color/widget/ColorOptionMenuView;
    :cond_a
    invoke-virtual {v4, v0}, Lcom/color/widget/ColorOptionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 415
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v2, :cond_0

    .line 416
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 444
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getNavigationMode()I

    move-result v0

    .line 420
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_1

    .line 421
    packed-switch p1, :pswitch_data_0

    .line 442
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 443
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->updateTitleVisibility()V

    goto :goto_0

    .line 423
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_2

    .line 424
    new-instance v2, Landroid/widget/ColorSpinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ColorSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 426
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mIdActionBarSpinner:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 427
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 429
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 432
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v2, Landroid/widget/ColorSpinner;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownDismissCallback:Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    invoke-virtual {v2, v3}, Landroid/widget/ColorSpinner;->setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V

    .line 435
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v2, Landroid/widget/ColorSpinner;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ColorSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSpinner:Landroid/widget/Spinner;

    check-cast v2, Landroid/widget/ColorSpinner;

    iget-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mDropdownUpdateAfterAnim:Z

    invoke-virtual {v2, v3}, Landroid/widget/ColorSpinner;->setDropdownUpdateAfterAnim(Z)V

    goto :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 5
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v4, -0x1

    .line 363
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v2, :cond_1

    .line 364
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setSplitToolbar(Z)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 p1, 0x1

    .line 370
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    if-eqz v2, :cond_4

    .line 372
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v2}, Lcom/color/widget/ColorOptionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 373
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 377
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mOptionMenuView:Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v2}, Lcom/color/widget/ColorOptionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_7

    .line 382
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 383
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_5

    .line 384
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 386
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v2, :cond_6

    if-nez p1, :cond_8

    .line 387
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->addView(Landroid/view/View;)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 395
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 397
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 398
    .local v1, "tempMenuView":Landroid/widget/ActionMenuView;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 399
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setSplitToolbar(Z)V

    .line 400
    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    goto :goto_0

    .line 390
    .end local v1    # "tempMenuView":Landroid/widget/ActionMenuView;
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    .line 391
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 393
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->updateTitleVisibility()V

    goto :goto_0
.end method

.method setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 488
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 489
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarView;->mIsOppoStyle:Z

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarView;->updateTitleVisibility()V

    goto :goto_0
.end method
