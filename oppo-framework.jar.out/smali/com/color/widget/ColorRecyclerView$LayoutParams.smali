.class public Lcom/color/widget/ColorRecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 8598
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8599
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8594
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8595
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8606
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8607
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 8602
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8603
    return-void
.end method

.method public constructor <init>(Lcom/color/widget/ColorRecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/color/widget/ColorRecyclerView$LayoutParams;

    .prologue
    .line 8610
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8611
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .prologue
    .line 8681
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .prologue
    .line 8669
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1

    .prologue
    .line 8659
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .prologue
    .line 8652
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .prologue
    .line 8641
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .prologue
    .line 8630
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .prologue
    .line 8620
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mViewHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
