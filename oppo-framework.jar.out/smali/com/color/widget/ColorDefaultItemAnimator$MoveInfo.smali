.class Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 59
    iput p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->fromX:I

    .line 60
    iput p3, p0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->fromY:I

    .line 61
    iput p4, p0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->toX:I

    .line 62
    iput p5, p0, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->toY:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIIILcom/color/widget/ColorDefaultItemAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/color/widget/ColorDefaultItemAnimator$1;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    return-void
.end method
