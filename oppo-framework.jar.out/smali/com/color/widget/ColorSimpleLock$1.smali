.class Lcom/color/widget/ColorSimpleLock$1;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 448
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v3, 0x40266666    # 2.6f

    const v2, 0x3fa66666    # 1.3f

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 452
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 454
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1}, Lcom/color/widget/ColorSimpleLock;->invalidate()V

    .line 463
    return-void

    .line 455
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 457
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 460
    iget-object v1, p0, Lcom/color/widget/ColorSimpleLock$1;->this$0:Lcom/color/widget/ColorSimpleLock;

    const v2, 0x400ccccd    # 2.2f

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    goto :goto_0
.end method
