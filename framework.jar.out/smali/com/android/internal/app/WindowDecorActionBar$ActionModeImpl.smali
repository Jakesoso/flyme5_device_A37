.class public Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 978
    iput-object p2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 979
    iput-object p3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 980
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 982
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 983
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1048
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 997
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->access$700(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result v1

    # invokes: Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->access$800(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iput-object p0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 1010
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 1014
    :goto_1
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$500(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-boolean v1, v1, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iput-object v3, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 987
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1113
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1129
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1136
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 1116
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 1117
    const/4 v0, 0x0

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1120
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v2}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1055
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1056
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1076
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1061
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1071
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1090
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1092
    return-void
.end method
