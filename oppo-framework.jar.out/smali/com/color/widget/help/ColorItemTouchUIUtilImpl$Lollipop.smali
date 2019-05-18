.class Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Lollipop;
.super Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Honeycomb;
.source "ColorItemTouchUIUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Honeycomb;-><init>()V

    return-void
.end method

.method private findMaxElevation(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)F
    .locals 6
    .param p1, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView;->getChildCount()I

    move-result v1

    .line 50
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 51
    .local v4, "max":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 52
    invoke-virtual {p1, v3}, Lcom/color/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "child":Landroid/view/View;
    if-ne v0, p2, :cond_1

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 57
    .local v2, "elevation":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 58
    move v4, v2

    goto :goto_1

    .line 61
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "elevation":F
    :cond_2
    return v4
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0xc0204db

    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    .line 70
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 71
    invoke-super {p0, p1}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Honeycomb;->clearView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    const v4, 0xc0204db

    .line 36
    if-eqz p7, :cond_0

    .line 37
    invoke-virtual {p3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "originalElevation":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 40
    .local v1, "originalElevation":Ljava/lang/Float;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Lollipop;->findMaxElevation(Lcom/color/widget/ColorRecyclerView;Landroid/view/View;)F

    move-result v3

    add-float v0, v2, v3

    .line 41
    .local v0, "newElevation":F
    invoke-virtual {p3, v0}, Landroid/view/View;->setElevation(F)V

    .line 42
    invoke-virtual {p3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    .end local v0    # "newElevation":F
    .end local v1    # "originalElevation":Ljava/lang/Float;
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Honeycomb;->onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V

    .line 46
    return-void
.end method
