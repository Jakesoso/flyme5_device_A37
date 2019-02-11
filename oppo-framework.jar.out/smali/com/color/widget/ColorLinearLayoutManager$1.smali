.class Lcom/color/widget/ColorLinearLayoutManager$1;
.super Lcom/color/widget/ColorLinearSmoothScroller;
.source "ColorLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorLinearLayoutManager;->smoothScrollToPosition(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/color/widget/ColorLinearLayoutManager$1;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    invoke-direct {p0, p2}, Lcom/color/widget/ColorLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/color/widget/ColorLinearLayoutManager$1;->this$0:Lcom/color/widget/ColorLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
