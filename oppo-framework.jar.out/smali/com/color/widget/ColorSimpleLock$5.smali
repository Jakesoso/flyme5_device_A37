.class Lcom/color/widget/ColorSimpleLock$5;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 549
    iput-object p1, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 555
    .local v1, "value":Ljava/lang/Float;
    iget-object v2, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/color/widget/ColorSimpleLock;->translationValueForTranslant(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorSimpleLock;->setTranslationX(F)V

    .line 556
    iget-object v2, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorSimpleLock;->translationValueForScale(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 557
    .local v0, "ScaleValue":Ljava/lang/Float;
    iget-object v2, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorSimpleLock;->setScaleX(F)V

    .line 558
    iget-object v2, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Lcom/color/widget/ColorSimpleLock;->setScaleY(F)V

    .line 559
    iget-object v2, p0, Lcom/color/widget/ColorSimpleLock$5;->this$0:Lcom/color/widget/ColorSimpleLock;

    invoke-virtual {v2}, Lcom/color/widget/ColorSimpleLock;->invalidate()V

    .line 560
    return-void
.end method
