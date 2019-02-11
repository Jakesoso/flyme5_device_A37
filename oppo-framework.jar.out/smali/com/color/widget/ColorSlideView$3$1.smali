.class Lcom/color/widget/ColorSlideView$3$1;
.super Lcom/color/widget/ColorSlideCollapseAnimation;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSlideView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/widget/ColorSlideView$3;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSlideView$3;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/color/widget/ColorSlideView$3$1;->this$1:Lcom/color/widget/ColorSlideView$3;

    invoke-direct {p0, p2}, Lcom/color/widget/ColorSlideCollapseAnimation;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onItemDelete()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/color/widget/ColorSlideView$3$1;->this$1:Lcom/color/widget/ColorSlideView$3;

    iget-object v0, v0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSlideView;->mhasStartAnimation:Z
    invoke-static {v0, v1}, Lcom/color/widget/ColorSlideView;->access$402(Lcom/color/widget/ColorSlideView;Z)Z

    .line 772
    iget-object v0, p0, Lcom/color/widget/ColorSlideView$3$1;->this$1:Lcom/color/widget/ColorSlideView$3;

    iget-object v0, v0, Lcom/color/widget/ColorSlideView$3;->this$0:Lcom/color/widget/ColorSlideView;

    # getter for: Lcom/color/widget/ColorSlideView;->mOnDeleteItemClickListener:Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorSlideView;->access$300(Lcom/color/widget/ColorSlideView;)Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/widget/ColorSlideView$OnDeleteItemClickListener;->onDeleteItemClick()V

    .line 773
    return-void
.end method
