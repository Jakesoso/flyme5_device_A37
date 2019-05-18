.class Lcom/color/widget/ColorDefaultItemAnimator$2;
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

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorDefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;

    .line 145
    .local v0, "change":Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # invokes: Lcom/color/widget/ColorDefaultItemAnimator;->animateChangeImpl(Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V
    invoke-static {v2, v0}, Lcom/color/widget/ColorDefaultItemAnimator;->access$200(Lcom/color/widget/ColorDefaultItemAnimator;Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 147
    .end local v0    # "change":Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v2, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->this$0:Lcom/color/widget/ColorDefaultItemAnimator;

    # getter for: Lcom/color/widget/ColorDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/color/widget/ColorDefaultItemAnimator;->access$300(Lcom/color/widget/ColorDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/color/widget/ColorDefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
