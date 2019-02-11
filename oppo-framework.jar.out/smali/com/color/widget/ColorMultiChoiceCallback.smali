.class public abstract Lcom/color/widget/ColorMultiChoiceCallback;
.super Landroid/database/DataSetObserver;
.source "ColorMultiChoiceCallback.java"

# interfaces
.implements Lcom/color/widget/ColorActionModeCallback;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorMultiChoiceCallback"


# instance fields
.field protected mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

.field private mSplitMenu:Landroid/view/Menu;

.field private mViewPager:Lcom/color/widget/ColorViewPager;


# direct methods
.method public constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/color/widget/ColorMultiChoiceAdapter;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorMultiChoiceCallback;-><init>(Lcom/color/widget/ColorMultiChoiceAdapter;Lcom/color/widget/ColorViewPager;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;Lcom/color/widget/ColorViewPager;)V
    .locals 1
    .param p1, "adapter"    # Lcom/color/widget/ColorMultiChoiceAdapter;
    .param p2, "viewPager"    # Lcom/color/widget/ColorViewPager;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    .line 47
    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    .line 48
    iput-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mSplitMenu:Landroid/view/Menu;

    .line 58
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    .line 59
    iput-object p2, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    .line 60
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorMultiChoiceAdapter;->setActionModeCallaback(Lcom/color/widget/ColorActionModeCallback;)V

    .line 61
    return-void
.end method

.method private updateMenu(II)V
    .locals 4
    .param p1, "checkedCount"    # I
    .param p2, "totalCount"    # I

    .prologue
    .line 153
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->getActionMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 154
    .local v0, "actionMenu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->getSplitMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 155
    .local v1, "splitMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->lockMenuUpdate()V

    .line 159
    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 161
    invoke-virtual {p0, v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceCallback;->onUpdateActionMenu(Landroid/view/Menu;II)Z

    move-result v2

    .line 162
    .local v2, "structureChanged":Z
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged(Z)V

    .line 164
    .end local v2    # "structureChanged":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 166
    invoke-virtual {p0, v1, p1, p2}, Lcom/color/widget/ColorMultiChoiceCallback;->onUpdateSplitMenu(Landroid/view/Menu;II)Z

    move-result v2

    .line 167
    .restart local v2    # "structureChanged":Z
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged(Z)V

    .line 169
    .end local v2    # "structureChanged":Z
    :cond_3
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->unlockMenuUpdate()V

    .line 173
    :cond_4
    return-void
.end method

.method private updateTitle(Landroid/view/ActionMode;II)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checkedCount"    # I
    .param p3, "totalCount"    # I

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/widget/ColorMultiChoiceCallback;->onUpdateTitle(Landroid/view/ActionMode;II)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCheckableItemCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0}, Lcom/color/widget/ColorMultiChoiceAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onChanged()V
    .locals 4

    .prologue
    .line 68
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    .line 69
    .local v1, "listView":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 70
    .local v0, "checkedCount":I
    invoke-virtual {p0}, Lcom/color/widget/ColorMultiChoiceCallback;->getCheckableItemCount()I

    move-result v2

    .line 71
    .local v2, "totalCount":I
    iget-object v3, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v3}, Lcom/color/widget/ColorMultiChoiceAdapter;->getActionMode()Landroid/view/ActionMode;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2}, Lcom/color/widget/ColorMultiChoiceCallback;->updateTitle(Landroid/view/ActionMode;II)V

    .line 72
    invoke-direct {p0, v0, v2}, Lcom/color/widget/ColorMultiChoiceCallback;->updateMenu(II)V

    .line 73
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->setDisableTouchEvent(Z)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onCreateSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mViewPager:Lcom/color/widget/ColorViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->setDisableTouchEvent(Z)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 94
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/color/widget/ColorMultiChoiceAdapter;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 104
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onPrepareSplitMenu(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSplitItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorMultiChoiceAdapter;->onSplitItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStartActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/color/widget/ColorMultiChoiceCallback;->mAdapter:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorMultiChoiceAdapter;->onStartActionMode(Landroid/view/ActionMode;)V

    .line 124
    return-void
.end method

.method protected onUpdateActionMenu(Landroid/view/Menu;II)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "checkedCount"    # I
    .param p3, "totalCount"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdateSplitMenu(Landroid/view/Menu;II)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "checkedCount"    # I
    .param p3, "totalCount"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdateTitle(Landroid/view/ActionMode;II)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checkedCount"    # I
    .param p3, "totalCount"    # I

    .prologue
    .line 129
    return-void
.end method
