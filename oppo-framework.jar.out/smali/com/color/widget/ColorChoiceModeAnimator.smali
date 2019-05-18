.class public abstract Lcom/color/widget/ColorChoiceModeAnimator;
.super Ljava/lang/Object;
.source "ColorChoiceModeAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field public static final AFTER:I = 0x1

.field public static final BEFORE:I = 0x2

.field private static final DBG:Z = false

.field private static final DBG_ANIMATOR:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorChoiceModeAnimator"

.field public static final WITH:I


# instance fields
.field mAnimWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDependency:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorChoiceModeAnimator;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "dependency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/color/animation/ColorAnimatorWrapper;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mAnimWrapperList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mDependency:I

    .line 57
    iput-object v1, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mTag:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mAnimWrapperList:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mTag:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mDependency:I

    .line 70
    return-void
.end method


# virtual methods
.method abstract addListener(Landroid/animation/Animator$AnimatorListener;)V
.end method

.method appendTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mTag:Ljava/lang/String;

    .line 135
    return-void
.end method

.method getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mAnimWrapperList:Ljava/util/List;

    return-object v0
.end method

.method getDependency()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mDependency:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/color/widget/ColorChoiceModeAnimator;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method abstract initialize()V
.end method

.method onAnimCancel(Landroid/animation/Animator;)Ljava/lang/String;
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    const-string v0, ""

    return-object v0
.end method

.method onAnimEnd(Landroid/animation/Animator;)Ljava/lang/String;
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 114
    const-string v0, ""

    return-object v0
.end method

.method onAnimRepeat(Landroid/animation/Animator;)Ljava/lang/String;
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    const-string v0, ""

    return-object v0
.end method

.method onAnimStart(Landroid/animation/Animator;)Ljava/lang/String;
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 122
    const-string v0, ""

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 77
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorChoiceModeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationCancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/color/widget/ColorChoiceModeAnimator;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChoiceModeAnimator;->onAnimCancel(Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 82
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorChoiceModeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/color/widget/ColorChoiceModeAnimator;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChoiceModeAnimator;->onAnimEnd(Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorChoiceModeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationRepeat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/color/widget/ColorChoiceModeAnimator;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChoiceModeAnimator;->onAnimRepeat(Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 93
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorChoiceModeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/color/widget/ColorChoiceModeAnimator;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChoiceModeAnimator;->onAnimStart(Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 94
    return-void
.end method
