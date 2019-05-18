.class Lcom/color/widget/ColorBottomMenuView$DirectUpdater;
.super Ljava/lang/Object;
.source "ColorBottomMenuView.java"

# interfaces
.implements Lcom/color/widget/ColorBottomMenuCallback$Updater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorBottomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p2, "x1"    # Lcom/color/widget/ColorBottomMenuView$1;

    .prologue
    .line 1573
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    return-void
.end method


# virtual methods
.method public getUpdater(II)Landroid/animation/Animator;
    .locals 3
    .param p1, "currCount"    # I
    .param p2, "nextCount"    # I

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;->this$0:Lcom/color/widget/ColorBottomMenuView;

    # invokes: Lcom/color/widget/ColorBottomMenuView;->updateCurrItems()V
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuView;->access$1700(Lcom/color/widget/ColorBottomMenuView;)V

    .line 1579
    new-instance v0, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;

    iget-object v1, p0, Lcom/color/widget/ColorBottomMenuView$DirectUpdater;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/color/widget/ColorBottomMenuView$DirectAnimator;-><init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V

    return-object v0
.end method

.method public visibleFirst()Z
    .locals 1

    .prologue
    .line 1584
    const/4 v0, 0x0

    return v0
.end method
