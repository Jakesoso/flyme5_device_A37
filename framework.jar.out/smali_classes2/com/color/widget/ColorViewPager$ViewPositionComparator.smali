.class Lcom/color/widget/ColorViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ColorViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .prologue
    .line 2898
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 2899
    .local v0, "llp":Lcom/color/widget/ColorViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorViewPager$LayoutParams;

    .line 2900
    .local v1, "rlp":Lcom/color/widget/ColorViewPager$LayoutParams;
    iget-boolean v2, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 2901
    iget-boolean v2, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 2903
    :goto_0
    return v2

    .line 2901
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 2903
    :cond_1
    iget v2, v0, Lcom/color/widget/ColorViewPager$LayoutParams;->position:I

    iget v3, v1, Lcom/color/widget/ColorViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2895
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
