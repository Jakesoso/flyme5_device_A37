.class Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field bottom:I

.field holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 10026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10027
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 10028
    iput p2, p0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->left:I

    .line 10029
    iput p3, p0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->top:I

    .line 10030
    iput p4, p0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->right:I

    .line 10031
    iput p5, p0, Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;->bottom:I

    .line 10032
    return-void
.end method
