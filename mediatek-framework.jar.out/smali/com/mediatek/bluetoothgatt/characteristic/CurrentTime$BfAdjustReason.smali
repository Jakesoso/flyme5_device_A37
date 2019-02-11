.class public Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CurrentTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfAdjustReason"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;[B)V
    .locals 1
    .param p2, "value"    # [B

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .line 360
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setByteArray([B)V

    .line 362
    return-void
.end method


# virtual methods
.method public getChangeOfDst()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 442
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getChangeOfTimeZone()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 418
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExternalReferenceTimeUpdate()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getManualTimeUpdate()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public setChangeOfDst(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 453
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 457
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setChangeOfTimeZone(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 429
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 433
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExternalReferenceTimeUpdate(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setValue(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    goto :goto_0
.end method

.method public setManualTimeUpdate(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setValue(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 385
    const/4 v0, 0x1

    goto :goto_0
.end method
