.class Lcom/color/widget/help/ColorItemDeleteHelper$1;
.super Lcom/color/widget/ColorDeleteAnimation;
.source "ColorItemDeleteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/help/ColorItemDeleteHelper;->startDeleteAnimation(Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

.field final synthetic val$viewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFFLcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 6
    .param p2, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "x1"    # F
    .param p4, "x2"    # F
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 41
    iput-object p1, p0, Lcom/color/widget/help/ColorItemDeleteHelper$1;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    iput-object p7, p0, Lcom/color/widget/help/ColorItemDeleteHelper$1;->val$viewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/color/widget/ColorDeleteAnimation;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;FFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/color/widget/ColorDeleteAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 45
    iget-boolean v0, p0, Lcom/color/widget/help/ColorItemDeleteHelper$1;->mOverridden:Z

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/color/widget/help/ColorItemDeleteHelper$1;->this$0:Lcom/color/widget/help/ColorItemDeleteHelper;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/color/widget/help/ColorItemDeleteHelper$1;->val$viewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    # invokes: Lcom/color/widget/help/ColorItemDeleteHelper;->postDispatchSwipe(Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V
    invoke-static {v0, p0, v1, v2}, Lcom/color/widget/help/ColorItemDeleteHelper;->access$000(Lcom/color/widget/help/ColorItemDeleteHelper;Lcom/color/widget/ColorDeleteAnimation;ILcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_0
.end method
