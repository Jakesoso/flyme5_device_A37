.class Landroid/widget/ColorSpinner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


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

.field final synthetic val$endValue:F


# direct methods
.method constructor <init>(Landroid/widget/ColorSpinner;F)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Landroid/widget/ColorSpinner$1;->this$0:Landroid/widget/ColorSpinner;

    iput p2, p0, Landroid/widget/ColorSpinner$1;->val$endValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/ColorSpinner$1;->this$0:Landroid/widget/ColorSpinner;

    iget v1, p0, Landroid/widget/ColorSpinner$1;->val$endValue:F

    # invokes: Landroid/widget/ColorSpinner;->updateLevel(F)V
    invoke-static {v0, v1}, Landroid/widget/ColorSpinner;->access$100(Landroid/widget/ColorSpinner;F)V

    .line 352
    return-void
.end method
