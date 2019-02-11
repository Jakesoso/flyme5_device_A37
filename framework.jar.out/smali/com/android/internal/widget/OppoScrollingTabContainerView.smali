.class public Lcom/android/internal/widget/OppoScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "OppoScrollingTabContainerView.java"

# interfaces
.implements Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoScrollingTabContainerView$1;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SUSPENSION:Ljava/lang/String; = "."

.field private static final TAG:Ljava/lang/String; = "OppoScrollingTabContainerView"


# instance fields
.field private mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

.field private mIndexForSelection:I

.field private mSelectionOffset:F

.field private mTabTextSize:I

.field private mTabTextSizeSelected:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 81
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    .line 82
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    .line 578
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 579
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/OppoScrollingTabContainerView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectionOffset:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mIndexForSelection:I

    return p1
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-static {p0}, Lcom/oppo/util/OppoContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 588
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 631
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 632
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    invoke-static {v1, v0, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    .line 633
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 625
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    invoke-static {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    .line 627
    return-void
.end method

.method public animateToTab(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 602
    return-void
.end method

.method createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 611
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 612
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 613
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :goto_0
    return-object v0

    .line 617
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 650
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V

    .line 651
    return-void
.end method

.method hookResizeMaxWidth(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "childCount"    # I

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mMaxTabWidth:I

    .line 688
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 596
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 597
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 643
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    .line 645
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 639
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 1
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 672
    return-void
.end method

.method public setTabSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 607
    return-void
.end method

.method public updateTabScrollPosition(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V

    .line 656
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->isCleared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    .line 659
    :cond_0
    return-void
.end method

.method public updateTabScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 664
    return-void
.end method
