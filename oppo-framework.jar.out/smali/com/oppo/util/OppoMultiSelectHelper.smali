.class public Lcom/oppo/util/OppoMultiSelectHelper;
.super Ljava/lang/Object;
.source "OppoMultiSelectHelper.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION_OFFSET:J = 0x0L

.field private static final DEFAULT_FINAL_VISIBILITY:I = -0x1

.field private static final DEFAULT_FLOW_LAYOUT:I = 0xc090436

.field private static final TAG:Ljava/lang/String; = "OppoMultiSelectHelper"

.field private static final TAG_BOTTOM_IN:Ljava/lang/String; = "BottomIn"

.field private static final TAG_BOTTOM_OUT:Ljava/lang/String; = "BottomOut"

.field private static final TAG_FADE_IN:Ljava/lang/String; = "FadeIn"

.field private static final TAG_FADE_OUT:Ljava/lang/String; = "FadeOut"

.field private static final TAG_RIGHT_IN:Ljava/lang/String; = "RightIn"

.field private static final TAG_RIGHT_OUT:Ljava/lang/String; = "RightOut"

.field private static mBottomInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static mBottomOutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static mFadeInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static mFadeOutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static mRightInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static mRightOutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBarAnimating:Z

.field private mActionBarShow:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mBottomExtra:Landroid/view/View;

.field private mBottomIn:Lcom/oppo/util/OppoAnimationHelper;

.field private mBottomMenu:Landroid/view/View;

.field private mBottomOut:Lcom/oppo/util/OppoAnimationHelper;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mClearing:Z

.field private mExtraIn:Lcom/oppo/util/OppoAnimationHelper;

.field private mExtraOut:Lcom/oppo/util/OppoAnimationHelper;

.field private mFinishing:Z

.field private mFlowIn:Lcom/oppo/util/OppoAnimationHelper;

.field private mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

.field private mFlowOut:Lcom/oppo/util/OppoAnimationHelper;

.field private mListener:Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

.field private mMajorVisibility:I

.field private mRunningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mStarting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mRightInList:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mRightOutList:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeInList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeOutList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 135
    const v0, 0xc090436

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoMultiSelectHelper;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layout"    # I

    .prologue
    .line 140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoMultiSelectHelper;-><init>(Landroid/app/Activity;Landroid/view/View;IJ)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layout"    # I
    .param p4, "offset"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarShow:Z

    .line 89
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarAnimating:Z

    .line 90
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mClearing:Z

    .line 91
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    .line 92
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z

    .line 93
    iput v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mMajorVisibility:I

    .line 94
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    .line 95
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    .line 96
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    .line 97
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    .line 98
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomExtra:Landroid/view/View;

    .line 99
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 100
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 101
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 102
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 103
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 104
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 105
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 106
    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mListener:Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    .line 150
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoMultiSelectHelper;->initActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    .line 151
    invoke-direct {p0, p2}, Lcom/oppo/util/OppoMultiSelectHelper;->initBottomMenu(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    .line 152
    invoke-direct {p0, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->createFlowMenu(I)Lcom/oppo/widget/OppoOptionMenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 153
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getBottomInVisibility()I

    move-result v2

    invoke-static {v0, v1, v2, p4, p5}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 154
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getBottomOutVisibility()I

    move-result v2

    invoke-static {v0, v1, v2, p4, p5}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 155
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getFlowInVisibility()I

    move-result v2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 156
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getFlowOutVisibility()I

    move-result v2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 157
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getActionBarShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->setActionBarShow(Z)V

    .line 158
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->initActionBar()V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "offset"    # J

    .prologue
    .line 145
    const v3, 0xc090436

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoMultiSelectHelper;-><init>(Landroid/app/Activity;Landroid/view/View;IJ)V

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/oppo/util/OppoMultiSelectHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/util/OppoMultiSelectHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/util/OppoMultiSelectHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/util/OppoMultiSelectHelper;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/util/OppoMultiSelectHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/util/OppoMultiSelectHelper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->tryClearAnimations()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/util/OppoMultiSelectHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/util/OppoMultiSelectHelper;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z

    return v0
.end method

.method private clearAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1179
    :goto_0
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 1181
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->clear()V

    .line 1182
    const-string v1, "OppoMultiSelectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAnimation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :cond_0
    return-void
.end method

.method private static createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "fillAfter"    # Z
    .param p5, "res"    # I
    .param p6, "in"    # Z
    .param p7, "offset"    # J
    .param p9, "tag"    # Ljava/lang/String;

    .prologue
    .line 895
    move/from16 v0, p5

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-static/range {v3 .. v12}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZLandroid/view/animation/Animation;ZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v2

    return-object v2
.end method

.method private static createAnimation(Landroid/content/Context;Landroid/view/View;IZZLandroid/view/animation/Animation;ZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "fillAfter"    # Z
    .param p5, "animation"    # Landroid/view/animation/Animation;
    .param p6, "in"    # Z
    .param p7, "offset"    # J
    .param p9, "tag"    # Ljava/lang/String;

    .prologue
    .line 885
    new-instance v3, Lcom/oppo/util/OppoAnimationHelper;

    invoke-static {p1, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->getBottomView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v6

    move-object/from16 v4, p5

    move/from16 v5, p6

    move v7, p4

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/oppo/util/OppoAnimationHelper;-><init>(Landroid/view/animation/Animation;ZLandroid/view/View;ZJ)V

    .line 887
    .local v3, "helper":Lcom/oppo/util/OppoAnimationHelper;
    invoke-virtual {v3, p2}, Lcom/oppo/util/OppoAnimationHelper;->setFinalVisibility(I)V

    .line 888
    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/oppo/util/OppoAnimationHelper;->setTag(Ljava/lang/String;)V

    .line 889
    return-object v3
.end method

.method private static createBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 902
    const/4 v5, 0x1

    const v6, 0xc0a0400

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static createBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 909
    const/4 v5, 0x0

    const v6, 0xc0a0401

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static createFadeIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 930
    const/4 v5, 0x0

    const v6, 0xc0a0404

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static createFadeOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v5, 0x0

    const v6, 0xc0a0405

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private createFlowMenu(I)Lcom/oppo/widget/OppoOptionMenuBar;
    .locals 6
    .param p1, "layout"    # I

    .prologue
    const v5, 0xc02049b

    .line 968
    iget-object v3, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 969
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 970
    .local v1, "flowMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    if-nez v1, :cond_1

    .line 971
    iget-object v3, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 972
    .local v2, "parent":Landroid/view/View;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 973
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "flowMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 974
    .restart local v1    # "flowMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    if-nez v1, :cond_0

    .line 975
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have an OppoOptionMenuBar whose id attribute is \'oppo.R.id.oppo_flow_bar\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 982
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setFlowMenuFlag(Z)V

    .line 985
    .end local v2    # "parent":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private static createRightIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 916
    const/4 v5, 0x0

    const v6, 0xc0a0402

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static createRightOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 923
    const/4 v5, 0x0

    const v6, 0xc0a0403

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/oppo/util/OppoMultiSelectHelper;->createAnimation(Landroid/content/Context;Landroid/view/View;IZZIZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimationHelper;",
            ">;)",
            "Lcom/oppo/util/OppoAnimationHelper;"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimationHelper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 764
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 768
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionBarShow()Z
    .locals 2

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1087
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    .line 1090
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBottomInVisibility()I
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method private getBottomInfo()V
    .locals 5

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 1014
    .local v0, "bottomMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationVisibility()I

    move-result v1

    iput v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mMajorVisibility:I

    .line 1015
    const/4 v1, 0x0

    const-string v2, "OppoMultiSelectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBottomInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mMajorVisibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1017
    .end local v0    # "bottomMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void
.end method

.method private getBottomOutVisibility()I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    instance-of v0, v0, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1068
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static getBottomView(Landroid/view/View;Z)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "forceMenuBar"    # Z

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 745
    instance-of v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 746
    const v0, 0xc02046c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 749
    :cond_0
    return-object p0
.end method

.method private getFlowInVisibility()I
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    instance-of v0, v0, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 1074
    const/16 v0, 0x8

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFlowOutVisibility()I
    .locals 1

    .prologue
    .line 1081
    const/16 v0, 0x8

    return v0
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 1096
    .local v0, "actionBar":Lcom/android/internal/app/OppoWindowDecorActionBar;
    if-eqz v0, :cond_0

    .line 1097
    new-instance v1, Lcom/oppo/util/OppoMultiSelectHelper$1;

    invoke-direct {v1, p0}, Lcom/oppo/util/OppoMultiSelectHelper$1;-><init>(Lcom/oppo/util/OppoMultiSelectHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1114
    new-instance v1, Lcom/oppo/util/OppoMultiSelectHelper$2;

    invoke-direct {v1, p0}, Lcom/oppo/util/OppoMultiSelectHelper$2;-><init>(Lcom/oppo/util/OppoMultiSelectHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1132
    :cond_0
    return-void
.end method

.method private initActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 990
    if-nez p1, :cond_0

    .line 991
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your activity is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 994
    return-object p1
.end method

.method private initBottomMenu(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1007
    return-object p1
.end method

.method private isAnimationMatch(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1136
    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 1137
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1138
    const/4 v2, 0x1

    .line 1141
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMoreGroupExpanded()Z
    .locals 2

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 1048
    .local v0, "bottomMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOperationsGroupExpanded()Z

    move-result v1

    .line 1050
    .end local v0    # "bottomMenu":Lcom/oppo/widget/OppoOptionMenuBar;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeBottomIn(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 508
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomIn(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 495
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J

    .prologue
    const/4 v3, 0x0

    .line 466
    const-string v0, "BottomIn"

    invoke-static {p1, v3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomIn(Landroid/content/Context;Landroid/view/View;IJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 811
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J

    .prologue
    .line 798
    const-string v0, "BottomIn"

    invoke-static {p1, p3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 817
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 818
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 819
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 821
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_0
    return-object v0
.end method

.method private static makeBottomIn(Landroid/content/Context;Landroid/view/View;IZLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 805
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomIn(Landroid/content/Context;Landroid/view/View;J)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # J

    .prologue
    .line 481
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomOut(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 566
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomOut(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 553
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J

    .prologue
    const/4 v3, 0x0

    .line 524
    const-string v0, "BottomOut"

    invoke-static {p1, v3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomOut(Landroid/content/Context;Landroid/view/View;IJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 842
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J

    .prologue
    .line 829
    const-string v0, "BottomOut"

    invoke-static {p1, p3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 848
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 849
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 850
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 852
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_0
    return-object v0
.end method

.method private static makeBottomOut(Landroid/content/Context;Landroid/view/View;IZLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 836
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeBottomOut(Landroid/content/Context;Landroid/view/View;J)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # J

    .prologue
    .line 539
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeFadeIn(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 695
    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "FadeIn"

    invoke-static {p1, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeFadeIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeFadeIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 860
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeInList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 861
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 862
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createFadeIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 864
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeInList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_0
    return-object v0
.end method

.method public static makeFadeOut(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 709
    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    const-string v0, "FadeOut"

    invoke-static {p1, v3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeFadeOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeFadeOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 872
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeOutList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 873
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 874
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createFadeOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 876
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeOutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_0
    return-object v0
.end method

.method public static makeItemLeft(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeItemUp(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 723
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeRightIn(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 624
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightIn(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeRightIn(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 611
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeRightIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J

    .prologue
    const/4 v3, 0x0

    .line 582
    const-string v0, "RightIn"

    invoke-static {p1, v3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeRightIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 774
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mRightInList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 775
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 776
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createRightIn(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 778
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mRightInList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_0
    return-object v0
.end method

.method public static makeRightIn(Landroid/content/Context;Landroid/view/View;J)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # J

    .prologue
    .line 597
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeRightOut(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 682
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightOut(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeRightOut(Landroid/content/Context;Landroid/view/View;I)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 669
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static makeRightOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "offset"    # J

    .prologue
    const/4 v3, 0x0

    .line 640
    const-string v0, "RightOut"

    invoke-static {p1, v3, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeRightOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "forceMenuBar"    # Z
    .param p4, "offset"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 786
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mRightOutList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->findHelper(Landroid/view/View;Ljava/util/List;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 787
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    if-nez v0, :cond_0

    .line 788
    invoke-static/range {p0 .. p6}, Lcom/oppo/util/OppoMultiSelectHelper;->createRightOut(Landroid/content/Context;Landroid/view/View;IZJLjava/lang/String;)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    .line 790
    sget-object v1, Lcom/oppo/util/OppoMultiSelectHelper;->mRightOutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_0
    return-object v0
.end method

.method public static makeRightOut(Landroid/content/Context;Landroid/view/View;J)Lcom/oppo/util/OppoAnimationHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # J

    .prologue
    .line 655
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeRightOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    return-object v0
.end method

.method private static makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "forceMenuBar"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 754
    if-eqz p0, :cond_0

    .line 755
    invoke-static {p0, p1}, Lcom/oppo/util/OppoMultiSelectHelper;->getBottomView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 758
    .end local p2    # "tag":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private needBottomAnimation()Z
    .locals 1

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->isActionBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->isMoreGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needCancelAnimation(Lcom/oppo/util/OppoAnimationHelper;)Z
    .locals 4
    .param p1, "helper"    # Lcom/oppo/util/OppoAnimationHelper;

    .prologue
    const/4 v1, 0x0

    .line 1146
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1148
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "RightIn"

    invoke-static {v2, v1, v3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "RightOut"

    invoke-static {v2, v1, v3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1151
    :cond_1
    return v1
.end method

.method private needClearAnimations()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1156
    iget-boolean v4, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mClearing:Z

    if-nez v4, :cond_2

    .line 1157
    iget-boolean v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarAnimating:Z

    .line 1158
    .local v2, "isRunning":Z
    iget-object v4, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 1159
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->needCancelAnimation(Lcom/oppo/util/OppoAnimationHelper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1160
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->cancel()V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimationHelper;->isRunning()Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    .line 1165
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x1

    .line 1167
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isRunning":Z
    :cond_2
    return v3
.end method

.method private onFinishActionMode()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1042
    :cond_0
    return-void
.end method

.method private onStartActionMode()Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 1022
    const/4 v0, 0x0

    const-string v1, "OppoMultiSelectHelper"

    const-string v2, "onStartActionMode"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    .line 1024
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1025
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowIn:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 1027
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->needBottomAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOut:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 1029
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraOut:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private showBottomExtra(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 960
    if-eqz p1, :cond_0

    .line 961
    const-string v1, "OppoMultiSelectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showBottomExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 962
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 964
    :cond_0
    return-void

    .line 962
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showMajorGroup(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 951
    instance-of v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 952
    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 953
    .local v0, "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    const-string v2, "OppoMultiSelectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMajorGroup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 954
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationVisibility(I)V

    .line 956
    .end local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void

    .line 954
    .restart local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_1
    iget v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mMajorVisibility:I

    goto :goto_0
.end method

.method private startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/oppo/util/OppoAnimationHelper;

    .prologue
    const/4 v5, 0x0

    .line 1190
    if-eqz p1, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    const-string v2, "OppoMultiSelectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBottomAnimation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v1

    .line 1194
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getFillAfter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1195
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1197
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1198
    .local v0, "height":I
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1199
    const-string v2, "OppoMultiSelectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offsetTopAndBottom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1201
    .end local v0    # "height":I
    :cond_0
    invoke-virtual {p1, v5, p0}, Lcom/oppo/util/OppoAnimationHelper;->start(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 1203
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private tryClearAnimations()V
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->needClearAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->doClearAnimations()V

    .line 1175
    :cond_0
    return-void
.end method

.method private updateMenuBar(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "refreshMore"    # Z

    .prologue
    .line 943
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 944
    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 945
    .local v0, "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    iget-object v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v0, v1, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    .line 947
    .end local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void
.end method


# virtual methods
.method public doClearAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mClearing:Z

    if-nez v0, :cond_2

    .line 403
    iput-boolean v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mClearing:Z

    .line 404
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->clearAnimations()V

    .line 405
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomExtra:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->showBottomExtra(Landroid/view/View;Z)V

    .line 407
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/oppo/util/OppoMultiSelectHelper;->showMajorGroup(Landroid/view/View;Z)V

    .line 408
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/oppo/util/OppoMultiSelectHelper;->updateMenuBar(Landroid/view/View;Z)V

    .line 410
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    .line 411
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z

    .line 412
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mListener:Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mListener:Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

    invoke-interface {v0}, Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;->onAnimationsEnd()V

    .line 415
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mClearing:Z

    .line 417
    :cond_2
    return-void
.end method

.method public finishActionMode()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->onFinishActionMode()V

    .line 319
    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getFlowBar()Lcom/oppo/widget/OppoOptionMenuBar;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    return-object v0
.end method

.method public isActionBarShow()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarShow:Z

    return v0
.end method

.method public isAnimationsRunning()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mStarting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->recycle()V

    .line 272
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    .line 275
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->doClearAnimations()V

    .line 255
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 260
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoMultiSelectHelper;->isAnimationMatch(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->tryClearAnimations()V

    .line 175
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 167
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    const-string v0, "OppoMultiSelectHelper"

    const-string v1, "onDestroyActionMode"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->doClearAnimations()V

    .line 214
    iput-boolean v3, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z

    .line 215
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0, v0, v2}, Lcom/oppo/util/OppoMultiSelectHelper;->updateMenuBar(Landroid/view/View;Z)V

    .line 216
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/oppo/util/OppoMultiSelectHelper;->showMajorGroup(Landroid/view/View;Z)V

    .line 217
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomMenu:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->needBottomAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mMajorVisibility:I

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomIn:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraIn:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowOut:Lcom/oppo/util/OppoAnimationHelper;

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoMultiSelectHelper;->startBottomAnimation(Lcom/oppo/util/OppoAnimationHelper;)V

    .line 231
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionMode:Landroid/view/ActionMode;

    .line 232
    return-void

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomExtra:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/oppo/util/OppoMultiSelectHelper;->showBottomExtra(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 424
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 426
    .local v0, "helper":Lcom/oppo/util/OppoAnimationHelper;
    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomIn:Lcom/oppo/util/OppoAnimationHelper;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraIn:Lcom/oppo/util/OppoAnimationHelper;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowIn:Lcom/oppo/util/OppoAnimationHelper;

    if-ne v0, v2, :cond_0

    .line 427
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 430
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :cond_2
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimationHelper;

    .line 432
    .restart local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOut:Lcom/oppo/util/OppoAnimationHelper;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraOut:Lcom/oppo/util/OppoAnimationHelper;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowOut:Lcom/oppo/util/OppoAnimationHelper;

    if-ne v0, v2, :cond_3

    .line 433
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 436
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimationHelper;
    :cond_5
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mRightInList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 437
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mRightOutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 438
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeInList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 439
    sget-object v2, Lcom/oppo/util/OppoMultiSelectHelper;->mFadeOutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 440
    iget-object v2, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 441
    const/4 v2, 0x0

    const-string v3, "OppoMultiSelectHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycle : mBottomInList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBottomOutList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public recycleAnimation(Lcom/oppo/util/OppoAnimationHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/oppo/util/OppoAnimationHelper;

    .prologue
    .line 449
    sget-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomInList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomOutList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public setActionBarShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarShow:Z

    .line 298
    return-void
.end method

.method public setExtraBottomView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your extra view to make animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iput-object p1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mBottomExtra:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraIn:Lcom/oppo/util/OppoAnimationHelper;

    .line 353
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/util/OppoMultiSelectHelper;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IJ)Lcom/oppo/util/OppoAnimationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mExtraOut:Lcom/oppo/util/OppoAnimationHelper;

    .line 354
    return-void
.end method

.method public setOnAnimationsEndListener(Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mListener:Lcom/oppo/util/OppoMultiSelectHelper$OnAnimationsEndListener;

    .line 364
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mCallback:Landroid/view/ActionMode$Callback;

    .line 308
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->getBottomInfo()V

    .line 309
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mFlowMenu:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->updateMenuBar(Landroid/view/View;Z)V

    .line 310
    invoke-direct {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->onStartActionMode()Landroid/view/ActionMode;

    .line 311
    return-void
.end method

.method public startRightAnimation(Lcom/oppo/util/OppoAnimationHelper;)V
    .locals 4
    .param p1, "helper"    # Lcom/oppo/util/OppoAnimationHelper;

    .prologue
    const/4 v3, 0x0

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/oppo/util/OppoMultiSelectHelper;->isAnimationsRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "OppoMultiSelectHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRightAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper;->mRunningList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p1, v3, p0}, Lcom/oppo/util/OppoAnimationHelper;->start(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string v0, "OppoMultiSelectHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRightAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimationHelper;->end()V

    goto :goto_0
.end method
