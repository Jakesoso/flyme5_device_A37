.class public Lcom/color/widget/ColorSearchViewChangeAnim;
.super Landroid/widget/LinearLayout;
.source "ColorSearchViewChangeAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$TargetAnimListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$BaseAnimListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;,
        Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;
    }
.end annotation


# static fields
.field private static final ALPHA_FOREGROUND:F = 0.5f

.field private static final DEBUG:Z = false

.field private static final SEARCH_ANIM:I = 0x3ea

.field private static final SEARCH_HIDE:I = 0x3e9

.field private static final SEARCH_SHOW:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ColorSearchViewChangeAnim"


# instance fields
.field private mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

.field private final mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mCurrentShowAnim:Landroid/animation/AnimatorSet;

.field private mForeground:Landroid/view/View;

.field private final mHomeBack:Landroid/widget/ImageView;

.field private mHomeBackStartUpX:I

.field private mHomeBackWidth:I

.field private mIsActionBarShow:Z

.field private mIsCallWindowFocus:Z

.field private mIsTriggerActionBarAnim:Z

.field private mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

.field private mOnClickHomebackListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

.field private final mSearchLayout:Landroid/view/ViewGroup;

.field private final mSearchMarginLeft:I

.field private mSearchState:I

.field private final mSearchView:Landroid/widget/SearchView;

.field private mSearchViewRight:I

.field private mSearchViewShowWidth:I

.field private mSearchViewStartUpX:I

.field private mSearchViewWidth:I

.field private final mShowActionBarRunnable:Ljava/lang/Runnable;

.field private final mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

.field private final mShowImeRunnable:Ljava/lang/Runnable;

.field private final mUpMarginLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .line 80
    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    .line 81
    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnClickHomebackListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

    .line 83
    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    .line 84
    iput-boolean v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z

    .line 85
    iput-boolean v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsActionBarShow:Z

    .line 86
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    .line 87
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewWidth:I

    .line 88
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewShowWidth:I

    .line 89
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewStartUpX:I

    .line 90
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackStartUpX:I

    .line 91
    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewRight:I

    .line 92
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    .line 93
    iput-boolean v2, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsCallWindowFocus:Z

    .line 94
    new-instance v0, Lcom/color/widget/ColorSearchViewChangeAnim$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$1;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    .line 101
    new-instance v0, Lcom/color/widget/ColorSearchViewChangeAnim$2;

    invoke-direct {v0, p0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim$2;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 116
    new-instance v0, Lcom/color/widget/ColorSearchViewChangeAnim$3;

    invoke-direct {v0, p0, v2}, Lcom/color/widget/ColorSearchViewChangeAnim$3;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 135
    new-instance v0, Lcom/color/widget/ColorSearchViewChangeAnim$4;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$4;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lcom/color/widget/ColorSearchViewChangeAnim$5;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$5;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 159
    const v0, 0xc0804f3

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->setBackgroundResource(I)V

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090459

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0504a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050486

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mUpMarginLeft:I

    .line 165
    const v0, 0xc020492

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchLayout:Landroid/view/ViewGroup;

    .line 166
    const v0, 0xc020493

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    .line 167
    const v0, 0xc020494

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    .line 168
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 169
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->unfocusSearchAutoComplete()V

    .line 170
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    invoke-direct {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->resetPosition(I)V

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/color/widget/ColorSearchViewChangeAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    return v0
.end method

.method static synthetic access$102(Lcom/color/widget/ColorSearchViewChangeAnim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    return p1
.end method

.method static synthetic access$200(Lcom/color/widget/ColorSearchViewChangeAnim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/color/widget/ColorSearchViewChangeAnim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/color/widget/ColorSearchViewChangeAnim;)Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/color/widget/ColorSearchViewChangeAnim;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/color/widget/ColorSearchViewChangeAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->showActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/color/widget/ColorSearchViewChangeAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->showSoftInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorSearchViewChangeAnim;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 564
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    invoke-interface {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addWithAnimator(Landroid/animation/Animator;)V

    .line 566
    return-void
.end method

.method private cancelActionBarShowHide()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    invoke-interface {v0}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->cancelShowHide()V

    .line 561
    :cond_0
    return-void
.end method

.method private hideActionBar()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z

    .line 553
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    check-cast v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 555
    :cond_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 616
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 619
    :cond_0
    return-void
.end method

.method private isActionBarShowing()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    check-cast v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeRunnables()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 570
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method private resetActionBar()V
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    check-cast v0, Landroid/app/ActionBar;

    .line 537
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 538
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 539
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 541
    .end local v0    # "bar":Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method private resetPosition(I)V
    .locals 4
    .param p1, "paddingLeft"    # I

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 520
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 522
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 523
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->removeRunnables()V

    .line 481
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->cancelActionBarShowHide()V

    .line 483
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->unfocusSearchAutoComplete()V

    .line 484
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->hideSoftInput()V

    .line 486
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 489
    :cond_0
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 510
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->post(Ljava/lang/Runnable;)Z

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->hideSoftInput()V

    goto :goto_0
.end method

.method private showActionBar()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z

    .line 546
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    check-cast v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 548
    :cond_0
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 608
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 609
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 611
    :cond_0
    return-void
.end method

.method private unfocusSearchAutoComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-direct {p0, v2}, Lcom/color/widget/ColorSearchViewChangeAnim;->setImeVisibility(Z)V

    .line 493
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 494
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 495
    iget-boolean v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsCallWindowFocus:Z

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 504
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 507
    :cond_0
    return-void

    .line 498
    .end local v0    # "autoComplete":Landroid/widget/AutoCompleteTextView;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsCallWindowFocus:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 188
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 189
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xc020493

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnClickHomebackListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnClickHomebackListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

    invoke-interface {v0}, Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;->onClickHomeback()V

    .line 201
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsCallWindowFocus:Z

    .line 181
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->resetState()V

    .line 182
    return-void
.end method

.method public restoreState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 575
    iget v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    .line 579
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->unfocusSearchAutoComplete()V

    .line 581
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 585
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    :cond_3
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_4

    .line 588
    iget v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    invoke-direct {p0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->resetPosition(I)V

    .line 589
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 591
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_4

    .line 592
    iget v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 595
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setActionBar(Landroid/app/ActionBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/app/ActionBar;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->isActionBarShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mIsActionBarShow:Z

    .line 221
    check-cast p1, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p1    # "bar":Landroid/app/ActionBar;
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .line 222
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setSearchBarMode(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public setActionModeAnim(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 232
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    invoke-interface {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setActionModeAnim(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/view/View;)V
    .locals 3
    .param p1, "foreground"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 452
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public setOnAnimationListener(Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    .line 216
    return-void
.end method

.method public setOnClickHomebackListener(Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mOnClickHomebackListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnClickHomebackListener;

    .line 212
    return-void
.end method

.method public setSearchAutoCompleteFocus(Z)V
    .locals 3
    .param p1, "isImeVisiblity"    # Z

    .prologue
    const/4 v2, 0x1

    .line 433
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 437
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 439
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 440
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 442
    :cond_0
    if-eqz p1, :cond_1

    .line 443
    invoke-direct {p0, v2}, Lcom/color/widget/ColorSearchViewChangeAnim;->setImeVisibility(Z)V

    .line 445
    :cond_1
    return-void
.end method

.method public setSearchViewDisabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 410
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 412
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->setSearchViewBackground()V

    .line 416
    return-void
.end method

.method public setSearchViewEnabled()V
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 426
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->setSearchViewBackground()V

    .line 430
    return-void
.end method

.method public setStateRestore()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->resetState()V

    .line 449
    return-void
.end method

.method public showForeground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 459
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 464
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    .line 465
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchLayout:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 467
    .local v0, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 468
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10c0003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 471
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 474
    .end local v0    # "b":Landroid/animation/AnimatorSet$Builder;
    :cond_1
    return-void

    .line 467
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public startSearchViewDownAnim()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 336
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    if-eq v6, v7, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/16 v6, 0x3ea

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    .line 340
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->unfocusSearchAutoComplete()V

    .line 342
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    .line 343
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 345
    :cond_2
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->isActionBarShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 350
    const/4 v5, 0x0

    .line 351
    .local v5, "startValue":F
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    neg-int v6, v6

    int-to-float v4, v6

    .line 352
    .local v4, "endValue":F
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    const-string v7, "x"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 353
    .local v1, "animHomeX":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v1, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mUpMarginLeft:I

    int-to-float v5, v6

    .line 357
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    int-to-float v4, v6

    .line 358
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    const-string v7, "x"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 359
    .local v3, "animSearchX":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v3, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewRight:I

    iget v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mUpMarginLeft:I

    sub-int/2addr v6, v7

    int-to-float v5, v6

    .line 363
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewWidth:I

    int-to-float v4, v6

    .line 364
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    const-string v7, "width"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 365
    .local v2, "animSearchWidth":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$8;

    invoke-direct {v6, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$8;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v2, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    const/high16 v5, 0x3f000000    # 0.5f

    .line 381
    const/4 v4, 0x0

    .line 382
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 384
    .local v0, "animFgAlpha":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v0, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    .end local v0    # "animFgAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public startSearchViewUpAnim()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 238
    const/16 v6, 0x3e9

    iget v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    if-eq v6, v7, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/16 v6, 0x3ea

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I

    .line 242
    invoke-virtual {p0, v9}, Lcom/color/widget/ColorSearchViewChangeAnim;->setSearchAutoCompleteFocus(Z)V

    .line 243
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mActionBarCallback:Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->isActionBarShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    invoke-direct {p0, v9}, Lcom/color/widget/ColorSearchViewChangeAnim;->resetPosition(I)V

    .line 250
    invoke-direct {p0, v10}, Lcom/color/widget/ColorSearchViewChangeAnim;->setImeVisibility(Z)V

    .line 251
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewRight:I

    .line 252
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 253
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    .line 254
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackStartUpX:I

    .line 256
    :cond_2
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    if-nez v6, :cond_3

    .line 257
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    .line 259
    :cond_3
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_4

    .line 260
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewStartUpX:I

    .line 261
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewWidth:I

    .line 262
    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewShowWidth:I

    .line 280
    :cond_4
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewWidth:I

    int-to-float v5, v6

    .line 281
    .local v5, "startValue":F
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchViewRight:I

    iget v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mUpMarginLeft:I

    sub-int/2addr v6, v7

    int-to-float v4, v6

    .line 282
    .local v4, "endValue":F
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    const-string v7, "width"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 283
    .local v2, "animSearchWidth":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$6;

    invoke-direct {v6, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$6;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimWidthListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v2, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchMarginLeft:I

    int-to-float v5, v6

    .line 302
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mUpMarginLeft:I

    int-to-float v4, v6

    .line 303
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    const-string v7, "x"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 304
    .local v3, "animSearchX":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$7;

    invoke-direct {v6, p0}, Lcom/color/widget/ColorSearchViewChangeAnim$7;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v3, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    iget v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBackWidth:I

    neg-int v6, v6

    int-to-float v5, v6

    .line 318
    const/4 v4, 0x0

    .line 319
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    const-string v7, "x"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 320
    .local v1, "animHomeX":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimXListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v1, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 325
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const/4 v5, 0x0

    .line 327
    const/high16 v4, 0x3f000000    # 0.5f

    .line 328
    iget-object v6, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v11, [F

    aput v5, v8, v9

    aput v4, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    .local v0, "animFgAlpha":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;

    iget-object v7, p0, Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/color/widget/ColorSearchViewChangeAnim$AnimAlphaListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/view/View;FF)V

    invoke-direct {p0, v0, v6}, Lcom/color/widget/ColorSearchViewChangeAnim;->addSearchAnimation(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    .end local v0    # "animFgAlpha":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-direct {p0}, Lcom/color/widget/ColorSearchViewChangeAnim;->hideActionBar()V

    goto/16 :goto_0
.end method
