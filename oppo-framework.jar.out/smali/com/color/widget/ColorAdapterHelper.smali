.class Lcom/color/widget/ColorAdapterHelper;
.super Ljava/lang/Object;
.source "ColorAdapterHelper.java"

# interfaces
.implements Lcom/color/widget/ColorOpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorAdapterHelper$Callback;,
        Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/color/widget/ColorOpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/color/widget/ColorAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/color/widget/ColorAdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/color/widget/ColorAdapterHelper$Callback;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/widget/ColorAdapterHelper;-><init>(Lcom/color/widget/ColorAdapterHelper$Callback;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/color/widget/ColorAdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/color/widget/ColorAdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    .line 77
    iput-boolean p2, p0, Lcom/color/widget/ColorAdapterHelper;->mDisableRecycler:Z

    .line 78
    new-instance v0, Lcom/color/widget/ColorOpReorderer;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorOpReorderer;-><init>(Lcom/color/widget/ColorOpReorderer$Callback;)V

    iput-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mOpReorderer:Lcom/color/widget/ColorOpReorderer;

    .line 79
    return-void
.end method

.method private applyAdd(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 427
    return-void
.end method

.method private applyMove(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 129
    return-void
.end method

.method private applyRemove(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x1

    .line 132
    iget v4, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 133
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 134
    .local v2, "tmpCount":I
    iget v8, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .line 135
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 136
    .local v5, "type":I
    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, "typeChanged":Z
    iget-object v8, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v8, v1}, Lcom/color/widget/ColorAdapterHelper$Callback;->findViewHolder(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v7

    .line 139
    .local v7, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v1}, Lcom/color/widget/ColorAdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    :cond_0
    if-nez v5, :cond_1

    .line 149
    invoke-virtual {p0, v10, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v0

    .line 150
    .local v0, "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 151
    const/4 v6, 0x1

    .line 153
    .end local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 166
    :goto_1
    if-eqz v6, :cond_4

    .line 167
    sub-int/2addr v1, v2

    .line 168
    sub-int/2addr v3, v2

    .line 169
    const/4 v2, 0x1

    .line 136
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    if-ne v5, v10, :cond_3

    .line 160
    invoke-virtual {p0, v10, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v0

    .line 161
    .restart local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 162
    const/4 v6, 0x1

    .line 164
    .end local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 171
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 174
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_5
    iget v8, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_6

    .line 175
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 176
    invoke-virtual {p0, v10, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object p1

    .line 178
    :cond_6
    if-nez v5, :cond_7

    .line 179
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 183
    :goto_3
    return-void

    .line 181
    :cond_7
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 10
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    const/4 v9, 0x2

    .line 186
    iget v4, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 187
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 188
    .local v2, "tmpCount":I
    iget v7, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v8, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v7, v8

    .line 189
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 190
    .local v5, "type":I
    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 191
    iget-object v7, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v7, v1}, Lcom/color/widget/ColorAdapterHelper$Callback;->findViewHolder(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v6

    .line 192
    .local v6, "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/color/widget/ColorAdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    :cond_0
    if-nez v5, :cond_1

    .line 194
    invoke-virtual {p0, v9, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v0

    .line 195
    .local v0, "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 196
    const/4 v2, 0x0

    .line 197
    move v4, v1

    .line 199
    .end local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 209
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 202
    invoke-virtual {p0, v9, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v0

    .line 203
    .restart local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 204
    const/4 v2, 0x0

    .line 205
    move v4, v1

    .line 207
    .end local v0    # "newOp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 211
    .end local v6    # "vh":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :cond_4
    iget v7, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v7, :cond_5

    .line 212
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 213
    invoke-virtual {p0, v9, v4, v2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object p1

    .line 215
    :cond_5
    if-nez v5, :cond_6

    .line 216
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 220
    :goto_2
    return-void

    .line 218
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 405
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 406
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 407
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 408
    .local v3, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 409
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 422
    .end local v3    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_0
    :goto_1
    return v5

    .line 412
    .restart local v3    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_1
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_2

    .line 414
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 415
    .local v1, "end":I
    iget v4, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 416
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 406
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v3    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 13
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 226
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-eqz v11, :cond_0

    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 227
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "should not dispatch add or move for pre layout"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 240
    :cond_1
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v12, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v11, v12}, Lcom/color/widget/ColorAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 244
    .local v7, "tmpStart":I
    const/4 v6, 0x1

    .line 245
    .local v6, "tmpCnt":I
    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 247
    .local v1, "offsetPositionForPartial":I
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_0

    .line 255
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "op should be remove or update."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 249
    :pswitch_0
    const/4 v4, 0x1

    .line 257
    .local v4, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_1
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v11, :cond_6

    .line 258
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    mul-int v12, v4, v2

    add-int v3, v11, v12

    .line 259
    .local v3, "pos":I
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v3, v11}, Lcom/color/widget/ColorAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 263
    .local v8, "updatedPos":I
    const/4 v0, 0x0

    .line 264
    .local v0, "continuous":Z
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_1

    .line 272
    :goto_2
    if-eqz v0, :cond_4

    .line 273
    add-int/lit8 v6, v6, 0x1

    .line 257
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v3    # "pos":I
    .end local v4    # "positionMultiplier":I
    .end local v8    # "updatedPos":I
    :pswitch_1
    const/4 v4, 0x0

    .line 253
    .restart local v4    # "positionMultiplier":I
    goto :goto_0

    .line 266
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v3    # "pos":I
    .restart local v8    # "updatedPos":I
    :pswitch_2
    add-int/lit8 v11, v7, 0x1

    if-ne v8, v11, :cond_2

    move v0, v9

    .line 267
    :goto_4
    goto :goto_2

    :cond_2
    move v0, v10

    .line 266
    goto :goto_4

    .line 269
    :pswitch_3
    if-ne v8, v7, :cond_3

    move v0, v9

    :goto_5
    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_5

    .line 276
    :cond_4
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v11, v7, v6}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v5

    .line 280
    .local v5, "tmp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Lcom/color/widget/ColorAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;I)V

    .line 281
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 282
    iget v11, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 283
    add-int/2addr v1, v6

    .line 285
    :cond_5
    move v7, v8

    .line 286
    const/4 v6, 0x1

    goto :goto_3

    .line 289
    .end local v0    # "continuous":Z
    .end local v3    # "pos":I
    .end local v5    # "tmp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .end local v8    # "updatedPos":I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 290
    if-lez v6, :cond_7

    .line 291
    iget v9, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v9, v7, v6}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v5

    .line 295
    .restart local v5    # "tmp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Lcom/color/widget/ColorAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;I)V

    .line 296
    invoke-virtual {p0, v5}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 306
    .end local v5    # "tmp":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_7
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 3
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget v0, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 451
    :goto_0
    return-void

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 446
    :pswitch_3
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 324
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 325
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 326
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 327
    .local v4, "postponed":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_9

    .line 329
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_2

    .line 330
    iget v5, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 331
    .local v5, "start":I
    iget v1, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    .line 336
    .local v1, "end":I
    :goto_1
    if-lt p1, v5, :cond_7

    if-gt p1, v1, :cond_7

    .line 338
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_4

    .line 339
    if-nez p2, :cond_3

    .line 340
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    .line 345
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 325
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 333
    :cond_2
    iget v5, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    .line 334
    .restart local v5    # "start":I
    iget v1, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_1

    .line 341
    :cond_3
    if-ne p2, v8, :cond_0

    .line 342
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 347
    :cond_4
    if-nez p2, :cond_6

    .line 348
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 353
    :cond_5
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 349
    :cond_6
    if-ne p2, v8, :cond_5

    .line 350
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 355
    :cond_7
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    .line 357
    if-nez p2, :cond_8

    .line 358
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 359
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 360
    :cond_8
    if-ne p2, v8, :cond_1

    .line 361
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 362
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 366
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_b

    .line 367
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_a

    .line 368
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_3

    .line 369
    :cond_a
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_1

    .line 370
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_3

    .line 373
    :cond_b
    if-nez p2, :cond_c

    .line 374
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 375
    :cond_c
    if-ne p2, v8, :cond_1

    .line 376
    iget v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 389
    .end local v4    # "postponed":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_d
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5
    if-ltz v2, :cond_11

    .line 390
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 391
    .local v3, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_10

    .line 392
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_e

    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_f

    .line 393
    :cond_e
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 394
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 389
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 396
    :cond_10
    iget v6, v3, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_f

    .line 397
    iget-object v6, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    invoke-virtual {p0, v3}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 401
    .end local v3    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_11
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/color/widget/ColorAdapterHelper$UpdateOp;)Lcom/color/widget/ColorAdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 564
    iget-object v4, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 565
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 566
    iget-object v4, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 567
    .local v2, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 565
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :pswitch_1
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 570
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_1

    .line 574
    :pswitch_2
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 575
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .line 576
    .local v0, "end":I
    if-le v0, p1, :cond_2

    .line 577
    const/4 p1, -0x1

    .line 596
    .end local v0    # "end":I
    .end local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_1
    return p1

    .line 579
    .restart local v0    # "end":I
    .restart local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_2
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 580
    goto :goto_1

    .line 583
    .end local v0    # "end":I
    :pswitch_3
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_3

    .line 584
    iget p1, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 586
    :cond_3
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, p1, :cond_4

    .line 587
    add-int/lit8 p1, p1, -0x1

    .line 589
    :cond_4
    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_0

    .line 590
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 123
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 6

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/color/widget/ColorAdapterHelper;->consumePostponedUpdates()V

    .line 535
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 537
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 538
    .local v2, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 556
    :goto_1
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 536
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :pswitch_0
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 541
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 544
    :pswitch_1
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 545
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 548
    :pswitch_2
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 549
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/color/widget/ColorAdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_1

    .line 552
    :pswitch_3
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchSecondPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 553
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 560
    .end local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 561
    return-void

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/color/widget/ColorAdapterHelper$UpdateOp;I)V
    .locals 2
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorAdapterHelper$Callback;->onDispatchFirstPass(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 310
    iget v0, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/color/widget/ColorAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 321
    :goto_0
    return-void

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mCallback:Lcom/color/widget/ColorAdapterHelper$Callback;

    iget v1, p1, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/color/widget/ColorAdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/widget/ColorAdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 462
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 463
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 464
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 465
    .local v2, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 466
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    .line 467
    iget p1, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    .line 463
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_1
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    .line 470
    add-int/lit8 p1, p1, -0x1

    .line 472
    :cond_2
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_0

    .line 473
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 476
    :cond_3
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_0

    .line 477
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 478
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_5

    .line 479
    const/4 p1, -0x1

    .line 487
    .end local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_4
    return p1

    .line 481
    .restart local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_5
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 482
    :cond_6
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_0

    .line 483
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 687
    iget-object v1, p0, Lcom/color/widget/ColorAdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 688
    .local v0, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .end local v0    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3}, Lcom/color/widget/ColorAdapterHelper$UpdateOp;-><init>(III)V

    .line 695
    .restart local v0    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    .line 691
    :cond_0
    iput p1, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    .line 692
    iput p2, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 693
    iput p3, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_0
.end method

.method onItemRangeChanged(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 494
    iget-object v1, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v1, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method onItemRangeMoved(III)Z
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 518
    if-ne p1, p2, :cond_0

    .line 525
    :goto_0
    return v1

    .line 521
    :cond_0
    if-eq p3, v0, :cond_1

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v2, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 510
    iget-object v1, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/color/widget/ColorAdapterHelper;->obtainUpdateOp(III)Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v1, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method preProcess()V
    .locals 5

    .prologue
    .line 92
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mOpReorderer:Lcom/color/widget/ColorOpReorderer;

    iget-object v4, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/color/widget/ColorOpReorderer;->reorderOps(Ljava/util/List;)V

    .line 93
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 96
    .local v2, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->applyAdd(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 101
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->applyRemove(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 104
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->applyUpdate(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 107
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->applyMove(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 114
    .end local v2    # "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/color/widget/ColorAdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 703
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorAdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/color/widget/ColorAdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 707
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 708
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOp(Lcom/color/widget/ColorAdapterHelper$UpdateOp;)V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 711
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/color/widget/ColorAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    return-void
.end method
