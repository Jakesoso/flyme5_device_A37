.class public Lcom/color/animation/ColorFakeAnimator;
.super Landroid/animation/Animator;
.source "ColorFakeAnimator.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorFakeAnimator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    return-void
.end method

.method private onAnimationCancel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 104
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method private onAnimationEnd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 112
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method private onAnimationStart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 96
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 99
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/color/animation/ColorFakeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {p0, v0}, Lcom/color/animation/ColorFakeAnimator;->onAnimationCancel(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/color/animation/ColorFakeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {p0, v0}, Lcom/color/animation/ColorFakeAnimator;->onAnimationEnd(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 74
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 65
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .param p1, "startDelay"    # J

    .prologue
    .line 78
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/color/animation/ColorFakeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {p0, v0}, Lcom/color/animation/ColorFakeAnimator;->onAnimationStart(Ljava/util/List;)V

    .line 43
    invoke-virtual {p0}, Lcom/color/animation/ColorFakeAnimator;->onStart()V

    .line 44
    invoke-direct {p0, v0}, Lcom/color/animation/ColorFakeAnimator;->onAnimationEnd(Ljava/util/List;)V

    .line 45
    return-void
.end method
