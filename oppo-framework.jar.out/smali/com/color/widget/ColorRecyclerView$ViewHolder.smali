.class public abstract Lcom/color/widget/ColorRecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_CHANGED:I = 0x40

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

.field mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8173
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 8174
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    .line 8175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemId:J

    .line 8176
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemViewType:I

    .line 8177
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8180
    iput-object v3, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 8182
    iput-object v3, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 8253
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8257
    iput-object v3, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

    .line 8266
    if-nez p1, :cond_0

    .line 8267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8269
    :cond_0
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8270
    return-void
.end method

.method static synthetic access$5300(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 8171
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5402(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$Recycler;)Lcom/color/widget/ColorRecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 8171
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/color/widget/ColorRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 8171
    invoke-direct {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 8171
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .prologue
    .line 8563
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .prologue
    .line 8555
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 8474
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8475
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8295
    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    .line 8296
    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8297
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 8422
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8423
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 8426
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8427
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 8273
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->addFlags(I)V

    .line 8274
    invoke-virtual {p0, p2, p3}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 8275
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 8276
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 8371
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    if-nez v0, :cond_0

    .line 8372
    const/4 v0, -0x1

    .line 8374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/color/widget/ColorRecyclerView;

    # invokes: Lcom/color/widget/ColorRecyclerView;->getAdapterPositionFor(Lcom/color/widget/ColorRecyclerView$ViewHolder;)I
    invoke-static {v0, p0}, Lcom/color/widget/ColorRecyclerView;->access$5900(Lcom/color/widget/ColorRecyclerView;Lcom/color/widget/ColorRecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 8399
    iget-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 8406
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 8345
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 8389
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8319
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 8458
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .prologue
    .line 8466
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 8450
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isChanged()Z
    .locals 1

    .prologue
    .line 8446
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    .prologue
    .line 8438
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    .prologue
    .line 8546
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 8454
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 8410
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    .prologue
    .line 8462
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 8442
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .prologue
    const/4 v1, -0x1

    .line 8279
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    if-ne v0, v1, :cond_0

    .line 8280
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    .line 8282
    :cond_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 8283
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8285
    :cond_1
    if-eqz p2, :cond_2

    .line 8286
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8288
    :cond_2
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 8289
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8290
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/color/widget/ColorRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8292
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8478
    iput v3, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8479
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    .line 8480
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    .line 8481
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemId:J

    .line 8482
    iput v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8483
    iput v3, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8484
    iput-object v4, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowedHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 8485
    iput-object v4, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mShadowingHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 8486
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 8300
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8301
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    .line 8303
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 8470
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8471
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .prologue
    .line 8521
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8522
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    .line 8523
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8528
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8538
    :cond_0
    :goto_1
    return-void

    .line 8521
    :cond_1
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8530
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 8531
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 8532
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    .line 8533
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Lcom/color/widget/ColorRecyclerView$Recycler;)V
    .locals 0
    .param p1, "recycler"    # Lcom/color/widget/ColorRecyclerView$Recycler;

    .prologue
    .line 8434
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

    .line 8435
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 8306
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 1

    .prologue
    .line 8430
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    .line 8431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8490
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8493
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8494
    :cond_0
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8495
    :cond_1
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8496
    :cond_2
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8497
    :cond_3
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8498
    :cond_4
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8499
    :cond_5
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8500
    :cond_6
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8501
    :cond_7
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8502
    :cond_8
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8504
    :cond_9
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8505
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 8414
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mScrapContainer:Lcom/color/widget/ColorRecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/color/widget/ColorRecyclerView$Recycler;->unscrapView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 8415
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .prologue
    .line 8418
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
