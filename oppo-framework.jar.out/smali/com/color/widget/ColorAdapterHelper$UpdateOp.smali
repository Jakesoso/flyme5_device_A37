.class Lcom/color/widget/ColorAdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "ColorAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x0

.field static final MOVE:I = 0x3

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x1

.field static final UPDATE:I = 0x2


# instance fields
.field cmd:I

.field itemCount:I

.field positionStart:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p1, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    .line 623
    iput p2, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    .line 624
    iput p3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    .line 625
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 638
    const-string v0, "??"

    :goto_0
    return-object v0

    .line 630
    :pswitch_0
    const-string v0, "add"

    goto :goto_0

    .line 632
    :pswitch_1
    const-string v0, "rm"

    goto :goto_0

    .line 634
    :pswitch_2
    const-string v0, "up"

    goto :goto_0

    .line 636
    :pswitch_3
    const-string v0, "mv"

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 648
    if-ne p0, p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 651
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 652
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 655
    check-cast v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;

    .line 657
    .local v0, "op":Lcom/color/widget/ColorAdapterHelper$UpdateOp;
    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    iget v4, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 658
    goto :goto_0

    .line 660
    :cond_4
    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 662
    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_0

    .line 666
    :cond_5
    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 667
    goto :goto_0

    .line 669
    :cond_6
    iget v3, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 670
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 678
    iget v0, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmd:I

    .line 679
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    add-int v0, v1, v2

    .line 680
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v1, v2

    .line 681
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
