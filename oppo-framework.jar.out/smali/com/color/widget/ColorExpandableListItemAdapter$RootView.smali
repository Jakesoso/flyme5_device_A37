.class Lcom/color/widget/ColorExpandableListItemAdapter$RootView;
.super Landroid/widget/LinearLayout;
.source "ColorExpandableListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootView"
.end annotation


# instance fields
.field private mContentViewGroup:Landroid/view/ViewGroup;

.field private mTitleViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-direct {p0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->init()V

    .line 252
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->setOrientation(I)V

    .line 257
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    .line 258
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 259
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mTitleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->addView(Landroid/view/View;)V

    .line 261
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    .line 262
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 263
    iget-object v0, p0, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->mContentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorExpandableListItemAdapter$RootView;->addView(Landroid/view/View;)V

    .line 264
    return-void
.end method
