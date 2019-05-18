.class public Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "TemperatureMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V
    .locals 1

    .prologue
    .line 558
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;[B)V
    .locals 1
    .param p2, "value"    # [B

    .prologue
    .line 565
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    .line 566
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 567
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->setByteArray([B)V

    .line 568
    return-void
.end method


# virtual methods
.method public getTemperatureTypeFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 624
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTemperatureUnitsFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTimeStampFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public setTemperatureTypeFlag(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 635
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 639
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 639
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTemperatureUnitsFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->setValue(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    :goto_0
    return v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    .line 591
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTimeStampFlag(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->setValue(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->updateGattCharacteristic()V

    goto :goto_0
.end method
