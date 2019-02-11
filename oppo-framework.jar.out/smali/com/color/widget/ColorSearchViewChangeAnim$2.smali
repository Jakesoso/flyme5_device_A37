.class Lcom/color/widget/ColorSearchViewChangeAnim$2;
.super Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 101
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 105
    const/16 v0, 0x3ea

    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I
    invoke-static {v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$100(Lcom/color/widget/ColorSearchViewChangeAnim;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$200(Lcom/color/widget/ColorSearchViewChangeAnim;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$300(Lcom/color/widget/ColorSearchViewChangeAnim;)Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$2;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$300(Lcom/color/widget/ColorSearchViewChangeAnim;)Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;->onShowAnimationEnd()V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$2;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    :goto_0
    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I
    invoke-static {v1, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$102(Lcom/color/widget/ColorSearchViewChangeAnim;I)I

    .line 110
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$002(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 111
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$2;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$202(Lcom/color/widget/ColorSearchViewChangeAnim;Z)Z

    .line 113
    :cond_1
    invoke-super {p0, p1}, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 114
    return-void

    .line 109
    :cond_2
    const/16 v0, 0x3e8

    goto :goto_0
.end method
