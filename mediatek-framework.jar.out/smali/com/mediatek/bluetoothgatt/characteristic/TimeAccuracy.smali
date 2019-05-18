.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeAccuracy.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final TIME_ACCURACY_MAX:I = 0xfd

.field public static final TIME_ACCURACY_MIN:I = 0x0

.field public static final TIME_ACCURACY_OUT_OF_RANGE:I = 0xfe

.field public static final TIME_ACCURACY_UNKNOWN:I = 0xff


# instance fields
.field private mAccuracy:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "2A12"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setAccuracy(I)Z

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "accuracy"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setAccuracy(I)Z

    .line 120
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "accuracy"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 131
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setAccuracy(I)Z

    .line 133
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValue([B)Z

    .line 98
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 107
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValue([B)Z

    .line 109
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 167
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 169
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->isSupportAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    array-length v1, v3

    .line 171
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 172
    add-int/2addr v0, v1

    .line 175
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportAccuracy()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->isSupportAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccuracy(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 220
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->updateGattCharacteristic()V

    .line 225
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->isSupportAccuracy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    array-length v0, v3

    .line 191
    .local v0, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    .end local v0    # "fieldLen":I
    :goto_0
    return v2

    .line 195
    .restart local v0    # "fieldLen":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->mAccuracy:[B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    add-int/2addr v1, v0

    .line 199
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->updateGattCharacteristic()V

    .line 200
    const/4 v2, 0x1

    goto :goto_0
.end method
