.class Lcom/color/widget/ColorSearchViewChangeAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewChangeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSearchViewChangeAnim;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSearchViewChangeAnim;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$1;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/color/widget/ColorSearchViewChangeAnim$1;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    const/4 v1, 0x0

    # setter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mCurrentShowAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$002(Lcom/color/widget/ColorSearchViewChangeAnim;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 99
    return-void
.end method
