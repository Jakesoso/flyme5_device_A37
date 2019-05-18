.class Lcom/color/widget/ColorSearchViewChangeAnim$8;
.super Ljava/lang/Object;
.source "ColorSearchViewChangeAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSearchViewChangeAnim;->startSearchViewDownAnim()V
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
    .line 365
    iput-object p1, p0, Lcom/color/widget/ColorSearchViewChangeAnim$8;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 370
    .local v1, "newWidth":F
    iget-object v2, p0, Lcom/color/widget/ColorSearchViewChangeAnim$8;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$800(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 372
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 373
    iget-object v2, p0, Lcom/color/widget/ColorSearchViewChangeAnim$8;->this$0:Lcom/color/widget/ColorSearchViewChangeAnim;

    # getter for: Lcom/color/widget/ColorSearchViewChangeAnim;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/color/widget/ColorSearchViewChangeAnim;->access$800(Lcom/color/widget/ColorSearchViewChangeAnim;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_0
    return-void
.end method
