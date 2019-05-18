.class Lcom/color/widget/ColorBottomMenuView$DirectAnimator;
.super Lcom/color/animation/ColorFakeAnimator;
.source "ColorBottomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Lcom/color/animation/ColorFakeAnimator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p2, "x1"    # Lcom/color/widget/ColorBottomMenuView$1;

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 5

    .prologue
    .line 1533
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;->this$0:Lcom/color/widget/ColorBottomMenuView;

    iget-object v2, v2, Lcom/color/widget/ColorBottomMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1534
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # getter for: Lcom/color/widget/ColorBottomMenuView;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/color/widget/ColorBottomMenuView;->access$1100(Lcom/color/widget/ColorBottomMenuView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "----------------------------DirectAnimator : onStart"

    invoke-static {v2, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;->this$0:Lcom/color/widget/ColorBottomMenuView;

    iget-object v2, v2, Lcom/color/widget/ColorBottomMenuView;->mCurrItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView$DrawItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .line 1536
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    invoke-virtual {v0}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getIconMarginTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->setIconY(F)V

    goto :goto_0

    .line 1538
    .end local v0    # "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-virtual {v2}, Lcom/color/widget/ColorBottomMenuView;->invalidate()V

    .line 1540
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
