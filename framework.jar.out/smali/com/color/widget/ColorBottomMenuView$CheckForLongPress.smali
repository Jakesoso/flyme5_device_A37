.class Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;
.super Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuView;I)V
    .locals 1
    .param p2, "position"    # I

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    .line 1493
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    .line 1490
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 1494
    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # invokes: Lcom/color/widget/ColorBottomMenuView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuView;->access$1600(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v0

    iput v0, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 1512
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->getPosition()I

    move-result v1

    .line 1499
    .local v1, "position":I
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 1500
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorBottomMenuView;->isItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # invokes: Lcom/color/widget/ColorBottomMenuView;->getWindowAttachCount()I
    invoke-static {v3}, Lcom/color/widget/ColorBottomMenuView;->access$1400(Lcom/color/widget/ColorBottomMenuView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1502
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/color/widget/ColorBottomMenuView;->access$1100(Lcom/color/widget/ColorBottomMenuView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CheckForLongPress : run"

    invoke-static {v2, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorBottomMenuView;->performLongClick(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$CheckForLongPress;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/4 v3, 0x1

    # setter for: Lcom/color/widget/ColorBottomMenuView;->mHasPerformedLongPress:Z
    invoke-static {v2, v3}, Lcom/color/widget/ColorBottomMenuView;->access$1502(Lcom/color/widget/ColorBottomMenuView;Z)Z

    .line 1507
    :cond_0
    invoke-super {p0}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->run()V

    .line 1508
    return-void
.end method
