.class Lcom/color/widget/ColorDefaultItemAnimator$6;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorDefaultItemAnimator;->animateMoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorDefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iput p3, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 308
    iget v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 311
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 314
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 318
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 319
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$1000(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$700(Lcom/color/widget/ColorDefaultItemAnimator;)V

    .line 321
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 326
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$6;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchMoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 305
    return-void
.end method
