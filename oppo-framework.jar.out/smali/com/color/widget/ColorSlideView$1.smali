.class Lcom/color/widget/ColorSlideView$1;
.super Ljava/lang/Object;
.source "ColorSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSlideView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSlideView;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/color/widget/ColorSlideView$1;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/color/widget/ColorSlideView$1;->this$0:Lcom/color/widget/ColorSlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/color/widget/ColorSlideView;->mAlpha:I
    invoke-static {v1, v0}, Lcom/color/widget/ColorSlideView;->access$002(Lcom/color/widget/ColorSlideView;I)I

    .line 235
    return-void
.end method
