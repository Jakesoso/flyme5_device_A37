.class Lcom/color/widget/ColorSimpleLock$3;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 503
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$3;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 508
    .local v0, "scale":F
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$3;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 509
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$3;->this$0:Lcom/color/widget/ColorSimpleLock;

    const v2, 0x400ccccd    # 2.2f

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    .line 510
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$3;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1}, Lcom/color/widget/ColorSimpleLock;->invalidate()V

    .line 511
    return-void
.end method
