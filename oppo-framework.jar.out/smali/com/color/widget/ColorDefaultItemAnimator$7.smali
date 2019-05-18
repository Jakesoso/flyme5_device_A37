.class Lcom/color/widget/ColorDefaultItemAnimator$7;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorDefaultItemAnimator;->animateChangeImpl(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorDefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$changeInfo:Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 385
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 374
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 375
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 376
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 377
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$changeInfo:Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchChangeFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V

    .line 378
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$1200(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$changeInfo:Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$700(Lcom/color/widget/ColorDefaultItemAnimator;)V

    .line 380
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$7;->val$changeInfo:Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchChangeStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;Z)V

    .line 370
    return-void
.end method
