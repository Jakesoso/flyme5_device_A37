.class public Lcom/color/widget/ColorBottomMenuDelegate;
.super Ljava/lang/Object;
.source "ColorBottomMenuDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 7
    .param p0, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 39
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v4, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 41
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 42
    .local v5, "visibleItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 43
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 44
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 45
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-object v4
.end method
