.class public Lcom/color/widget/ColorMultiChoiceAnimator;
.super Lcom/color/widget/ColorChoiceModeAnimator;
.source "ColorMultiChoiceAnimator.java"


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_VISIBILITY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorMultiChoiceAnimator"


# instance fields
.field private mDuration:J

.field private mIn:Z

.field private mTag:Ljava/lang/String;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorMultiChoiceAnimator;-><init>(Ljava/util/List;ZI)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZI)V
    .locals 6
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorMultiChoiceAnimator;-><init>(Ljava/util/List;ZIJ)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJ)V
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;ZIJ)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/color/widget/ColorMultiChoiceAnimator;-><init>(Ljava/util/List;ZIJI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJI)V
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .param p6, "dependency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;ZIJI)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/color/widget/ColorMultiChoiceAnimator;-><init>(Ljava/util/List;ZIJILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJILjava/lang/String;)V
    .locals 2
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .param p6, "dependency"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;ZIJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    invoke-direct {p0, p1, p7, p6}, Lcom/color/widget/ColorChoiceModeAnimator;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mTag:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mIn:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mDuration:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mVisibility:I

    .line 81
    iput-boolean p2, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mIn:Z

    .line 82
    iput p3, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mVisibility:I

    .line 83
    iput-wide p4, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mDuration:J

    .line 84
    return-void
.end method

.method private getFinalVisibility()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 143
    iget v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mVisibility:I

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getTarget(Landroid/animation/Animator;)Landroid/view/View;
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 126
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Landroid/view/View;

    .line 131
    .end local v0    # "target":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTargetVisibility(Landroid/animation/Animator;I)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "visibility"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/color/widget/ColorMultiChoiceAnimator;->getTarget(Landroid/animation/Animator;)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mAnimWrapperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mAnimWrapperList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/animation/ColorAnimatorWrapper;

    invoke-virtual {v0}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method end()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mAnimWrapperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/animation/ColorAnimatorWrapper;

    .line 117
    .local v0, "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    invoke-virtual {v0}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorMultiChoiceAnimator;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 119
    .end local v0    # "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    :cond_0
    return-void
.end method

.method initialize()V
    .locals 6

    .prologue
    .line 105
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mAnimWrapperList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/animation/ColorAnimatorWrapper;

    .line 106
    .local v0, "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    invoke-virtual {v0}, Lcom/color/animation/ColorAnimatorWrapper;->getAnimation()Landroid/animation/Animator;

    move-result-object v1

    .line 107
    .local v1, "animation":Landroid/animation/Animator;
    iget-wide v4, p0, Lcom/color/widget/ColorMultiChoiceAnimator;->mDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 108
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 110
    .end local v0    # "animWrap":Lcom/color/animation/ColorAnimatorWrapper;
    .end local v1    # "animation":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method public onAnimEnd(Landroid/animation/Animator;)Ljava/lang/String;
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/color/widget/ColorMultiChoiceAnimator;->getFinalVisibility()I

    move-result v0

    .line 92
    .local v0, "visibility":I
    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorMultiChoiceAnimator;->setTargetVisibility(Landroid/animation/Animator;I)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
