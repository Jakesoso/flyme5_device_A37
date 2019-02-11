.class public Lcom/color/widget/ColorSplitMenuView;
.super Lcom/color/widget/ColorBottomMenuView;
.source "ColorSplitMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;,
        Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;,
        Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorSplitMenuView"


# instance fields
.field private mForcePerformItemClick:Z

.field private mLastTabItemPosition:I

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

.field private mOnItemClickListener:Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

.field private mOnPrepareMenuListener:Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

.field private mTabSelectedCallback:Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

.field private mTabSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorSplitMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0xc010458

    invoke-direct {p0, p1, p2, v0}, Lcom/color/widget/ColorSplitMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/color/widget/ColorBottomMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mOnItemClickListener:Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

    .line 49
    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mOnPrepareMenuListener:Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

    .line 50
    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedCallback:Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/color/widget/ColorSplitMenuPresenter;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorSplitMenuPresenter;-><init>(Lcom/color/widget/ColorSplitMenuView;)V

    iput-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    .line 53
    iput v1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    .line 54
    iput v1, p0, Lcom/color/widget/ColorSplitMenuView;->mLastTabItemPosition:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorSplitMenuView;->mForcePerformItemClick:Z

    .line 91
    return-void
.end method

.method private isTabItemInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z
    .locals 1
    .param p1, "drawItem"    # Lcom/color/widget/ColorBottomMenuView$DrawItem;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorBottomMenuView$DrawItem;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bindMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 283
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 284
    return-void
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method onPerformClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorSplitMenuView;->getDrawItem(I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v0

    .line 243
    .local v0, "drawItem":Lcom/color/widget/ColorBottomMenuView$DrawItem;
    if-nez v0, :cond_1

    .line 244
    const-string v1, "ActionBarTab:ColorSplitMenuView"

    const-string v2, "not valid position!"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget v1, p0, Lcom/color/widget/ColorSplitMenuView;->mDownTouchedPosition:I

    if-eq p1, v1, :cond_2

    .line 248
    const-string v1, "ActionBarTab:ColorSplitMenuView"

    const-string v2, "selected position different from the down touched!"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSplitMenuView;->isItemEnabledInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    const-string v1, "ActionBarTab:ColorSplitMenuView"

    const-string v2, "not enabled item!"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_3
    invoke-direct {p0, v0}, Lcom/color/widget/ColorSplitMenuView;->isTabItemInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    const-string v1, "ActionBarTab:ColorSplitMenuView"

    const-string v2, "is tab item!"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 257
    iget v1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/color/widget/ColorSplitMenuView;->mForcePerformItemClick:Z

    if-eqz v1, :cond_0

    .line 258
    :cond_4
    iget v1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    invoke-virtual {p0, v1, v3}, Lcom/color/widget/ColorSplitMenuView;->setItemSelected(IZ)V

    .line 259
    iput p1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    .line 260
    iget v1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/color/widget/ColorSplitMenuView;->setItemSelected(IZ)V

    .line 261
    invoke-super {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->onPerformClick(I)V

    goto :goto_0

    .line 264
    :cond_5
    const-string v1, "ActionBarTab:ColorSplitMenuView"

    const-string v2, "not tab item!"

    invoke-static {v3, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->onPerformClick(I)V

    goto :goto_0
.end method

.method performItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mOnItemClickListener:Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mOnItemClickListener:Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;->onItemClick(Landroid/view/MenuItem;)V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForcePerformItemClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/color/widget/ColorSplitMenuView;->mForcePerformItemClick:Z

    .line 173
    return-void
.end method

.method public setOnItemClickListener(Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/color/widget/ColorSplitMenuView;->mOnItemClickListener:Lcom/color/widget/ColorSplitMenuView$OnItemClickListener;

    .line 137
    return-void
.end method

.method public setOnPrepareMenuListener(Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/color/widget/ColorSplitMenuView;->mOnPrepareMenuListener:Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

    .line 146
    return-void
.end method

.method public setTabSelectedCallback(Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedCallback:Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

    .line 155
    return-void
.end method

.method public unbindMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 276
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v0, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 277
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "menuRes"    # I

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorSplitMenuView;->update(IZ)V

    .line 128
    return-void
.end method

.method public update(IZ)V
    .locals 3
    .param p1, "menuRes"    # I
    .param p2, "cleared"    # Z

    .prologue
    .line 112
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/color/widget/ColorSplitMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/color/widget/ColorSplitMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSplitMenuView;->bindMenu(Landroid/view/Menu;)V

    .line 115
    iget-object v1, p0, Lcom/color/widget/ColorSplitMenuView;->mOnPrepareMenuListener:Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/color/widget/ColorSplitMenuView;->mOnPrepareMenuListener:Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;

    invoke-interface {v1, v0}, Lcom/color/widget/ColorSplitMenuView$OnPrepareMenuListener;->onPrepareMenu(Landroid/view/Menu;)V

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/color/widget/ColorBottomMenuDelegate;->getMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/color/widget/ColorSplitMenuView;->update(Ljava/util/List;Z)V

    .line 119
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorSplitMenuView;->update(Ljava/util/List;Z)V

    .line 103
    return-void
.end method

.method public update(Ljava/util/List;Z)V
    .locals 5
    .param p2, "cleared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v4, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedCallback:Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

    if-eqz v4, :cond_2

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    .local v0, "count":I
    iget-object v4, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedCallback:Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;

    invoke-interface {v4}, Lcom/color/widget/ColorSplitMenuView$TabSelectedCallback;->getSelectedTab()I

    move-result v3

    .line 183
    .local v3, "selected":I
    if-ltz v3, :cond_2

    if-ge v3, v0, :cond_2

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 186
    .local v2, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    if-ne v1, v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 192
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "selected":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuView;->update(Ljava/util/List;Z)V

    .line 193
    return-void
.end method

.method updateNextItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v4, -0x1

    .line 207
    .local v4, "selectedPosition":I
    iget-object v5, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    if-eq p1, v5, :cond_0

    .line 208
    iget-object v5, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 210
    :cond_0
    if-eqz p1, :cond_5

    .line 211
    iget-object v5, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    if-eq p1, v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/color/widget/ColorSplitMenuView;->mMenuItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    .local v0, "count":I
    const/4 v2, 0x0

    .line 216
    .local v2, "isTabMode":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 217
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 218
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    invoke-interface {v3}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    const/4 v2, 0x1

    .line 221
    iput v1, p0, Lcom/color/widget/ColorSplitMenuView;->mLastTabItemPosition:I

    .line 223
    :cond_2
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    iput v1, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    .line 216
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_4
    if-eqz v2, :cond_5

    .line 229
    iget v5, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    if-gez v5, :cond_6

    .line 230
    iget v5, p0, Lcom/color/widget/ColorSplitMenuView;->mLastTabItemPosition:I

    iput v5, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    .line 236
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "isTabMode":Z
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/color/widget/ColorBottomMenuView;->updateNextItems(Ljava/util/List;)V

    .line 237
    iget-object v5, p0, Lcom/color/widget/ColorSplitMenuView;->mNextItems:Lcom/color/widget/ColorBottomMenuView$DrawItems;

    invoke-virtual {p0, v5, v4}, Lcom/color/widget/ColorSplitMenuView;->getDrawItemInternal(Lcom/color/widget/ColorBottomMenuView$DrawItems;I)Lcom/color/widget/ColorBottomMenuView$DrawItem;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/color/widget/ColorSplitMenuView;->setItemSelectedInternal(Lcom/color/widget/ColorBottomMenuView$DrawItem;ZZ)V

    .line 238
    return-void

    .line 232
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "isTabMode":Z
    :cond_6
    iget v4, p0, Lcom/color/widget/ColorSplitMenuView;->mTabSelectedPosition:I

    goto :goto_1
.end method
