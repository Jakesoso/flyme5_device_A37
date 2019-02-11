.class Landroid/widget/ColorSpinner$2;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ColorSpinner;


# direct methods
.method constructor <init>(Landroid/widget/ColorSpinner;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Landroid/widget/ColorSpinner$2;->this$0:Landroid/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 357
    iget-object v1, p0, Landroid/widget/ColorSpinner$2;->this$0:Landroid/widget/ColorSpinner;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Landroid/widget/ColorSpinner;->updateLevel(F)V
    invoke-static {v1, v0}, Landroid/widget/ColorSpinner;->access$100(Landroid/widget/ColorSpinner;F)V

    .line 358
    return-void
.end method
