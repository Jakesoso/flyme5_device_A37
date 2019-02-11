.class Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Gingerbread;
.super Ljava/lang/Object;
.source "ColorItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/color/widget/help/ColorItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/help/ColorItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FF)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/color/widget/ColorRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 110
    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 125
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FF)V

    .line 128
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 134
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FF)V

    .line 137
    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method
