.class public Lcom/color/widget/ColorPagerController;
.super Ljava/lang/Object;
.source "ColorPagerController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;
.implements Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorPagerController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSelectedPage:I

.field private mViewPager:Lcom/color/widget/ColorViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/color/widget/ColorViewPager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewPager"    # Lcom/color/widget/ColorViewPager;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object v0, p0, Lcom/color/widget/ColorPagerController;->mViewPager:Lcom/color/widget/ColorViewPager;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorPagerController;->mSelectedPage:I

    .line 52
    invoke-direct {p0, p1}, Lcom/color/widget/ColorPagerController;->setActivity(Landroid/app/Activity;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/color/widget/ColorPagerController;->setViewPager(Lcom/color/widget/ColorViewPager;)V

    .line 54
    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your activity is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    .line 156
    return-void
.end method

.method private setViewPager(Lcom/color/widget/ColorViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Lcom/color/widget/ColorViewPager;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your viewPager is null!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorPagerController;->mViewPager:Lcom/color/widget/ColorViewPager;

    .line 163
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    .local v0, "actionBar":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mViewPager:Lcom/color/widget/ColorViewPager;

    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1, v0}, Lcom/color/widget/ColorViewPager;->bindSplitMenuCallback(Lcom/color/widget/ColorBottomMenuCallback;)V

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public getSelectedPage()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/color/widget/ColorPagerController;->mSelectedPage:I

    return v0
.end method

.method public onPageMenuScrollDataChanged()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    const-string v2, "ActionBarTab"

    const-string v3, "app onPageMenuScrollDataChanged"

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lcom/color/actionbar/app/ColorActionBarUtil;->updateMenuScrollData(Landroid/app/ActionBar;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onPageMenuScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil;->updateMenuScrollState(Landroid/app/ActionBar;I)V

    .line 125
    :cond_0
    return-void
.end method

.method public onPageMenuScrolled(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .prologue
    .line 104
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 105
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0, p1, p2}, Lcom/color/actionbar/app/ColorActionBarUtil;->updateMenuScrollPosition(Landroid/app/ActionBar;IF)V

    .line 109
    :cond_0
    return-void
.end method

.method public onPageMenuSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/color/widget/ColorPagerController;->mSelectedPage:I

    .line 115
    iget-object v0, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 116
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil;->updateTabScrollState(Landroid/app/ActionBar;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 89
    invoke-static {v0, p1, p2, p3}, Lcom/color/actionbar/app/ColorActionBarUtil;->updateTabScrollPosition(Landroid/app/ActionBar;IFI)V

    .line 91
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/color/widget/ColorPagerController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 61
    const/4 v0, 0x0

    const-string v1, "ActionBarTab"

    const-string v2, "app onTabReselected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorPagerController;->mSelectedPage:I

    .line 68
    iget-object v0, p0, Lcom/color/widget/ColorPagerController;->mViewPager:Lcom/color/widget/ColorViewPager;

    iget v1, p0, Lcom/color/widget/ColorPagerController;->mSelectedPage:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorViewPager;->setCurrentItem(IZ)V

    .line 69
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 73
    const/4 v0, 0x0

    const-string v1, "ActionBarTab"

    const-string v2, "app onTabUnselected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
