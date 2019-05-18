.class final Lcom/color/widget/ColorOrientationHelper$2;
.super Lcom/color/widget/ColorOrientationHelper;
.source "ColorOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorOrientationHelper;->createVerticalHelper(Lcom/color/widget/ColorRecyclerView$LayoutManager;)Lcom/color/widget/ColorOrientationHelper;
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
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorOrientationHelper;-><init>(Lcom/color/widget/ColorRecyclerView$LayoutManager;Lcom/color/widget/ColorOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 311
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 295
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 303
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 318
    .local v0, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 330
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/color/widget/ColorOrientationHelper$2;->mLayoutManager:Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 284
    return-void
.end method
