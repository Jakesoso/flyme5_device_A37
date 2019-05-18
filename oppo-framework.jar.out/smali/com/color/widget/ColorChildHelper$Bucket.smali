.class Lcom/color/widget/ColorChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ColorChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field next:Lcom/color/widget/ColorChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-direct {v0}, Lcom/color/widget/ColorChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 376
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorChildHelper$Bucket;->clear(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method countOnesBefore(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    .line 448
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-nez v0, :cond_1

    .line 449
    if-lt p1, v1, :cond_0

    .line 450
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 454
    :cond_1
    if-ge p1, v1, :cond_2

    .line 455
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v2, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method get(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 387
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/color/widget/ColorChildHelper$Bucket;->ensureNext()V

    .line 389
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorChildHelper$Bucket;->get(I)Z

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method insert(IZ)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 403
    const/16 v5, 0x40

    if-lt p1, v5, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/color/widget/ColorChildHelper$Bucket;->ensureNext()V

    .line 405
    iget-object v5, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v8, p1, -0x40

    invoke-virtual {v5, v8, p2}, Lcom/color/widget/ColorChildHelper$Bucket;->insert(IZ)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/high16 v10, -0x8000000000000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 408
    .local v4, "lastBit":Z
    :goto_1
    const-wide/16 v8, 0x1

    shl-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long v6, v8, v10

    .line 409
    .local v6, "mask":J
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    and-long v2, v8, v6

    .line 410
    .local v2, "before":J
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v8, v10

    const/4 v5, 0x1

    shl-long v0, v8, v5

    .line 411
    .local v0, "after":J
    or-long v8, v2, v0

    iput-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    .line 412
    if-eqz p2, :cond_4

    .line 413
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChildHelper$Bucket;->set(I)V

    .line 417
    :goto_2
    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-eqz v5, :cond_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/color/widget/ColorChildHelper$Bucket;->ensureNext()V

    .line 419
    iget-object v5, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v4}, Lcom/color/widget/ColorChildHelper$Bucket;->insert(IZ)V

    goto :goto_0

    .line 407
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v4    # "lastBit":Z
    .end local v6    # "mask":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 415
    .restart local v0    # "after":J
    .restart local v2    # "before":J
    .restart local v4    # "lastBit":Z
    .restart local v6    # "mask":J
    :cond_4
    invoke-virtual {p0, p1}, Lcom/color/widget/ColorChildHelper$Bucket;->clear(I)V

    goto :goto_2
.end method

.method remove(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 425
    const/16 v7, 0x40

    if-lt p1, v7, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/color/widget/ColorChildHelper$Bucket;->ensureNext()V

    .line 427
    iget-object v7, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v8, p1, -0x40

    invoke-virtual {v7, v8}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    move-result v6

    .line 443
    :cond_0
    :goto_0
    return v6

    .line 429
    :cond_1
    const-wide/16 v8, 0x1

    shl-long v4, v8, p1

    .line 430
    .local v4, "mask":J
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    .line 431
    .local v6, "value":Z
    :goto_1
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v4

    and-long/2addr v8, v10

    iput-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    .line 432
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 433
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    and-long v2, v8, v4

    .line 435
    .local v2, "before":J
    iget-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v4

    and-long/2addr v8, v10

    const/4 v7, 0x1

    invoke-static {v8, v9, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    .line 436
    .local v0, "after":J
    or-long v8, v2, v0

    iput-wide v8, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    .line 437
    iget-object v7, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-eqz v7, :cond_0

    .line 438
    iget-object v7, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/color/widget/ColorChildHelper$Bucket;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/color/widget/ColorChildHelper$Bucket;->set(I)V

    .line 441
    :cond_2
    iget-object v7, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    goto :goto_0

    .line 430
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v6    # "value":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 2

    .prologue
    .line 396
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    .line 397
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v0}, Lcom/color/widget/ColorChildHelper$Bucket;->reset()V

    .line 400
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 361
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/color/widget/ColorChildHelper$Bucket;->ensureNext()V

    .line 363
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorChildHelper$Bucket;->set(I)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/widget/ColorChildHelper$Bucket;->next:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/color/widget/ColorChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/color/widget/ColorChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
