.class public Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "DayOfWeek.java"


# static fields
.field public static final DOW_FRIDAY:I = 0x5

.field public static final DOW_MONDAY:I = 0x1

.field public static final DOW_NOT_KNOWN:I = 0x0

.field public static final DOW_SATURDAY:I = 0x6

.field public static final DOW_SUNDAY:I = 0x7

.field public static final DOW_THURSDAY:I = 0x4

.field public static final DOW_TUESDAY:I = 0x2

.field public static final DOW_WEDNESDAY:I = 0x3

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDayOfWeek:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "2A09"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setDayOfWeek(I)Z

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setDayOfWeek(I)Z

    .line 125
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "dayOfWeek"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 136
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setDayOfWeek(I)Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x7

    .line 147
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setDayOfWeek(I)Z

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "dayOfWeek":I
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 158
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 160
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setDayOfWeek(I)Z

    goto :goto_0

    .line 155
    :pswitch_0
    const/4 v0, 0x7

    .line 156
    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValue([B)Z

    .line 103
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 112
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValue([B)Z

    .line 114
    return-void
.end method


# virtual methods
.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 193
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 195
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->isSupportDayOfWeek()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    array-length v1, v3

    .line 197
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 198
    add-int/2addr v0, v1

    .line 201
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportDayOfWeek()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->isSupportDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDayOfWeek(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 246
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->updateGattCharacteristic()V

    .line 251
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->isSupportDayOfWeek()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    array-length v0, v3

    .line 217
    .local v0, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    .end local v0    # "fieldLen":I
    :goto_0
    return v2

    .line 221
    .restart local v0    # "fieldLen":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->mDayOfWeek:[B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    add-int/2addr v1, v0

    .line 225
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->updateGattCharacteristic()V

    .line 226
    const/4 v2, 0x1

    goto :goto_0
.end method
