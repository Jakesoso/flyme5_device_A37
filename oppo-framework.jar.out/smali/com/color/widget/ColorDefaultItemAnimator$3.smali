.class Lcom/color/widget/ColorDefaultItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 167
    .local v0, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->animateAddImpl(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    invoke-static {v2, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$400(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 169
    .end local v0    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/color/widget/ColorDefaultItemAnimator;->access$500(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/color/widget/ColorDefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
