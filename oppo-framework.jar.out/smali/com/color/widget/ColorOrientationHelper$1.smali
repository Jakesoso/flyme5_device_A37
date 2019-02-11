.class final Lcom/color/widget/ColorOrientationHelper$1;
.super Lcom/color/widget/ColorOrientationHelper;
.source "ColorOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorOrientationHelper;->createHorizontalHelper(Lcom/color/widget/ColorRecyclerView$LayoutManager;)Lcom/color/widget/ColorOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/color/widget/ColorRecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "x0"    # Lcom/color/widget/ColorRecyclerView$LayoutManager;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorOrientationHelper;-><init>(Lcom/color/widget/ColorRecyclerView$LayoutManager;Lcom/color/widget/ColorOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 235
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 219
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 227
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 242
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 254
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$1;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 208
    return-void
.end method
