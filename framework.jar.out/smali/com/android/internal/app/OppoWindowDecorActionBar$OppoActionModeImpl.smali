.class Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
.super Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 259
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 260
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 264
    iput-object p3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 265
    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 3

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v0

    .line 275
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, p0, v2}, Lcom/color/widget/ColorActionModeCallback;->onCreateSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    or-int/2addr v0, v1

    .line 280
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 283
    :cond_0
    return v0

    .line 280
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v1
.end method

.method public dispatchOnStart()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/color/widget/ColorActionModeCallback;->onStartActionMode(Landroid/view/ActionMode;)V

    .line 326
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 311
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 312
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->animateToMode(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView;->closeMode()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1100(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ColorActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ColorActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-boolean v1, v1, Lcom/android/internal/app/OppoWindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ColorActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iput-object v2, v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 289
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionModeCallback:Lcom/color/widget/ColorActionModeCallback;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/color/widget/ColorActionModeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/color/widget/ColorActionModeCallback;->onPrepareSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mSplitMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method
