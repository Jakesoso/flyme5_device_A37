.class Lcom/color/widget/ColorBottomMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorBottomMenuView;->update(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$1;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$1;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorBottomMenuView;->mUpdateAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->access$202(Lcom/color/widget/ColorBottomMenuView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 476
    return-void
.end method
