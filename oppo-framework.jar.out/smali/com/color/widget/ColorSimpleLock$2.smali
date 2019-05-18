.class Lcom/color/widget/ColorSimpleLock$2;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationLineToCircle()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSimpleLock;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSimpleLock;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x1

    # setter for: Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$002(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 480
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    # getter for: Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z
    invoke-static {v0}, Lcom/color/widget/ColorSimpleLock;->access$100(Lcom/color/widget/ColorSimpleLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x5

    # setter for: Lcom/color/widget/ColorSimpleLock;->animationMode:I
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$202(Lcom/color/widget/ColorSimpleLock;I)I

    .line 482
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1}, Lcom/color/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v1

    # setter for: Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$302(Lcom/color/widget/ColorSimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 483
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    # getter for: Lcom/color/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/color/widget/ColorSimpleLock;->access$300(Lcom/color/widget/ColorSimpleLock;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 485
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 475
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$2;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSimpleLock;->ltc_lastDraw:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$002(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 472
    return-void
.end method
