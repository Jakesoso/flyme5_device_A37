.class Lcom/oppo/widget/OppoLockPatternView$3;
.super Ljava/lang/Object;
.source "OppoLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLockPatternView;->getSuccessAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoLockPatternView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoLockPatternView;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1372
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    # getter for: Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/oppo/widget/OppoLockPatternView;->access$300(Lcom/oppo/widget/OppoLockPatternView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1373
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1374
    return-void
.end method
