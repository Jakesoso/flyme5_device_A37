.class public Lcom/color/widget/ColorSplitMenuPresenter;
.super Ljava/lang/Object;
.source "ColorSplitMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# instance fields
.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuView:Lcom/color/widget/ColorSplitMenuView;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorSplitMenuView;)V
    .locals 1
    .param p1, "menuView"    # Lcom/color/widget/ColorSplitMenuView;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    .line 39
    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 42
    iput-object p1, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    .line 43
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    iget-object v6, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v6, :cond_0

    .line 93
    :goto_0
    return v8

    .line 82
    :cond_0
    iget-object v6, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 83
    .local v5, "visibleItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 84
    .local v3, "itemsSize":I
    const/4 v4, 0x5

    .line 85
    .local v4, "maxBottomSize":I
    const/4 v0, 0x0

    .line 86
    .local v0, "bottomCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 87
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 88
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    if-gt v0, v4, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 86
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    .line 90
    goto :goto_2

    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move v8, v7

    .line 93
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    instance-of v0, v0, Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    check-cast v0, Lcom/android/internal/view/menu/MenuView;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 47
    iput-object p2, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 48
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 117
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 67
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 2
    .param p1, "cleared"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenuView:Lcom/color/widget/ColorSplitMenuView;

    iget-object v1, p0, Lcom/color/widget/ColorSplitMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {v1}, Lcom/color/widget/ColorBottomMenuDelegate;->getMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/color/widget/ColorSplitMenuView;->update(Ljava/util/List;Z)V

    goto :goto_0
.end method
