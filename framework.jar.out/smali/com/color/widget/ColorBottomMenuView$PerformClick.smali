.class Lcom/color/widget/ColorBottomMenuView$PerformClick;
.super Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorBottomMenuView;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$PerformClick;->this$0:Lcom/color/widget/ColorBottomMenuView;

    .line 1518
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;-><init>(Lcom/color/widget/ColorBottomMenuView;I)V

    .line 1519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1523
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$PerformClick;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorBottomMenuView;->access$1100(Lcom/color/widget/ColorBottomMenuView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformClick : run"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$PerformClick;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView$PerformClick;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->performClick(I)Z

    .line 1525
    invoke-super {p0}, Lcom/color/widget/ColorBottomMenuView$ItemStateRunnable;->run()V

    .line 1526
    return-void
.end method
