.class public Lcom/color/widget/ColorBottomMenuAnimator;
.super Ljava/lang/Object;
.source "ColorBottomMenuAnimator.java"

# interfaces
.implements Lcom/color/widget/ColorBottomMenuCallback$Updater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorBottomMenuAnimator$SetListener;,
        Lcom/color/widget/ColorBottomMenuAnimator$RunListener;,
        Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;
    }
.end annotation


# static fields
.field private static final ALL_ITEMS_UPDATE:I = -0x1

.field private static final ANIM_DURATION:J = 0xc8L

.field private static final DBG:Z = false

.field private static final ITEM_DELAY:J = 0x3cL

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorBottomMenuAnimator"

.field private static final TAG_DOWN:Ljava/lang/String; = "Down"

.field private static final TAG_UP:Ljava/lang/String; = "Up"


# instance fields
.field private final mCallback:Lcom/color/widget/ColorBottomMenuCallback;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/widget/ColorBottomMenuCallback;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorBottomMenuAnimator;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuAnimator;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createAnimator(Ljava/lang/String;IFFJZ)Landroid/animation/Animator;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F
    .param p5, "delay"    # J
    .param p7, "update"    # Z

    .prologue
    const/4 v7, 0x0

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v7

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 104
    .local v6, "anim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/color/widget/ColorBottomMenuAnimator$UpdateListener;-><init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    new-instance v0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p7

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;-><init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;IZF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    const-wide/16 v0, 0xc8

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    invoke-virtual {v6, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 108
    sget-object v0, Lcom/color/widget/ColorBottomMenuCallback;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 110
    return-object v6
.end method

.method private getItemAnim(IZ)Landroid/animation/Animator;
    .locals 18
    .param p1, "count"    # I
    .param p2, "in"    # Z

    .prologue
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Item"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_0

    const-string v3, "Up"

    :goto_0
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "tag":Ljava/lang/String;
    if-eqz p2, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 132
    .local v6, "startValue":F
    :goto_1
    if-eqz p2, :cond_2

    const/4 v7, 0x0

    .line 134
    .local v7, "endValue":F
    :goto_2
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 135
    .local v11, "animSet":Landroid/animation/AnimatorSet;
    const/4 v12, 0x0

    .line 136
    .local v12, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move/from16 v0, p1

    if-ge v5, v0, :cond_6

    .line 137
    if-eqz p2, :cond_3

    const-wide/16 v14, 0x3c

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v8, v14, v16

    .line 138
    .local v8, "delay":J
    :goto_4
    if-nez p2, :cond_4

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/color/widget/ColorBottomMenuAnimator;->createAnimator(Ljava/lang/String;IFFJZ)Landroid/animation/Animator;

    move-result-object v2

    .line 139
    .local v2, "anim":Landroid/animation/Animator;
    if-nez v12, :cond_5

    .line 140
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    .line 136
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 130
    .end local v2    # "anim":Landroid/animation/Animator;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "startValue":F
    .end local v7    # "endValue":F
    .end local v8    # "delay":J
    .end local v11    # "animSet":Landroid/animation/AnimatorSet;
    .end local v12    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    const-string v3, "Down"

    goto :goto_0

    .line 131
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 132
    .restart local v6    # "startValue":F
    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    .line 137
    .restart local v5    # "i":I
    .restart local v7    # "endValue":F
    .restart local v11    # "animSet":Landroid/animation/AnimatorSet;
    .restart local v12    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 138
    .restart local v8    # "delay":J
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 142
    .restart local v2    # "anim":Landroid/animation/Animator;
    :cond_5
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_6

    .line 145
    .end local v2    # "anim":Landroid/animation/Animator;
    .end local v8    # "delay":J
    :cond_6
    return-object v11
.end method

.method private getItemDown(I)Landroid/animation/Animator;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorBottomMenuAnimator;->getItemAnim(IZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getItemUp(I)Landroid/animation/Animator;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorBottomMenuAnimator;->getItemAnim(IZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 158
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    :cond_0
    return-object p2
.end method

.method private getViewAnim(Z)Landroid/animation/Animator;
    .locals 9
    .param p1, "in"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v0, "Up"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "tag":Ljava/lang/String;
    if-eqz p1, :cond_1

    move v4, v1

    .line 116
    .local v4, "startValue":F
    :goto_1
    if-eqz p1, :cond_2

    .line 118
    .local v5, "endValue":F
    :goto_2
    const/4 v3, -0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/color/widget/ColorBottomMenuAnimator;->createAnimator(Ljava/lang/String;IFFJZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 114
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "startValue":F
    .end local v5    # "endValue":F
    :cond_0
    const-string v0, "Down"

    goto :goto_0

    .restart local v2    # "tag":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 115
    goto :goto_1

    .restart local v4    # "startValue":F
    :cond_2
    move v5, v1

    .line 116
    goto :goto_2
.end method

.method private getViewDown()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuAnimator;->getViewAnim(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getViewUp()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/color/widget/ColorBottomMenuAnimator;->getViewAnim(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUpdater(II)Landroid/animation/Animator;
    .locals 10
    .param p1, "currCount"    # I
    .param p2, "nextCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 65
    const-string v6, "ActionBarTab:ColorBottomMenuAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----------------------------getAnimatorUpdater : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 67
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    .line 68
    iget-object v6, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;

    invoke-interface {v6, v9}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollState(I)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 73
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    .line 75
    .local v3, "tag":Ljava/lang/String;
    if-gtz p1, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuAnimator;->getViewUp()Landroid/animation/Animator;

    move-result-object v5

    .line 77
    .local v5, "viewUp":Landroid/animation/Animator;
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuAnimator;->getItemUp(I)Landroid/animation/Animator;

    move-result-object v2

    .line 78
    .local v2, "itemUp":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 79
    const-string v3, "MenuShow"

    .line 90
    .end local v2    # "itemUp":Landroid/animation/Animator;
    .end local v5    # "viewUp":Landroid/animation/Animator;
    :goto_1
    new-instance v6, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;

    invoke-direct {v6, p0, v3}, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;-><init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 80
    :cond_2
    if-gtz p2, :cond_3

    .line 81
    invoke-direct {p0}, Lcom/color/widget/ColorBottomMenuAnimator;->getViewDown()Landroid/animation/Animator;

    move-result-object v4

    .line 82
    .local v4, "viewDown":Landroid/animation/Animator;
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 83
    const-string v3, "MenuHide"

    .line 84
    goto :goto_1

    .line 85
    .end local v4    # "viewDown":Landroid/animation/Animator;
    :cond_3
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuAnimator;->getItemDown(I)Landroid/animation/Animator;

    move-result-object v1

    .line 86
    .local v1, "itemDown":Landroid/animation/Animator;
    invoke-direct {p0, p2}, Lcom/color/widget/ColorBottomMenuAnimator;->getItemUp(I)Landroid/animation/Animator;

    move-result-object v2

    .line 87
    .restart local v2    # "itemUp":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 88
    const-string v3, "MenuSwitch"

    goto :goto_1
.end method

.method public visibleFirst()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
