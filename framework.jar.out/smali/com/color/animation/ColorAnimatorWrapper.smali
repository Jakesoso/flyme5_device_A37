.class public Lcom/color/animation/ColorAnimatorWrapper;
.super Ljava/lang/Object;
.source "ColorAnimatorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;,
        Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorAnimatorWrapper"


# instance fields
.field private final mAnimation:Landroid/animation/Animator;

.field private final mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "callback"    # Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    .line 47
    iput-object p2, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    .line 48
    return-void
.end method

.method private getTarget()Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Landroid/view/View;

    .line 90
    .end local v0    # "target":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAnimation()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    instance-of v3, v3, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/color/animation/ColorAnimatorWrapper;->getTarget()Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_1

    .line 78
    .end local v2    # "target":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v2    # "target":Landroid/view/View;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v2}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;->initialize(Landroid/view/View;)V

    .line 65
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v2}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getPivotXValue(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 66
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v2}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getPivotYValue(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 67
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v2}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getStartValue(Landroid/view/View;)F

    move-result v1

    .line 68
    .local v1, "startValue":F
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v2}, Lcom/color/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getEndValue(Landroid/view/View;)F

    move-result v0

    .line 69
    .local v0, "endValue":F
    iget-object v3, p0, Lcom/color/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method
