.class public Lcom/color/view/ColorMenuUtil;
.super Ljava/lang/Object;
.source "ColorMenuUtil.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorMenuUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDispatchingItemsChanged(Landroid/view/Menu;)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 52
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 53
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 54
    return-void
.end method

.method public static startDispatchingItemsChanged(Landroid/view/Menu;Z)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "structureChanged"    # Z

    .prologue
    .line 65
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 66
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged(Z)V

    .line 67
    return-void
.end method

.method public static stopDispatchingItemsChanged(Landroid/view/Menu;)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 43
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 44
    return-void
.end method
