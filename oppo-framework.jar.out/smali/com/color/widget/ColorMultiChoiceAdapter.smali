.class public Lcom/color/widget/ColorMultiChoiceAdapter;
.super Lcom/color/widget/ColorDecoratorAdapter;
.source "ColorMultiChoiceAdapter.java"

# interfaces
.implements Lcom/color/widget/ColorActionModeCallback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorMultiChoiceAdapter$12;,
        Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;,
        Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;,
        Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;,
        Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;,
        Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorMaker;,
        Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;,
        Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;,
        Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;,
        Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;,
        Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;,
        Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;,
        Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final DEFAULT_FINAL_VISIBILITY:I = -0x1

.field private static final TAG_FADE_IN:Ljava/lang/String; = "FadeIn"

.field private static final TAG_FADE_OUT:Ljava/lang/String; = "FadeOut"

.field private static final TAG_LEFT_IN:Ljava/lang/String; = "LeftIn"

.field private static final TAG_LEFT_OUT:Ljava/lang/String; = "LeftOut"

.field private static final TAG_RIGHT_IN:Ljava/lang/String; = "RightIn"

.field private static final TAG_RIGHT_OUT:Ljava/lang/String; = "RightOut"

.field private static final TAG_SPLIT_MENU:Ljava/lang/String; = "SplitMenu"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionBarShow:Z

.field private mActionMenu:Landroid/view/Menu;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mAlphaListener:Landroid/animation/Animator$AnimatorListener;

.field private mBottomMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorChoiceModeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mDurationChoice:J

.field private mEndListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnding:Z

.field private mFinishAnimation:Z

.field private mFinishing:Z

.field private mHasFinishAnimation:Z

.field private mHasStartAnimation:Z

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

.field private mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

.field private mInterpolatorLeftIn:Landroid/view/animation/Interpolator;

.field private mInterpolatorLeftOut:Landroid/view/animation/Interpolator;

.field private mInterpolatorRightIn:Landroid/view/animation/Interpolator;

.field private mInterpolatorRightOut:Landroid/view/animation/Interpolator;

.field private mListView:Landroid/widget/AbsListView;

.field private mMakeFadeIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMakeFadeOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMakeLeftIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMakeLeftOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMakeRightIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMakeRightOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

.field private mMenuView:Lcom/color/widget/ColorSplitMenuView;

.field private mRightAnimation:Z

.field private mRightDependency:I

.field private mSetValuesFadeIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mSetValuesFadeOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mSetValuesLeftIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mSetValuesLeftOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mSetValuesRightIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mSetValuesRightOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

.field private mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mSplitMenu:Landroid/view/Menu;

.field private mStartAnimation:Z

.field private mStarting:Z

.field private mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

.field private mTranslationYListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/widget/ColorMultiChoiceAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AbsListView;Lcom/color/widget/ColorSplitMenuView;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AbsListView;Lcom/color/widget/ColorSplitMenuView;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Landroid/widget/AbsListView;
    .param p4, "menuView"    # Lcom/color/widget/ColorSplitMenuView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/color/widget/ColorDecoratorAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionBarTab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;

    .line 90
    iput v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mRightDependency:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mDurationChoice:J

    .line 92
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionBarShow:Z

    .line 93
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStarting:Z

    .line 94
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishing:Z

    .line 95
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z

    .line 96
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mRightAnimation:Z

    .line 97
    iput-boolean v4, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasStartAnimation:Z

    .line 98
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasFinishAnimation:Z

    .line 99
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStartAnimation:Z

    .line 100
    iput-boolean v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishAnimation:Z

    .line 101
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftIn:Landroid/view/animation/Interpolator;

    .line 102
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftOut:Landroid/view/animation/Interpolator;

    .line 103
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    .line 104
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    .line 105
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    .line 106
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    .line 107
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    .line 108
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    .line 109
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mContentView:Landroid/view/View;

    .line 110
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    .line 111
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMenu:Landroid/view/Menu;

    .line 112
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceMenuItems:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mBottomMenuItems:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;

    invoke-direct {v0, p0, v4}, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeLeftIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 119
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;

    invoke-direct {v0, p0, v3}, Lcom/color/widget/ColorMultiChoiceAdapter$LeftAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeLeftOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 120
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;

    invoke-direct {v0, p0, v4}, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 121
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;

    invoke-direct {v0, p0, v3}, Lcom/color/widget/ColorMultiChoiceAdapter$RightAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 122
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;

    invoke-direct {v0, p0, v4}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeFadeIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 123
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;

    invoke-direct {v0, p0, v3}, Lcom/color/widget/ColorMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeFadeOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 124
    iput-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    .line 125
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$1;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 143
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$2;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$2;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 162
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$3;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$3;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 174
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$4;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$4;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 186
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$5;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$5;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 198
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$6;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$6;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 210
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$7;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$7;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 222
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$8;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$8;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 234
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$9;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$9;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

    .line 246
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$10;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$10;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mTranslationYListener:Landroid/animation/Animator$AnimatorListener;

    .line 258
    new-instance v0, Lcom/color/widget/ColorMultiChoiceAdapter$11;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter$11;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAlphaListener:Landroid/animation/Animator$AnimatorListener;

    .line 277
    invoke-direct {p0, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->initActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    .line 278
    invoke-direct {p0, p3}, Lcom/color/widget/ColorMultiChoiceAdapter;->initListView(Landroid/widget/AbsListView;)Landroid/widget/AbsListView;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    .line 279
    invoke-direct {p0, p4}, Lcom/color/widget/ColorMultiChoiceAdapter;->initSplitMenu(Lcom/color/widget/ColorSplitMenuView;)Lcom/color/widget/ColorSplitMenuView;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    .line 280
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->initFromResources()V

    .line 281
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->getActionBarShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->setActionBarShow(Z)V

    .line 282
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->initActionBar()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorMultiChoiceAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z

    return v0
.end method

.method static synthetic access$002(Lcom/color/widget/ColorMultiChoiceAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/widget/ColorMultiChoiceAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/color/widget/ColorMultiChoiceAdapter;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAlphaListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorMultiChoiceAdapter;->createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/color/widget/ColorMultiChoiceAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mRightDependency:I

    return v0
.end method

.method static synthetic access$1400(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesLeftOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/color/widget/ColorMultiChoiceAdapter;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorMultiChoiceAdapter;->createLeftAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesRightOut:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/color/widget/ColorMultiChoiceAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->onAllAnimatorsEnd(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/color/widget/ColorMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorMultiChoiceAdapter;->createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->onHideAnimatorsEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->getTargetWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/color/widget/ColorMultiChoiceAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mDurationChoice:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/color/widget/ColorMultiChoiceAdapter;)Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-object v0
.end method

.method private addAnimator(Lcom/color/widget/ColorChoiceModeAnimator;)V
    .locals 5
    .param p1, "animation"    # Lcom/color/widget/ColorChoiceModeAnimator;

    .prologue
    .line 713
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 714
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    instance-of v1, v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v1, :cond_0

    .line 715
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAnimator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->initialize()V

    .line 717
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getDependency()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 718
    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addAfterAnimatorWrappers(Ljava/util/List;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 719
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getDependency()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 720
    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addBeforeAnimatorWrappers(Ljava/util/List;)V

    goto :goto_0

    .line 722
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p1}, Lcom/color/widget/ColorChoiceModeAnimator;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addWithAnimatorWrappers(Ljava/util/List;)V

    goto :goto_0
.end method

.method private addAnimators(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorChoiceModeAnimator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "animations":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorChoiceModeAnimator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorChoiceModeAnimator;

    .line 729
    .local v0, "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->addAnimator(Lcom/color/widget/ColorChoiceModeAnimator;)V

    goto :goto_0

    .line 731
    .end local v0    # "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    :cond_0
    return-void
.end method

.method private addChoiceAnimators(Z)V
    .locals 1
    .param p1, "choice"    # Z

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->getCheckAnimator(Z)Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->makeChoiceAnimators(Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Z)V

    .line 816
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->addAnimators(Ljava/util/List;)V

    .line 817
    return-void
.end method

.method private createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p2, "position"    # I
    .param p3, "target"    # Landroid/view/View;
    .param p4, "maker"    # Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorChoiceModeAnimator;",
            ">;I",
            "Landroid/view/View;",
            "Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "animations":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorChoiceModeAnimator;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/color/widget/ColorMultiChoiceAdapter;->makeChoiceAnimator(ILandroid/view/View;Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)Lcom/color/widget/ColorChoiceModeAnimator;

    move-result-object v0

    .line 822
    .local v0, "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    if-eqz v0, :cond_0

    .line 823
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_0
    return-void
.end method

.method private createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 862
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 863
    .local v0, "fadeAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    if-eqz p3, :cond_0

    .line 865
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    :cond_0
    return-object v0

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 862
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createLeftAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 844
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 845
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 846
    if-eqz p3, :cond_0

    .line 847
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 849
    :cond_0
    return-object v0

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 844
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 853
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 854
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 855
    if-eqz p3, :cond_0

    .line 856
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 858
    :cond_0
    return-object v0

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 853
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private finishActionMode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->onFinishActionMode(Ljava/util/List;)V

    .line 688
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 690
    :cond_0
    return-void
.end method

.method private getActionBarShow()Z
    .locals 2

    .prologue
    .line 828
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 829
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    .line 832
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckAnimator(Z)Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    .locals 3
    .param p1, "choice"    # Z

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->hasPositions()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeFadeIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 786
    .local v0, "makerIn":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :goto_0
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->hasPositions()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeFadeOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    .line 787
    .local v1, "makerOut":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :goto_1
    if-eqz p1, :cond_2

    .end local v0    # "makerIn":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :goto_2
    return-object v0

    .line 785
    .end local v1    # "makerOut":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 786
    .restart local v0    # "makerIn":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_1

    .restart local v1    # "makerOut":Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    :cond_2
    move-object v0, v1

    .line 787
    goto :goto_2
.end method

.method private getDefaultMeasureSpec()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 807
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getPositionForView(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "headers":I
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private getTargetWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "width":I
    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 798
    if-nez v0, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->measureTarget(Landroid/view/View;)V

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 803
    :cond_0
    return v0
.end method

.method private hasPositions()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 836
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 837
    .local v0, "actionBar":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 838
    check-cast v1, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, v2}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 839
    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    :cond_0
    return-void
.end method

.method private initActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 888
    if-nez p1, :cond_0

    .line 889
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your activity is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    return-object p1
.end method

.method private initFromResources()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mDurationChoice:J

    .line 873
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0408

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftIn:Landroid/view/animation/Interpolator;

    .line 875
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0409

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorLeftOut:Landroid/view/animation/Interpolator;

    .line 877
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0404

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    .line 879
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0405

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    .line 881
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0406

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    .line 883
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0xc0f0407

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    .line 885
    return-void
.end method

.method private initListView(Landroid/widget/AbsListView;)Landroid/widget/AbsListView;
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your listview to make animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 899
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 900
    return-object p1
.end method

.method private initSplitMenu(Lcom/color/widget/ColorSplitMenuView;)Lcom/color/widget/ColorSplitMenuView;
    .locals 2
    .param p1, "menuView"    # Lcom/color/widget/ColorSplitMenuView;

    .prologue
    .line 904
    if-eqz p1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mBottomMenuItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/color/widget/ColorSplitMenuView;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 907
    :cond_0
    return-object p1
.end method

.method private makeChoiceAnimators(Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Z)V
    .locals 10
    .param p1, "checkMaker"    # Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    .param p2, "choice"    # Z

    .prologue
    const/4 v9, 0x1

    .line 753
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 755
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/color/widget/ColorMultiChoiceAdapter;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 756
    .local v2, "position":I
    if-gez v2, :cond_1

    .line 753
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    invoke-interface {v0, v6, v2}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;->initChoiceView(Landroid/view/View;I)V

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v0, v6}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->findCheckView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 764
    .local v3, "checkView":Landroid/view/View;
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v0, v6}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->findOtherView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 765
    .local v8, "otherView":Landroid/view/View;
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStarting:Z

    if-eqz v0, :cond_4

    .line 766
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasStartAnimation:Z

    if-eqz v0, :cond_3

    .line 767
    iput-boolean v9, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStartAnimation:Z

    .line 768
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    new-instance v5, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;

    const/16 v0, 0x8

    invoke-direct {v5, p0, v8, v0}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;I)V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorMultiChoiceAdapter;->createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V

    .line 778
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;

    invoke-interface {v0, p0, v2, v6, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;->getExtraAnimations(Lcom/color/widget/ColorMultiChoiceAdapter;ILandroid/view/View;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 771
    :cond_4
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishing:Z

    if-eqz v0, :cond_3

    .line 772
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasFinishAnimation:Z

    if-eqz v0, :cond_3

    .line 773
    iput-boolean v9, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishAnimation:Z

    .line 774
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    new-instance v5, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v8, v0}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimatorListener;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Landroid/view/View;I)V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorMultiChoiceAdapter;->createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 782
    .end local v2    # "position":I
    .end local v3    # "checkView":Landroid/view/View;
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "otherView":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceMenuBar"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 734
    if-eqz p1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 737
    .end local p3    # "tag":Ljava/lang/String;
    :cond_0
    return-object p3
.end method

.method private measureTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->getDefaultMeasureSpec()I

    move-result v0

    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->getDefaultMeasureSpec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 812
    return-void
.end method

.method private needChoiceAnimators()Z
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isActionBarShow()Z

    move-result v0

    return v0
.end method

.method private needSetRightView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 628
    if-eqz p1, :cond_2

    .line 629
    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStartAnimation:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishAnimation:Z

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimatorsEnd(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 911
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 912
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 914
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;

    .line 915
    .local v1, "listener":Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;
    invoke-interface {v1, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;->onAnimatorsEnd(Z)V

    goto :goto_0

    .line 917
    .end local v1    # "listener":Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;
    :cond_0
    return-void
.end method

.method private onAllAnimatorsEnd(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 700
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStarting:Z

    .line 701
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishing:Z

    .line 702
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEnding:Z

    .line 703
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStartAnimation:Z

    .line 704
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishAnimation:Z

    .line 705
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    invoke-interface {v0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;->setChoiceAnimationsRunning(Z)V

    .line 708
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->notifyAnimatorsEnd(Z)V

    .line 709
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->notifyDataSetChanged()V

    .line 710
    return-void
.end method

.method private onFinishActionMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method private onHideAnimatorsEnd()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v0}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->onFinish()V

    .line 696
    return-void
.end method

.method private prepareBottomMenu()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mBottomMenuItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->prepareMenu(Ljava/util/List;)V

    .line 665
    return-void
.end method

.method private prepareChoiceMenu()V
    .locals 3

    .prologue
    .line 668
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceMenuItems:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->prepareMenu(Ljava/util/List;)V

    .line 675
    return-void
.end method

.method private prepareMenu(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v4, 0x1

    .line 652
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    if-eqz v2, :cond_0

    .line 653
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    invoke-virtual {v2, v4}, Lcom/color/widget/ColorSplitMenuView;->setMenuUpdateMode(I)V

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    new-instance v2, Lcom/color/animation/ColorAnimatorWrapper;

    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    invoke-virtual {v3, p1, v4}, Lcom/color/widget/ColorSplitMenuView;->getUpdater(Ljava/util/List;Z)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/color/animation/ColorAnimatorWrapper;-><init>(Landroid/animation/Animator;Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v1, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;

    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    const-string v3, "SplitMenu"

    invoke-direct {p0, v2, v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/color/widget/ColorMultiChoiceAdapter$SplitMenuAnimator;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Ljava/util/List;Ljava/lang/String;)V

    .line 658
    .local v1, "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    invoke-direct {p0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->addAnimator(Lcom/color/widget/ColorChoiceModeAnimator;)V

    .line 659
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorSplitMenuView;->setMenuUpdateMode(I)V

    .line 661
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    .end local v1    # "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    :cond_0
    return-void
.end method

.method private setCheckView(Landroid/view/View;I)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 640
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v2, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->findCheckView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 641
    .local v0, "checkView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 642
    .local v1, "visibility":I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setViewVisibility(Landroid/view/View;I)V

    .line 643
    return-void

    .line 641
    .end local v1    # "visibility":I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setChoiceMode(Z)V
    .locals 1
    .param p1, "choice"    # Z

    .prologue
    .line 682
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->setChoiceMode(Z)V

    .line 683
    return-void
.end method

.method private setNotifyCheckedStateEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 920
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ColorListView;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ColorListView;

    invoke-virtual {v0, p1}, Landroid/widget/ColorListView;->setNotifyCheckedStateEnabled(Z)V

    .line 923
    :cond_0
    return-void
.end method

.method private setOtherView(Landroid/view/View;I)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 646
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v2, p1}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->findOtherView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 647
    .local v0, "otherView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    .line 648
    .local v1, "visibility":I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setViewVisibility(Landroid/view/View;I)V

    .line 649
    return-void

    .line 647
    .end local v1    # "visibility":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setViewVisibility(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnAnimatorsEndListener(Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public getActionMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getAnimatorMaker(Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;)Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    .locals 2
    .param p1, "type"    # Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;

    .prologue
    .line 552
    sget-object v0, Lcom/color/widget/ColorMultiChoiceAdapter$12;->$SwitchMap$com$color$widget$ColorMultiChoiceAdapter$AnimatorType:[I

    invoke-virtual {p1}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 564
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeLeftIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeLeftOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 558
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightIn:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMakeRightOut:Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getSplitMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/color/widget/ColorDecoratorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 297
    invoke-direct {p0, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->needSetRightView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, p2, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setCheckView(Landroid/view/View;I)V

    .line 299
    invoke-direct {p0, p2, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setOtherView(Landroid/view/View;I)V

    .line 300
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;

    invoke-interface {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;->onBindView(ILandroid/view/View;)V

    .line 304
    :cond_0
    return-object p2
.end method

.method public isActionBarShow()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionBarShow:Z

    return v0
.end method

.method public isAnimationsRunning()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStarting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChoiceMode()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    invoke-interface {v0}, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;->isChoiceMode()Z

    move-result v0

    return v0
.end method

.method public lockMenuUpdate()V
    .locals 2

    .prologue
    .line 522
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 523
    .local v0, "actionBar":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 524
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->lockMenuUpdate()V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    invoke-virtual {v1}, Lcom/color/widget/ColorSplitMenuView;->lockMenuUpdate()V

    .line 529
    :cond_1
    return-void
.end method

.method public makeChoiceAnimator(ILandroid/view/View;Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)Lcom/color/widget/ColorChoiceModeAnimator;
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Landroid/view/View;
    .param p3, "maker"    # Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "animation":Lcom/color/widget/ColorChoiceModeAnimator;
    if-eqz p2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {p3, v1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter$AnimatorMaker;->makeAnimator(Landroid/content/Context;Landroid/view/View;)Lcom/color/widget/ColorChoiceModeAnimator;

    move-result-object v0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorChoiceModeAnimator;->appendTag(Ljava/lang/String;)V

    .line 583
    if-eqz p4, :cond_0

    .line 584
    invoke-virtual {v0, p4}, Lcom/color/widget/ColorChoiceModeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    :cond_0
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 309
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 310
    iput-object p2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMenu:Landroid/view/Menu;

    .line 311
    iput-boolean v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mStarting:Z

    .line 312
    invoke-direct {p0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setChoiceMode(Z)V

    .line 313
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    invoke-interface {v0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;->setChoiceAnimationsRunning(Z)V

    .line 316
    :cond_0
    invoke-direct {p0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->addChoiceAnimators(Z)V

    .line 317
    return v1
.end method

.method public onCreateSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 356
    iput-object p2, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyActionMode"

    invoke-static {v2, v0, v1}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 333
    iput-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 334
    iput-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionMenu:Landroid/view/Menu;

    .line 335
    iput-object v3, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    .line 336
    iput-boolean v4, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mFinishing:Z

    .line 337
    invoke-direct {p0, v2}, Lcom/color/widget/ColorMultiChoiceAdapter;->setChoiceMode(Z)V

    .line 338
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;

    invoke-interface {v0, v4}, Lcom/color/widget/ColorMultiChoiceAdapter$ChoiceAnimation;->setChoiceAnimationsRunning(Z)V

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->needChoiceAnimators()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0, v2}, Lcom/color/widget/ColorMultiChoiceAdapter;->addChoiceAnimators(Z)V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->prepareBottomMenu()V

    .line 346
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->notifyDataSetChanged()V

    .line 347
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->notifyDataSetChanged()V

    .line 352
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public onSplitItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mSplitMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSplitMenuView;->bindMenu(Landroid/view/Menu;)V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->prepareChoiceMenu()V

    .line 376
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->notifyDataSetChanged()V

    .line 377
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v0

    return v0
.end method

.method public removeOnAnimatorsEndListener(Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/widget/ColorMultiChoiceAdapter$OnAnimatorsEndListener;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public setActionBarShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActionBarShow:Z

    .line 516
    return-void
.end method

.method setActionModeCallaback(Lcom/color/widget/ColorActionModeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/color/widget/ColorActionModeCallback;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 613
    .local v0, "actionBar":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v1, :cond_0

    .line 614
    check-cast v0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {v0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setActionModeCallback(Lcom/color/widget/ColorActionModeCallback;)V

    .line 616
    :cond_0
    return-void
.end method

.method setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 386
    instance-of v0, p1, Lcom/color/widget/ColorMultiChoiceAdapter$Choosable;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your adapter must implement interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".Choosable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    invoke-super {p0, p1}, Lcom/color/widget/ColorDecoratorAdapter;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 391
    return-void
.end method

.method public setHasFinishAnimation(Z)V
    .locals 0
    .param p1, "hasAnim"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasFinishAnimation:Z

    .line 606
    return-void
.end method

.method public setHasStartAnimation(Z)V
    .locals 0
    .param p1, "hasAnim"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mHasStartAnimation:Z

    .line 597
    return-void
.end method

.method public setOtherAnimation(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mRightAnimation:Z

    .line 423
    return-void
.end method

.method public setRightDependency(I)V
    .locals 0
    .param p1, "dependency"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mRightDependency:I

    .line 432
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 475
    invoke-direct {p0, v1}, Lcom/color/widget/ColorMultiChoiceAdapter;->setNotifyCheckedStateEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 477
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 478
    invoke-direct {p0, v2}, Lcom/color/widget/ColorMultiChoiceAdapter;->setNotifyCheckedStateEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 480
    return-void
.end method

.method public unlockMenuUpdate()V
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 536
    .local v0, "actionBar":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v1, :cond_0

    .line 537
    check-cast v0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->unlockMenuUpdate()V

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceAdapter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    invoke-virtual {v1}, Lcom/color/widget/ColorSplitMenuView;->unlockMenuUpdate()V

    .line 542
    :cond_1
    return-void
.end method
