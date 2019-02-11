.class public Lcom/color/widget/ColorOptionMenuView;
.super Lcom/color/widget/ColorBottomMenuView;
.source "ColorOptionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorOptionMenuView"


# instance fields
.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mPresenter:Lcom/android/internal/view/menu/BaseMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorOptionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0xc010458

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorOptionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorBottomMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object v0, p0, Lcom/color/widget/ColorOptionMenuView;->mPresenter:Lcom/android/internal/view/menu/BaseMenuPresenter;

    .line 46
    iput-object v0, p0, Lcom/color/widget/ColorOptionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 82
    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/android/internal/view/menu/BaseMenuPresenter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/color/widget/ColorOptionMenuView;->mPresenter:Lcom/android/internal/view/menu/BaseMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/color/widget/ColorOptionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 140
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/color/widget/ColorOptionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorOptionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method performItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/color/widget/ColorOptionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local p1    # "item":Landroid/view/MenuItem;
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorOptionMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    .restart local p1    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenter(Lcom/android/internal/view/menu/BaseMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/internal/view/menu/BaseMenuPresenter;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/color/widget/ColorOptionMenuView;->mPresenter:Lcom/android/internal/view/menu/BaseMenuPresenter;

    .line 117
    return-void
.end method
