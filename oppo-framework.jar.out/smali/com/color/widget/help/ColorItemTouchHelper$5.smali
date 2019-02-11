.class Lcom/color/widget/help/ColorItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ColorItemTouchHelper.java"

# interfaces
.implements Lcom/color/widget/ColorRecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemTouchHelper;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1600(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1250
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1242
    .restart local p2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$2300(Lcom/color/widget/help/ColorItemTouchHelper;)I

    move-result v0

    .line 1243
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1244
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;
    invoke-static {v1}, Lcom/color/widget/help/ColorItemTouchHelper;->access$300(Lcom/color/widget/help/ColorItemTouchHelper;)Lcom/color/widget/ColorRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # getter for: Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChild:Landroid/view/View;
    invoke-static {v2}, Lcom/color/widget/help/ColorItemTouchHelper;->access$1600(Lcom/color/widget/help/ColorItemTouchHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/widget/ColorRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1245
    iget-object v1, p0, Lcom/color/widget/help/ColorItemTouchHelper$5;->this$0:Lcom/color/widget/help/ColorItemTouchHelper;

    # setter for: Lcom/color/widget/help/ColorItemTouchHelper;->mOverdrawChildPosition:I
    invoke-static {v1, v0}, Lcom/color/widget/help/ColorItemTouchHelper;->access$2302(Lcom/color/widget/help/ColorItemTouchHelper;I)I

    .line 1247
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    .line 1248
    goto :goto_0

    .line 1250
    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
