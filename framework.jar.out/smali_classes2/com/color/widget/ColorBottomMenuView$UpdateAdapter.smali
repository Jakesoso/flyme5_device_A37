.class Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;
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
    name = "UpdateAdapter"
.end annotation


# instance fields
.field private mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

.field final synthetic this$0:Lcom/color/widget/ColorBottomMenuView;


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorBottomMenuView;)V
    .locals 1

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->this$0:Lcom/color/widget/ColorBottomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorBottomMenuView;Lcom/color/widget/ColorBottomMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorBottomMenuView;
    .param p2, "x1"    # Lcom/color/widget/ColorBottomMenuView$1;

    .prologue
    .line 1543
    invoke-direct {p0, p1}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;-><init>(Lcom/color/widget/ColorBottomMenuView;)V

    return-void
.end method


# virtual methods
.method public getUpdater(II)Landroid/animation/Animator;
    .locals 2
    .param p1, "currCount"    # I
    .param p2, "nextCount"    # I

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->visibleFirst()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_1

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->setVisibility(I)V

    .line 1554
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    if-eqz v0, :cond_2

    .line 1555
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    invoke-interface {v0, p1, p2}, Lcom/color/widget/ColorBottomMenuCallback$Updater;->getUpdater(II)Landroid/animation/Animator;

    move-result-object v0

    .line 1557
    :goto_1
    return-object v0

    .line 1552
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->this$0:Lcom/color/widget/ColorBottomMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorBottomMenuView;->setVisibility(I)V

    goto :goto_0

    .line 1557
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setUpdater(Lcom/color/widget/ColorBottomMenuCallback$Updater;)V
    .locals 0
    .param p1, "updater"    # Lcom/color/widget/ColorBottomMenuCallback$Updater;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    .line 1570
    return-void
.end method

.method public visibleFirst()Z
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/color/widget/ColorBottomMenuView$UpdateAdapter;->mUpdater:Lcom/color/widget/ColorBottomMenuCallback$Updater;

    invoke-interface {v0}, Lcom/color/widget/ColorBottomMenuCallback$Updater;->visibleFirst()Z

    move-result v0

    .line 1565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
