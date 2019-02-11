.class Lcom/color/widget/ColorSimpleLock$6;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;
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
    .line 562
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 600
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 589
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSimpleLock;->setTranslationX(F)V

    .line 590
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 591
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    .line 592
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x1

    # setter for: Lcom/color/widget/ColorSimpleLock;->fail_lastDraw:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$502(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 593
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSimpleLock;->mDrawFailedAnimation:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$102(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 594
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 584
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 567
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x5

    # setter for: Lcom/color/widget/ColorSimpleLock;->animationMode:I
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$202(Lcom/color/widget/ColorSimpleLock;I)I

    .line 568
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSimpleLock;->setTranslationX(F)V

    .line 569
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    .line 570
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 571
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    # setter for: Lcom/color/widget/ColorSimpleLock;->fail_lastDraw:Z
    invoke-static {v0, v3}, Lcom/color/widget/ColorSimpleLock;->access$502(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 572
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    # getter for: Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z
    invoke-static {v0}, Lcom/color/widget/ColorSimpleLock;->access$600(Lcom/color/widget/ColorSimpleLock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorSimpleLock;->performHapticFeedback(I)Z

    .line 578
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$6;->this$0:Lcom/color/widget/ColorSimpleLock;

    # setter for: Lcom/color/widget/ColorSimpleLock;->isFingerprintMode:Z
    invoke-static {v0, v3}, Lcom/color/widget/ColorSimpleLock;->access$602(Lcom/color/widget/ColorSimpleLock;Z)Z

    goto :goto_0
.end method
