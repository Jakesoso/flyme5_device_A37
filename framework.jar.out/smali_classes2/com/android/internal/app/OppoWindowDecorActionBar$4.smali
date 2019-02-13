.class Lcom/android/internal/app/OppoWindowDecorActionBar$4;
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
.field private mIsCancel:Z

.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V
    .locals 1

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->mIsCancel:Z

    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->mIsCancel:Z

    .line 251
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->mIsCancel:Z

    .line 247
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 227
    iget-boolean v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->mIsCancel:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 228
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$400(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 230
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$700(Lcom/android/internal/app/OppoWindowDecorActionBar;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsSplitHideWithActionBar:Z
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$800(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;
    invoke-static {v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # invokes: Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V
    invoke-static {v2, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$300(Lcom/android/internal/app/OppoWindowDecorActionBar;Z)V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->resetState()V

    .line 242
    return-void

    .line 227
    .end local v0    # "visibility":I
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method
