.class Lcom/color/widget/ColorDefaultItemAnimator$4;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorDefaultItemAnimator;->animateRemoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorDefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 205
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchRemoveFinished(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 207
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$600(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$700(Lcom/color/widget/ColorDefaultItemAnimator;)V

    .line 209
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "ani"    # Landroid/animation/Animator;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$4;->val$holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorDefaultItemAnimator;->dispatchRemoveStarting(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 201
    return-void
.end method
