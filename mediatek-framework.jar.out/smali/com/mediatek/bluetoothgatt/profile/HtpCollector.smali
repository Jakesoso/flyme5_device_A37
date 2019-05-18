.class public Lcom/mediatek/bluetoothgatt/profile/HtpCollector;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "HtpCollector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HtpCollector"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "HtpCollector"

    const-string v1, "HtpCollector()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method


# virtual methods
.method protected handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readDisFirmwareRevisionString()Z
    .locals 2

    .prologue
    .line 181
    const-string v0, "HtpCollector"

    const-string v1, "readDisFirmwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisHardwareRevisionString()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "HtpCollector"

    const-string v1, "readDisHardwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisManufacturerNameString()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "HtpCollector"

    const-string v1, "readDisManufacturerNameString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisModelNumberString()Z
    .locals 2

    .prologue
    .line 136
    const-string v0, "HtpCollector"

    const-string v1, "readDisModelNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisPnpId()Z
    .locals 2

    .prologue
    .line 241
    const-string v0, "HtpCollector"

    const-string v1, "readDisPnpId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisRegCertDataList()Z
    .locals 2

    .prologue
    .line 226
    const-string v0, "HtpCollector"

    const-string v1, "readDisRegCertDataList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSerialNumberString()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "HtpCollector"

    const-string v1, "readDisSerialNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSoftwareRevisionString()Z
    .locals 2

    .prologue
    .line 196
    const-string v0, "HtpCollector"

    const-string v1, "readDisSoftwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSystemId()Z
    .locals 2

    .prologue
    .line 211
    const-string v0, "HtpCollector"

    const-string v1, "readDisSystemId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsIntermediateTemperatureCccd()Z
    .locals 3

    .prologue
    .line 290
    const-string v0, "HtpCollector"

    const-string v1, "readHtsIntermediateTemperatureCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsMeasurementInterval()Z
    .locals 2

    .prologue
    .line 106
    const-string v0, "HtpCollector"

    const-string v1, "readHtsMeasurementInterval()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsMeasurementIntervalCccd()Z
    .locals 3

    .prologue
    .line 306
    const-string v0, "HtpCollector"

    const-string v1, "readHtsMeasurementIntervalCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsMeasurementIntervalVrd()Z
    .locals 3

    .prologue
    .line 322
    const-string v0, "HtpCollector"

    const-string v1, "readHtsMeasurementIntervalVrd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_VALID_RANGE:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsTemperatureMeasurementCccd()Z
    .locals 3

    .prologue
    .line 274
    const-string v0, "HtpCollector"

    const-string v1, "readHtsTemperatureMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readHtsTemperatureType()Z
    .locals 2

    .prologue
    .line 91
    const-string v0, "HtpCollector"

    const-string v1, "readHtsTemperatureType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_TYPE:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeHtsIntermediateTemperatureCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 358
    const-string v0, "HtpCollector"

    const-string v1, "writeHtsIntermediateTemperatureCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeHtsMeasurementInterval(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 258
    const-string v0, "HtpCollector"

    const-string v1, "writeHtsMeasurementInterval()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeHtsMeasurementIntervalCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 376
    const-string v0, "HtpCollector"

    const-string v1, "writeHtsMeasurementIntervalCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeHtsTemperatureMeasurementCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 340
    const-string v0, "HtpCollector"

    const-string v1, "writeHtsTemperatureMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/HtpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method
