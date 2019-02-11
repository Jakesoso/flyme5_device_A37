.class Lcom/color/widget/ColorPagerMenuDelegate;
.super Ljava/lang/Object;
.source "ColorPagerMenuDelegate.java"


# static fields
.field private static final DBG:Z = true

.field private static final MENU_SCROLL_OFFSET:F = 0.3f

.field private static final MENU_SCROLL_OFFSET_HIGH:F = 0.7f

.field private static final MENU_SCROLL_OFFSET_LOW:F = 0.3f

.field private static final MENU_SCROLL_STATE_DOWN:I = 0x1

.field private static final MENU_SCROLL_STATE_IDLE:I = 0x0

.field private static final MENU_SCROLL_STATE_OUT:I = 0x3

.field private static final MENU_SCROLL_STATE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorPagerMenuDelegate"


# instance fields
.field private mCallback:Lcom/color/widget/ColorBottomMenuCallback;

.field private mIsBeingSettled:Z

.field private mLastDirection:Z

.field private mLastItem:I

.field private mLastMenuOffset:F

.field private mMenuScrollState:I

.field private mNextDirection:Z

.field private mNextItem:I

.field private mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

.field private mPager:Lcom/color/widget/ColorViewPager;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorViewPager;)V
    .locals 5
    .param p1, "pager"    # Lcom/color/widget/ColorViewPager;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastMenuOffset:F

    .line 48
    iput-boolean v4, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastDirection:Z

    .line 49
    iput-boolean v4, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextDirection:Z

    .line 50
    iput-boolean v3, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mIsBeingSettled:Z

    .line 51
    iput v2, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    .line 52
    iput v2, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    .line 53
    iput v3, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mMenuScrollState:I

    .line 54
    iput-object v1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    .line 55
    iput-object v1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    .line 56
    iput-object v1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    .line 62
    iput-object p1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    .line 63
    return-void
.end method

.method private getMenuOffset(IF)F
    .locals 8
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F

    .prologue
    const v7, 0x3f333333    # 0.7f

    const v6, 0x3e99999a    # 0.3f

    .line 146
    iget v4, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    iget v5, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    if-ne v4, v5, :cond_0

    .line 147
    move v3, p2

    .line 154
    .local v3, "totalOffset":F
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    cmpg-float v4, v3, v6

    if-gtz v4, :cond_1

    .line 155
    div-float v2, v3, v6

    .line 166
    .local v2, "menuOffset":F
    :goto_1
    return v2

    .line 149
    .end local v2    # "menuOffset":F
    .end local v3    # "totalOffset":F
    :cond_0
    iget v4, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    iget v5, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 150
    .local v1, "itemOffset":I
    iget v4, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    iget v5, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 151
    .local v0, "itemCount":I
    int-to-float v4, p1

    add-float/2addr v4, p2

    int-to-float v5, v1

    sub-float/2addr v4, v5

    int-to-float v5, v0

    div-float v3, v4, v5

    .restart local v3    # "totalOffset":F
    goto :goto_0

    .line 156
    .end local v0    # "itemCount":I
    .end local v1    # "itemOffset":I
    :cond_1
    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    cmpg-float v4, v3, v7

    if-gez v4, :cond_2

    .line 157
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "menuOffset":F
    goto :goto_1

    .line 158
    .end local v2    # "menuOffset":F
    :cond_2
    cmpl-float v4, v3, v7

    if-ltz v4, :cond_3

    .line 159
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    div-float v2, v4, v6

    .restart local v2    # "menuOffset":F
    goto :goto_1

    .line 161
    .end local v2    # "menuOffset":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "menuOffset":F
    goto :goto_1
.end method

.method private onPageMenuScrollDataChanged()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    invoke-interface {v0}, Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;->onPageMenuScrollDataChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method private onPageMenuScrolled(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;->onPageMenuScrolled(IF)V

    .line 173
    :cond_0
    return-void
.end method

.method private setMenuUpdateMode(I)V
    .locals 1
    .param p1, "updateMode"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorBottomMenuCallback;->setMenuUpdateMode(I)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method bindSplitMenuCallback(Lcom/color/widget/ColorBottomMenuCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/widget/ColorBottomMenuCallback;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    .line 74
    return-void
.end method

.method onPageMenuScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mIsBeingSettled:Z

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorPagerMenuDelegate;->setMenuUpdateMode(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;->onPageMenuScrollStateChanged(I)V

    .line 99
    :cond_1
    return-void
.end method

.method onPageMenuSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    .line 82
    iput p1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->getDragState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mIsBeingSettled:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/color/widget/ColorPagerMenuDelegate;->setMenuUpdateMode(I)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;->onPageMenuSelected(I)V

    .line 89
    :cond_2
    return-void
.end method

.method pageMenuScrolled(IF)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorPagerMenuDelegate;->getMenuOffset(IF)F

    move-result v0

    .line 103
    .local v0, "menuOffset":F
    iget v1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastMenuOffset:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 109
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastMenuOffset:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorPagerMenuDelegate;->onPageMenuScrollDataChanged()V

    .line 112
    :cond_1
    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastMenuOffset:F

    .line 114
    :cond_2
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/color/widget/ColorPagerMenuDelegate;->onPageMenuScrolled(IF)V

    .line 115
    return-void
.end method

.method setOnPageMenuChangeListener(Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mOnPageMenuChangeListener:Lcom/color/widget/ColorViewPager$OnPageMenuChangeListener;

    .line 70
    return-void
.end method

.method setSettleState()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mIsBeingSettled:Z

    .line 78
    return-void
.end method

.method updateDirection(Z)V
    .locals 1
    .param p1, "direction"    # Z

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextDirection:Z

    iput-boolean v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastDirection:Z

    .line 132
    iput-boolean p1, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextDirection:Z

    .line 133
    return-void
.end method

.method updateNextItem(F)V
    .locals 4
    .param p1, "deltaX"    # F

    .prologue
    .line 118
    iget-object v2, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v2}, Lcom/color/widget/ColorViewPager;->infoForCurrentScrollPosition()Lcom/color/widget/ColorViewPager$ItemInfo;

    move-result-object v1

    .line 119
    .local v1, "ii":Lcom/color/widget/ColorViewPager$ItemInfo;
    iget v0, v1, Lcom/color/widget/ColorViewPager$ItemInfo;->position:I

    .line 120
    .local v0, "currentPage":I
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorPagerMenuDelegate;->updateDirection(Z)V

    .line 121
    iget-boolean v2, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextDirection:Z

    if-eqz v2, :cond_1

    .line 122
    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    .line 123
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mPager:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v3}, Lcom/color/widget/ColorViewPager;->getAdapter()Lcom/color/widget/ColorPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/widget/ColorPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    .line 128
    :goto_1
    return-void

    .line 120
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    :cond_1
    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mLastItem:I

    .line 126
    iput v0, p0, Lcom/color/widget/ColorPagerMenuDelegate;->mNextItem:I

    goto :goto_1
.end method
