.class Lcom/color/widget/ColorSimpleLock$4;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSimpleLock;->createMorphingAnimationCircleToLine()Landroid/animation/ValueAnimator;
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
    .line 514
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$4;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 534
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$4;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x1

    # setter for: Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$402(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 529
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 523
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/color/widget/ColorSimpleLock$4;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSimpleLock;->ctl_lastDraw:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSimpleLock;->access$402(Lcom/color/widget/ColorSimpleLock;Z)Z

    .line 519
    return-void
.end method
