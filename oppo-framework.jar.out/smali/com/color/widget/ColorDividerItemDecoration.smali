.class public Lcom/color/widget/ColorDividerItemDecoration;
.super Lcom/color/widget/ColorRecyclerView$ItemDecoration;
.source "ColorDividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/color/widget/ColorDividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$ItemDecoration;-><init>()V

    .line 46
    const v0, 0xc080022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorDividerItemDecoration;->setOrientation(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getPaddingTop()I

    move-result v7

    .line 88
    .local v7, "top":I
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 90
    .local v0, "bottom":I
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getChildCount()I

    move-result v2

    .line 91
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 92
    invoke-virtual {p2, v3}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 95
    .local v5, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;->rightMargin:I

    add-int v4, v8, v9

    .line 96
    .local v4, "left":I
    iget-object v8, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v6, v4, v8

    .line 97
    .local v6, "right":I
    iget-object v8, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v8, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    .end local v6    # "right":I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 70
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getPaddingLeft()I

    move-result v4

    .line 71
    .local v4, "left":I
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getPaddingRight()I

    move-result v10

    sub-int v6, v9, v10

    .line 73
    .local v6, "right":I
    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getChildCount()I

    move-result v2

    .line 74
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 75
    invoke-virtual {p2, v3}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "child":Landroid/view/View;
    new-instance v8, Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {p2}, Lcom/color/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/color/widget/ColorRecyclerView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v8, "v":Lcom/color/widget/ColorRecyclerView;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .line 79
    .local v5, "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v5, Lcom/color/widget/ColorRecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 80
    .local v7, "top":I
    iget-object v9, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 81
    .local v0, "bottom":I
    iget-object v9, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v9, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "params":Lcom/color/widget/ColorRecyclerView$LayoutParams;
    .end local v7    # "top":I
    .end local v8    # "v":Lcom/color/widget/ColorRecyclerView;
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILcom/color/widget/ColorRecyclerView;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    const/4 v2, 0x0

    .line 104
    iget v0, p0, Lcom/color/widget/ColorDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;

    .prologue
    .line 60
    iget v0, p0, Lcom/color/widget/ColorDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorDividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/widget/ColorDividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 51
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput p1, p0, Lcom/color/widget/ColorDividerItemDecoration;->mOrientation:I

    .line 55
    return-void
.end method
