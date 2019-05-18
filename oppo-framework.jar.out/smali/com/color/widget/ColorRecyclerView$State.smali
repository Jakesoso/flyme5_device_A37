.class public Lcom/color/widget/ColorRecyclerView$State;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInPreLayout:Z

.field mItemCount:I

.field mOldChangedHolders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPostLayoutHolderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            "Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPreLayoutHolderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            "Lcom/color/widget/ColorRecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9183
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    .line 9184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    .line 9186
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    .line 9189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    .line 9192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 9199
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    .line 9204
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreviousLayoutItemCount:I

    .line 9210
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 9212
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    .line 9214
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    .line 9216
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z

    .line 9218
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1002(Lcom/color/widget/ColorRecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 9181
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1012(Lcom/color/widget/ColorRecyclerView$State;I)I
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 9181
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 9181
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/color/widget/ColorRecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 9181
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 9181
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/color/widget/ColorRecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 9181
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 9181
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/color/widget/ColorRecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 9181
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/color/widget/ColorRecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;

    .prologue
    .line 9181
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/color/widget/ColorRecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 9181
    iput-boolean p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/color/widget/ColorRecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 9181
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$6002(Lcom/color/widget/ColorRecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 9181
    iput p1, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method private removeFrom(Landroid/util/ArrayMap;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p2, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9371
    .local p1, "holderMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9372
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 9373
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9377
    :cond_0
    return-void

    .line 9371
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method addToDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9384
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9385
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9387
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 9323
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 9277
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9278
    const/4 v0, 0x0

    .line 9280
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 9351
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 9306
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 9315
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 9231
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public onViewIgnored(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9367
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorRecyclerView$State;->onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9368
    return-void
.end method

.method onViewRecycled(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 9357
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9358
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9359
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 9360
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mOldChangedHolders:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, p1}, Lcom/color/widget/ColorRecyclerView$State;->removeFrom(Landroid/util/ArrayMap;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 9362
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    iget-object v1, p1, Lcom/color/widget/ColorRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9364
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 9292
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9295
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9296
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 9262
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9266
    :goto_0
    return-void

    .line 9265
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method removeFromDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9380
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9381
    return-void
.end method

.method reset()Lcom/color/widget/ColorRecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9221
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    .line 9222
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 9223
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9225
    :cond_0
    iput v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    .line 9226
    iput-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    .line 9227
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mPostLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 9242
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 9253
    iget-boolean v0, p0, Lcom/color/widget/ColorRecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
