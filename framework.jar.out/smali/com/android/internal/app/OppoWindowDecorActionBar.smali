.class public Lcom/android/internal/app/OppoWindowDecorActionBar;
.super Lcom/android/internal/app/WindowDecorActionBar;
.source "OppoWindowDecorActionBar.java"

# interfaces
.implements Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    }
.end annotation


# static fields
.field private static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final DBG:Z = false

.field private static final OPPO_WIDGET_ANIM_DISABLE:Ljava/lang/String; = "oppo.widget.animation.disabled"

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:OppoWindowDecorActionBar"


# instance fields
.field private mActionBarHeight:I

.field private mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;

.field private final mAllHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAllShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimationDisabled:Z

.field private final mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentForeground:Landroid/graphics/drawable/Drawable;

.field private mContentForegroundGravity:I

.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

.field private mCurWindowVisibility:I

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mHasEmbeddedTabs:Z

.field private mIdActionBar:I

.field private mIdActionBarContainer:I

.field private mIdActionContextBar:I

.field private mIdDecorContentParent:I

.field private mIdSplitActionBar:I

.field private mIsActionBarOverlay:Z

.field private mIsActionModeAnim:Z

.field private mIsNoTitle:Z

.field private mIsOppoStyle:Z

.field private mIsSearchBarMode:Z

.field private mIsSplitHideWithActionBar:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

.field private mScreenHeight:I

.field private mScreenLayout:Landroid/view/View;

.field private mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mShowHideAnimationEnabled:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mStackedTabHeight:I

.field private mStatusBarHeight:I

.field private mTabScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/color/view/animation/ColorPathInterpolator;->create()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 120
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 122
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 128
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsOppoStyle:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSearchBarMode:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 147
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 148
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 149
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    .line 150
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 151
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStatusBarHeight:I

    .line 152
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBar:I

    .line 153
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdSplitActionBar:I

    .line 154
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBarContainer:I

    .line 155
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionContextBar:I

    .line 156
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdDecorContentParent:I

    .line 157
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStackedTabHeight:I

    .line 158
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollState:I

    .line 159
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$1;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 189
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$2;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$3;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 221
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$4;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 334
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->init(Landroid/view/Window;)V

    .line 335
    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 120
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 122
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 128
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsOppoStyle:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSearchBarMode:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 147
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 148
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 149
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    .line 150
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 151
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStatusBarHeight:I

    .line 152
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBar:I

    .line 153
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdSplitActionBar:I

    .line 154
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBarContainer:I

    .line 155
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionContextBar:I

    .line 156
    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdDecorContentParent:I

    .line 157
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStackedTabHeight:I

    .line 158
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollState:I

    .line 159
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$1;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 189
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$2;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$3;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 221
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$4;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 339
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->init(Landroid/view/Window;)V

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/OppoWindowDecorActionBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/OppoWindowDecorActionBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/OppoWindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ColorActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    return-object v0
.end method

.method private cancelCurrentShowAnim()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1024
    :cond_0
    return-void
.end method

.method private changeScreenHeight()V
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hookCheckShowingFlags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V

    .line 1008
    :cond_0
    return-void
.end method

.method private clearForeground()V
    .locals 3

    .prologue
    .line 972
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:OppoWindowDecorActionBar"

    const-string v2, "clearForeground"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 975
    return-void
.end method

.method private endCurrentShowAnim()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1018
    :cond_0
    return-void
.end method

.method private getContainerHeight()I
    .locals 2

    .prologue
    .line 984
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 985
    .local v0, "containerHeight":I
    if-nez v0, :cond_0

    .line 986
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 988
    :cond_0
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1031
    instance-of v1, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v1, :cond_0

    .line 1032
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 1034
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 1033
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v1, p1, Landroid/widget/Toolbar;

    if-eqz v1, :cond_1

    .line 1034
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 1036
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v0, "null"

    .line 1037
    .local v0, "simpleName":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1038
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1040
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTabContainer()Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_0
.end method

.method private init(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 915
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    sget-object v3, Loppo/R$styleable;->OppoTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 916
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    .line 917
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 918
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 919
    .local v1, "decor":Landroid/view/View;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    .line 920
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsNoTitle:Z

    .line 921
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    .line 922
    iget-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    if-nez v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStatusBarHeight:I

    .line 927
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 928
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 929
    iget-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsNoTitle:Z

    if-eqz v2, :cond_1

    .line 930
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->clearForeground()V

    .line 932
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->initScreenInfo()V

    .line 935
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oppo.widget.animation.disabled"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 937
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05049f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStackedTabHeight:I

    .line 939
    return-void
.end method

.method private initScreenInfo()V
    .locals 5

    .prologue
    .line 942
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 943
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 944
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 947
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 948
    iget-boolean v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    if-nez v3, :cond_1

    .line 949
    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 950
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 951
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 952
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/internal/app/OppoWindowDecorActionBar$5;

    invoke-direct {v3, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$5;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 969
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    :goto_0
    return-void

    .line 966
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 349
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 356
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private resizeScreenLayout(Z)V
    .locals 5
    .param p1, "change"    # Z

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 994
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 995
    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getContainerHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 999
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "ActionBarTab:OppoWindowDecorActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeScreenLayout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 996
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private restoreForeground()V
    .locals 3

    .prologue
    .line 978
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:OppoWindowDecorActionBar"

    const-string/jumbo v2, "restoreForeground"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 981
    return-void
.end method

.method private setCurrentShowAnim(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1012
    return-void
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimator(Landroid/animation/Animator;)V

    .line 624
    return-void
.end method

.method public addAfterAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V

    .line 826
    return-void
.end method

.method public addAfterAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimatorWrappers(Ljava/util/List;)V

    .line 831
    return-void
.end method

.method public addAfterAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimators(Ljava/util/List;)V

    .line 629
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimator(Landroid/animation/Animator;)V

    .line 634
    return-void
.end method

.method public addBeforeAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V

    .line 836
    return-void
.end method

.method public addBeforeAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimatorWrappers(Ljava/util/List;)V

    .line 841
    return-void
.end method

.method public addBeforeAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimators(Ljava/util/List;)V

    .line 639
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 605
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimator(Landroid/animation/Animator;)V

    .line 615
    return-void
.end method

.method public addWithAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
    .locals 1
    .param p1, "anim"    # Lcom/color/animation/ColorAnimatorWrapper;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V

    .line 816
    return-void
.end method

.method public addWithAnimatorWrappers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimatorWrappers(Ljava/util/List;)V

    .line 821
    return-void
.end method

.method public addWithAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimators(Ljava/util/List;)V

    .line 620
    return-void
.end method

.method animateToMode(Z)V
    .locals 2
    .param p1, "toActionMode"    # Z

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 440
    :cond_0
    return-void

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getTabContainer()Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    goto :goto_1
.end method

.method public cancelShowHide()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->cancelCurrentShowAnim()V

    .line 782
    return-void
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 554
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->endCurrentShowAnim()V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->clearForeground()V

    .line 557
    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_5

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->changeScreenHeight()V

    .line 559
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 560
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 561
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStatusBarHeight:I

    add-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v3, v5

    .line 562
    .local v3, "endingY":F
    if-eqz p1, :cond_1

    .line 563
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 564
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 565
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 567
    .end local v4    # "topLeft":[I
    :cond_1
    const-string v5, "ActionBarTab:OppoWindowDecorActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doHide : endingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 569
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 570
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 571
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 572
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 573
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 574
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    iget-object v8, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 576
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    if-eqz v5, :cond_3

    .line 577
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 578
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 581
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v6, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 583
    sget-object v5, Lcom/android/internal/app/OppoWindowDecorActionBar;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSearchBarMode:Z

    if-eqz v5, :cond_4

    .line 587
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 592
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 594
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 600
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_1
    return-void

    .line 589
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "anim":Landroid/animation/AnimatorSet;
    .restart local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .restart local v3    # "endingY":F
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 596
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :cond_5
    const-string v5, "ActionBarTab:OppoWindowDecorActionBar"

    const-string v6, "doHide : no translation"

    invoke-static {v9, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 598
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 563
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 481
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->endCurrentShowAnim()V

    .line 482
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->restoreForeground()V

    .line 483
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 485
    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_6

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->changeScreenHeight()V

    .line 487
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 488
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getContainerHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 489
    .local v3, "startingY":F
    if-eqz p1, :cond_1

    .line 490
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 491
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 492
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 494
    .end local v4    # "topLeft":[I
    :cond_1
    const-string v5, "ActionBarTab:OppoWindowDecorActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShow : startingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 496
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 497
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 498
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 501
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 502
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 503
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 505
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    if-eqz v5, :cond_3

    .line 506
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 507
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 508
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 511
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v6, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 513
    sget-object v5, Lcom/android/internal/app/OppoWindowDecorActionBar;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 516
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSearchBarMode:Z

    if-eqz v5, :cond_5

    .line 517
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 529
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 530
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 531
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 547
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 548
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 550
    :cond_4
    return-void

    .line 519
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "anim":Landroid/animation/AnimatorSet;
    .restart local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .restart local v3    # "startingY":F
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 533
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :cond_6
    const-string v5, "ActionBarTab:OppoWindowDecorActionBar"

    const-string v6, "doShow : no translation"

    invoke-static {v8, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 535
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 536
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 537
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 539
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    if-eqz v5, :cond_8

    .line 540
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 541
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 542
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 544
    :cond_8
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 545
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 490
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 377
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->enableContentAnimations(Z)V

    .line 378
    return-void
.end method

.method ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->newInstance(Landroid/content/Context;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    .line 411
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 413
    iget-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 427
    :goto_2
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 411
    :cond_1
    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStackedTabHeight:I

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 418
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->requestApplyInsets()V

    .line 425
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_2

    .line 423
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 643
    const v0, 0x1020002

    return v0
.end method

.method public getHomeId()I
    .locals 1

    .prologue
    .line 648
    const v0, 0x102002c

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHasEmbeddedTabs:Z

    return v0
.end method

.method init(Landroid/view/View;)V
    .locals 3
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 892
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/color/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsOppoStyle:Z

    .line 893
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v1, 0xc0204cf

    invoke-static {v0, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBar:I

    .line 894
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v1, 0xc0204d0

    invoke-static {v0, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdSplitActionBar:I

    .line 895
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v1, 0xc0204d3

    invoke-static {v0, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBarContainer:I

    .line 896
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v1, 0xc0204d4

    invoke-static {v0, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionContextBar:I

    .line 897
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v1, 0xc0204d5

    invoke-static {v0, v1}, Lcom/color/util/ColorContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdDecorContentParent:I

    .line 898
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdDecorContentParent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    .line 899
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 900
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionContextBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/OppoActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    .line 901
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdActionBarContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 902
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIdSplitActionBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 903
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    .line 908
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 909
    return-void

    .line 907
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropDownShowing()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v0, Lcom/color/widget/ColorSpinnerCallback;

    invoke-interface {v0}, Lcom/color/widget/ColorSpinnerCallback;->isDropDownShowing()Z

    move-result v0

    .line 810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMenuUpdate()V
    .locals 3

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 723
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->lockMenuUpdate()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsOppoStyle:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->ensureTabsExist()V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 365
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->onWindowVisibilityChanged(I)V

    .line 366
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 883
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public setActionModeAnim(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    .line 772
    return-void
.end method

.method public setActionModeCallback(Lcom/color/widget/ColorActionModeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/widget/ColorActionModeCallback;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;

    .line 742
    return-void
.end method

.method public setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v0, Lcom/color/widget/ColorSpinnerCallback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V

    .line 789
    :cond_0
    return-void
.end method

.method public setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v0, Lcom/color/widget/ColorSpinnerCallback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 796
    :cond_0
    return-void
.end method

.method public setDropdownUpdateAfterAnim(Z)V
    .locals 1
    .param p1, "update"    # Z

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v0, Lcom/color/widget/ColorSpinnerCallback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownUpdateAfterAnim(Z)V

    .line 803
    :cond_0
    return-void
.end method

.method public setEmbeddedTabs(Z)V
    .locals 0
    .param p1, "embedded"    # Z

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 747
    return-void
.end method

.method setHasEmbeddedTabs(Z)V
    .locals 2
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 397
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 398
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 399
    return-void

    .line 394
    :cond_1
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mStackedTabHeight:I

    goto :goto_0
.end method

.method public setMenuUpdateMode(I)V
    .locals 3
    .param p1, "updateMode"    # I

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 712
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 713
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/color/widget/ColorBottomMenuCallback;->setMenuUpdateMode(I)V

    goto :goto_0
.end method

.method public setSearchBarMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 765
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSearchBarMode:Z

    .line 766
    return-void

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 371
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setShowHideAnimationEnabled(Z)V

    .line 372
    return-void
.end method

.method public setSplitActionBarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->setSplitActionBarOverlay(Z)V

    .line 754
    :cond_0
    return-void
.end method

.method public setSplitHideWithActionBar(Z)V
    .locals 0
    .param p1, "hideWith"    # Z

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z

    .line 759
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 447
    iget v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollState:I

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 476
    :goto_0
    return-object v0

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v2}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoActionBarContextView;->killMode()V

    .line 456
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 457
    .local v0, "mode":Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->dispatchOnCreate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->invalidate()V

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->dispatchOnStart()V

    .line 460
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hookCheckShowingFlags()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->setShowingFlags(Z)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 462
    invoke-virtual {p0, v3}, Lcom/android/internal/app/OppoWindowDecorActionBar;->animateToMode(Z)V

    .line 463
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v3, :cond_2

    .line 465
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->sendAccessibilityEvent(I)V

    .line 473
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 476
    goto :goto_0
.end method

.method public unlockMenuUpdate()V
    .locals 3

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 735
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->unlockMenuUpdate()V

    goto :goto_0
.end method

.method public updateAnimateTab(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/OppoWindowDecorActionBar;->updateTabScrollPosition(IFI)V

    .line 847
    return-void
.end method

.method public updateMenuScrollData()V
    .locals 3

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 702
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollData()V

    goto :goto_0
.end method

.method public updateMenuScrollPosition(IF)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 679
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollPosition(IF)V

    goto :goto_0
.end method

.method public updateMenuScrollState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const v2, 0xc0204c2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 689
    .local v0, "splitMenuView":Landroid/view/View;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 690
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollState:I

    .line 691
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "splitMenuView":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollState(I)V

    goto :goto_0
.end method

.method public updateScrollState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->updateTabScrollState(I)V

    .line 853
    return-void
.end method

.method public updateTabScrollPosition(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;->updateTabScrollPosition(IFI)V

    goto :goto_0
.end method

.method public updateTabScrollState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    if-eqz v0, :cond_0

    .line 667
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollState:I

    .line 668
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    invoke-interface {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;->updateTabScrollState(I)V

    goto :goto_0
.end method

.method updateVisibility(Z)V
    .locals 1
    .param p1, "fromSystem"    # Z

    .prologue
    .line 857
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 862
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionModeAnim:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hookCheckShowingFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_2

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mNowShowing:Z

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->doHide(Z)V

    goto :goto_0

    .line 869
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mNowShowing:Z

    .line 870
    invoke-virtual {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->doShow(Z)V

    goto :goto_0
.end method
