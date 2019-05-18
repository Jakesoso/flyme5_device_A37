.class Lcom/color/widget/help/ColorItemTouchUIUtilImpl$Honeycomb;
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
    name = "Honeycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 81
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 91
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 92
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 93
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/color/widget/ColorRecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/color/widget/ColorRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    return-void
.end method
