.class Lcom/android/internal/app/OppoWindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationCancel(Landroid/animation/Animator;Z)V

    .line 164
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    .line 168
    const-string v1, "ActionBarTab:OppoWindowDecorActionBar"

    const-string v2, "doHide : onAnimationEnd"

    invoke-static {v5, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V
    invoke-static {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$100(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/animation/Animator;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-virtual {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 171
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 174
    .local v0, "actionBarAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 177
    .end local v0    # "actionBarAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationRepeat(Landroid/animation/Animator;Z)V

    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 182
    return-void
.end method
