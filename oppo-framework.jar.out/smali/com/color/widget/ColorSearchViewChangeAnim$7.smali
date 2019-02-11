.class Lcom/color/widget/ColorSearchViewChangeAnim$7;
.super Ljava/lang/Object;
.source "ColorSearchViewChangeAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;->startSearchViewUpAnim()V
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
    .line 304
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$7;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 309
    .local v0, "leftX":F
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$7;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$800(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$7;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$800(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/widget/SearchView;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setLeft(I)V

    .line 312
    :cond_0
    return-void
.end method
