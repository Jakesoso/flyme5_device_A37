.class public Lcom/color/actionbar/app/ColorActionBarUtil;
.super Ljava/lang/Object;
.source "ColorActionBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/actionbar/app/ColorActionBarUtil$DialogCallback;,
        Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;,
        Lcom/color/actionbar/app/ColorActionBarUtil$DelegateCallback;,
        Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;,
        Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorActionBarUtil"

.field static final THEME_CUSTOM_ACTIONBAR:Ljava/lang/String; = "oppo:Theme.OPPO.CustomActionBar"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    return-void
.end method

.method public static getBottomMenuViewId()I
    .locals 1

    .prologue
    .line 86
    const v0, 0xc0204c2

    return v0
.end method

.method public static getContentId(Landroid/app/ActionBar;)I
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 61
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->getContentId()I

    move-result v0

    .line 64
    :goto_0
    return v0

    .restart local p0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const v0, 0x1020002

    goto :goto_0
.end method

.method public static getHomeId(Landroid/app/ActionBar;)I
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 74
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 75
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->getHomeId()I

    move-result v0

    .line 77
    :goto_0
    return v0

    .restart local p0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const v0, 0x102002c

    goto :goto_0
.end method

.method public static hasEmbeddedTabs(Landroid/app/ActionBar;)Z
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 265
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 266
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->hasEmbeddedTabs()Z

    move-result v0

    .line 268
    :goto_0
    return v0

    .restart local p0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lockMenuUpdate(Landroid/app/ActionBar;)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 170
    instance-of v0, p0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 171
    check-cast p0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/widget/ColorBottomMenuCallback;->lockMenuUpdate()V

    .line 173
    :cond_0
    return-void
.end method

.method public static requestWindowFeature(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "featureId"    # I

    .prologue
    .line 287
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->supportRequestWindowFeature(I)Z

    move-result v0

    .line 290
    :goto_0
    return v0

    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setDropdownDismissCallback(Landroid/app/ActionBar;Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "callback"    # Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;

    .prologue
    .line 193
    instance-of v0, p0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 194
    check-cast p0, Lcom/color/widget/ColorSpinnerCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V

    .line 196
    :cond_0
    return-void
.end method

.method public static setDropdownItemClickListener(Landroid/app/ActionBar;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 205
    instance-of v0, p0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 206
    check-cast p0, Lcom/color/widget/ColorSpinnerCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static setDropdownUpdateAfterAnim(Landroid/app/ActionBar;Z)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "update"    # Z

    .prologue
    .line 217
    instance-of v0, p0, Lcom/color/widget/ColorSpinnerCallback;

    if-eqz v0, :cond_0

    .line 218
    check-cast p0, Lcom/color/widget/ColorSpinnerCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/widget/ColorSpinnerCallback;->setDropdownUpdateAfterAnim(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public static setHasEmbeddedTabs(Landroid/app/ActionBar;Z)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    .line 229
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 230
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setEmbeddedTabs(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public static setMenuUpdateMode(Landroid/app/ActionBar;I)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "mode"    # I

    .prologue
    .line 159
    instance-of v0, p0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/widget/ColorBottomMenuCallback;->setMenuUpdateMode(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public static setProgress(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "progress"    # I

    .prologue
    .line 365
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 366
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->setSupportProgress(I)V

    .line 370
    :goto_0
    return-void

    .line 368
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0
.end method

.method public static setProgressBarIndeterminate(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "indeterminate"    # Z

    .prologue
    .line 344
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 345
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->setSupportProgressBarIndeterminate(Z)V

    .line 349
    :goto_0
    return-void

    .line 347
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    goto :goto_0
.end method

.method public static setProgressBarIndeterminateVisibility(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "visible"    # Z

    .prologue
    .line 324
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 325
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 329
    :goto_0
    return-void

    .line 327
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method public static setProgressBarVisibility(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "visible"    # Z

    .prologue
    .line 305
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 306
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->setSupportProgressBarVisibility(Z)V

    .line 310
    :goto_0
    return-void

    .line 308
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0
.end method

.method public static setSecondaryProgress(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "progress"    # I

    .prologue
    .line 389
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    if-eqz v0, :cond_0

    .line 390
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActivityCallback;->setSupportSecondaryProgress(I)V

    .line 394
    :goto_0
    return-void

    .line 392
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method public static setSplitActionBarOverlay(Landroid/app/ActionBar;Z)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "overlay"    # Z

    .prologue
    .line 241
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 242
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setSplitActionBarOverlay(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public static setSplitHideWithActionBar(Landroid/app/ActionBar;Z)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "hideWith"    # Z

    .prologue
    .line 253
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 254
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->setSplitHideWithActionBar(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method public static unlockMenuUpdate(Landroid/app/ActionBar;)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 181
    instance-of v0, p0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/widget/ColorBottomMenuCallback;->unlockMenuUpdate()V

    .line 184
    :cond_0
    return-void
.end method

.method public static updateMenuScrollData(Landroid/app/ActionBar;)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 147
    instance-of v0, p0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 148
    check-cast p0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollData()V

    .line 150
    :cond_0
    return-void
.end method

.method public static updateMenuScrollPosition(Landroid/app/ActionBar;IF)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .prologue
    .line 124
    instance-of v0, p0, Lcom/color/widget/ColorBottomMenuCallback;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lcom/color/widget/ColorBottomMenuCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1, p2}, Lcom/color/widget/ColorBottomMenuCallback;->updateMenuScrollPosition(IF)V

    .line 127
    :cond_0
    return-void
.end method

.method public static updateMenuScrollState(Landroid/app/ActionBar;I)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "state"    # I

    .prologue
    .line 136
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    if-eqz v0, :cond_0

    .line 137
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ActionBarCallback;->updateMenuScrollState(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public static updateTabScrollPosition(Landroid/app/ActionBar;IFI)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 98
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1, p2, p3}, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;->updateTabScrollPosition(IFI)V

    .line 102
    :cond_0
    return-void
.end method

.method public static updateTabScrollState(Landroid/app/ActionBar;I)V
    .locals 1
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "state"    # I

    .prologue
    .line 111
    instance-of v0, p0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    if-eqz v0, :cond_0

    .line 112
    check-cast p0, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-interface {p0, p1}, Lcom/color/actionbar/app/ColorActionBarUtil$ScrollTabCallback;->updateTabScrollState(I)V

    .line 114
    :cond_0
    return-void
.end method
