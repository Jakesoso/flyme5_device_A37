.class Lcom/oppo/widget/OppoLockPatternView$1;
.super Ljava/lang/Object;
.source "OppoLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLockPatternView;->getFailAnimator()Landroid/animation/Animator;
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
    .line 1334
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView$1;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView$1;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView;->access$202(Lcom/oppo/widget/OppoLockPatternView;F)F

    .line 1338
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$1;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    # getter for: Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/oppo/widget/OppoLockPatternView;->access$300(Lcom/oppo/widget/OppoLockPatternView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView$1;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    # getter for: Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F
    invoke-static {v1}, Lcom/oppo/widget/OppoLockPatternView;->access$200(Lcom/oppo/widget/OppoLockPatternView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1339
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$1;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1340
    return-void
.end method
