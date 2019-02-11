.class Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;
.super Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTabView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .line 546
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 547
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 561
    if-eqz p1, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 567
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 569
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 570
    return-void

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 551
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 555
    :cond_0
    return-void
.end method
