.class Lcom/oppo/widget/OppoOptionMenuBar$6;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$isScrollDown:Z


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->val$isScrollDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1957
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1959
    .local v0, "offset":I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I
    invoke-static {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1200(Lcom/oppo/widget/OppoOptionMenuBar;)I

    move-result v2

    sub-int v1, v0, v2

    .line 1961
    .local v1, "part":I
    if-lez v1, :cond_0

    .line 1962
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->val$isScrollDown:Z

    if-eqz v3, :cond_1

    .end local v1    # "part":I
    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffset(II)V

    .line 1965
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar$6;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I
    invoke-static {v2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1202(Lcom/oppo/widget/OppoOptionMenuBar;I)I

    .line 1971
    return-void

    .line 1962
    .restart local v1    # "part":I
    :cond_1
    neg-int v1, v1

    goto :goto_0
.end method
