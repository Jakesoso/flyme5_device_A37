.class Lcom/color/widget/ColorDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorDefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorDefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;

    .line 121
    .local v7, "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iget-object v1, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->holder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    iget v2, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->fromX:I

    iget v3, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->fromY:I

    iget v4, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->toX:I

    iget v5, v7, Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;->toY:I

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->animateMoveImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/color/widget/ColorDefaultItemAnimator;->access$000(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 124
    .end local v7    # "moveInfo":Lcom/color/widget/ColorDefaultItemAnimator$MoveInfo;
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$100(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
