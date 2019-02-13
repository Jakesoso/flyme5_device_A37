.class public Lcom/color/widget/ColorOptionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ColorOptionMenuPresenter.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorOptionMenuPresenter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const v0, 0xc090457

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 50
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 0
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 68
    return-void
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    .line 58
    check-cast v1, Lcom/color/widget/ColorOptionMenuView;

    invoke-virtual {v1, p0}, Lcom/color/widget/ColorOptionMenuView;->setPresenter(Lcom/android/internal/view/menu/BaseMenuPresenter;)V

    .line 59
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 71
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorOptionMenuPresenter;->updateMenuView(ZLandroid/animation/AnimatorSet$Builder;)V

    .line 65
    return-void
.end method

.method public updateMenuView(ZLandroid/animation/AnimatorSet$Builder;)V
    .locals 3
    .param p1, "cleared"    # Z
    .param p2, "b"    # Landroid/animation/AnimatorSet$Builder;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/color/widget/ColorOptionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/widget/ColorOptionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorOptionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/color/widget/ColorOptionMenuView;

    iget-object v2, p0, Lcom/color/widget/ColorOptionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v2}, Lcom/color/widget/ColorBottomMenuDelegate;->getMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/color/widget/ColorOptionMenuView;->getUpdater(Ljava/util/List;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 87
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 88
    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
