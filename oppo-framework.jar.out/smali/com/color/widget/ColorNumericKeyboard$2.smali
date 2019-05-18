.class Lcom/color/widget/ColorNumericKeyboard$2;
.super Ljava/lang/Object;
.source "ColorNumericKeyboard.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorNumericKeyboard;->initAnimator(Landroid/animation/ValueAnimator;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorNumericKeyboard;

.field final synthetic val$endAlpha:I

.field final synthetic val$startAlpha:I


# direct methods
.method constructor <init>(Lcom/color/widget/ColorNumericKeyboard;II)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    iput p2, p0, Lcom/color/widget/ColorNumericKeyboard$2;->val$startAlpha:I

    iput p3, p0, Lcom/color/widget/ColorNumericKeyboard$2;->val$endAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard$2;->val$endAlpha:I

    # invokes: Lcom/color/widget/ColorNumericKeyboard;->changeBackagegroundAlpha(I)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->access$000(Lcom/color/widget/ColorNumericKeyboard;I)V

    .line 346
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    # getter for: Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z
    invoke-static {v0}, Lcom/color/widget/ColorNumericKeyboard;->access$100(Lcom/color/widget/ColorNumericKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    # getter for: Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/color/widget/ColorNumericKeyboard;->access$200(Lcom/color/widget/ColorNumericKeyboard;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    # getter for: Lcom/color/widget/ColorNumericKeyboard;->mFadeAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/color/widget/ColorNumericKeyboard;->access$200(Lcom/color/widget/ColorNumericKeyboard;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorNumericKeyboard;->mNeedDoFadeAfterShow:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->access$102(Lcom/color/widget/ColorNumericKeyboard;Z)Z

    .line 340
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard$2;->val$endAlpha:I

    # invokes: Lcom/color/widget/ColorNumericKeyboard;->changeBackagegroundAlpha(I)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->access$000(Lcom/color/widget/ColorNumericKeyboard;I)V

    .line 341
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 329
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/color/widget/ColorNumericKeyboard$2;->this$0:Lcom/color/widget/ColorNumericKeyboard;

    iget v1, p0, Lcom/color/widget/ColorNumericKeyboard$2;->val$startAlpha:I

    # invokes: Lcom/color/widget/ColorNumericKeyboard;->changeBackagegroundAlpha(I)V
    invoke-static {v0, v1}, Lcom/color/widget/ColorNumericKeyboard;->access$000(Lcom/color/widget/ColorNumericKeyboard;I)V

    .line 324
    return-void
.end method
