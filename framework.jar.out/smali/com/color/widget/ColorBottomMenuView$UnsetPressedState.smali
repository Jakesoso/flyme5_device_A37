.class Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;
.super Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuView;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->this$0:Lcom/color/widget/ColorBottomMenuView;

    .line 1453
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    .line 1454
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1458
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->getPosition()I

    move-result v1

    .line 1459
    .local v1, "position":I
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2, v1}, Lcom/color/widget/ColorBottomMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 1460
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-eqz v0, :cond_0

    .line 1461
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/color/widget/ColorBottomMenuView;->access$1100(Lcom/color/widget/ColorBottomMenuView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnsetPressedState : run"

    invoke-static {v4, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$UnsetPressedState;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3}, Lcom/color/widget/ColorBottomMenuView;->setItemPressedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 1464
    :cond_0
    invoke-super {p0}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->run()V

    .line 1465
    return-void
.end method
