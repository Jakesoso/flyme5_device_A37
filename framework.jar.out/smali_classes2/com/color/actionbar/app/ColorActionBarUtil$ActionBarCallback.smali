.class public interface abstract Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;
.super Ljava/lang/Object;
.source "ColorActionBarUtil.java"

# interfaces
.implements Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;
.implements Lcom/color/widget/ColorBottomMenuCallback;
.implements Lcom/color/widget/ColorSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/actionbar/app/ColorActionBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionBarCallback"
.end annotation


# virtual methods
.method public abstract addAfterAnimator(Landroid/animation/Animator;)V
.end method

.method public abstract addAfterAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
.end method

.method public abstract addAfterAnimatorWrappers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addAfterAnimators(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addBeforeAnimator(Landroid/animation/Animator;)V
.end method

.method public abstract addBeforeAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
.end method

.method public abstract addBeforeAnimatorWrappers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addBeforeAnimators(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addHideListener(Landroid/animation/Animator$AnimatorListener;)V
.end method

.method public abstract addShowListener(Landroid/animation/Animator$AnimatorListener;)V
.end method

.method public abstract addWithAnimator(Landroid/animation/Animator;)V
.end method

.method public abstract addWithAnimatorWrapper(Lcom/color/animation/ColorAnimatorWrapper;)V
.end method

.method public abstract addWithAnimatorWrappers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/animation/ColorAnimatorWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addWithAnimators(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelShowHide()V
.end method

.method public abstract getContentId()I
.end method

.method public abstract getHomeId()I
.end method

.method public abstract hasEmbeddedTabs()Z
.end method

.method public abstract setActionModeAnim(Z)V
.end method

.method public abstract setActionModeCallback(Lcom/color/widget/ColorActionModeCallback;)V
.end method

.method public abstract setEmbeddedTabs(Z)V
.end method

.method public abstract setSearchBarMode(Z)V
.end method

.method public abstract setSplitActionBarOverlay(Z)V
.end method

.method public abstract setSplitHideWithActionBar(Z)V
.end method
