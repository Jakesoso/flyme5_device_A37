.class Lcom/color/widget/ColorSearchViewChangeAnim$3;
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
    .line 116
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;-><init>(Lcom/color/widget/ColorSearchViewChangeAnim;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 120
    const/16 v0, 0x3ea

    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I
    invoke-static {v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$100(Lcom/color/widget/ColorSearchViewChangeAnim;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$200(Lcom/color/widget/ColorSearchViewChangeAnim;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$400(Lcom/color/widget/ColorSearchViewChangeAnim;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 122
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$300(Lcom/color/widget/ColorSearchViewChangeAnim;)Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$3;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mOnAnimationListener:Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$300(Lcom/color/widget/ColorSearchViewChangeAnim;)Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/widget/ColorSearchViewChangeAnim$OnAnimationListener;->onHideAnimationEnd()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$500(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$500(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$500(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-virtual {p0}, Lcom/color/widget/ColorSearchViewChangeAnim$3;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    :goto_0
    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchState:I
    invoke-static {v1, v0}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$102(Lcom/color/widget/ColorSearchViewChangeAnim;I)I

    .line 130
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$3;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$202(Lcom/color/widget/ColorSearchViewChangeAnim;Z)Z

    .line 132
    :cond_2
    invoke-super {p0, p1}, Lcom/color/widget/ColorSearchViewChangeAnim$ActionBarAnimListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 133
    return-void

    .line 129
    :cond_3
    const/16 v0, 0x3e9

    goto :goto_0
.end method
