.class Lcom/color/widget/ColorBottomMenuAnimator$SetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorBottomMenuAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetListener"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuAnimator;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->mTag:Ljava/lang/String;

    .line 222
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v0, "ActionBarTab:ColorBottomMenuAnimator"

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "onAnimationEnd"

    # invokes: Lcom/color/widget/ColorBottomMenuAnimator;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/color/widget/ColorBottomMenuAnimator;->access$100(Lcom/color/widget/ColorBottomMenuAnimator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, p1, v1}, Lcom/color/animation/ColorAnimatorUtil;->dump(ZLjava/lang/String;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuAnimator$SetListener;->this$0:Lcom/color/widget/ColorBottomMenuAnimator;

    # getter for: Lcom/color/widget/ColorBottomMenuAnimator;->mCallback:Lcom/color/widget/ColorBottomMenuCallback;
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuAnimator;->access$000(Lcom/color/widget/ColorBottomMenuAnimator;)Lcom/color/widget/ColorBottomMenuCallback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollState(I)V

    .line 230
    :cond_0
    return-void
.end method
