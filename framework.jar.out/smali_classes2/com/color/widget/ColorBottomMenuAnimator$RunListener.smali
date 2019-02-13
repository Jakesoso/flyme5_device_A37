.class Lcom/color/widget/ColorBottomMenuAnimator$RunListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorBottomMenuAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunListener"
.end annotation


# instance fields
.field private final mEndValue:F

.field private final mIndex:I

.field private final mTag:Ljava/lang/String;

.field private final mUpdate:Z

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuAnimator;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;IZF)V
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "update"    # Z
    .param p5, "endValue"    # F

    .prologue
    .line 192
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mTag:Ljava/lang/String;

    .line 194
    iput p3, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mIndex:I

    .line 195
    iput-boolean p4, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mUpdate:Z

    .line 196
    iput p5, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mEndValue:F

    .line 197
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 206
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorBottomMenuAnimator"

    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "onAnimationEnd"

    # invokes: Lcom/color/widget/ColorBottomMenuAnimator;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/color/widget/ColorBottomMenuAnimator;->access$100(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mIndex:I

    iget v2, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mEndValue:F

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollPosition(IF)V

    .line 209
    iget-boolean v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mUpdate:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollData()V

    .line 213
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 201
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:ColorBottomMenuAnimator"

    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuAnimator$RunListener;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "onAnimationStart"

    # invokes: Lcom/color/widget/ColorBottomMenuAnimator;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/color/widget/ColorBottomMenuAnimator;->access$100(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 202
    return-void
.end method
