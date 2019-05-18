.class public Lcom/mediatek/bluetoothgatt/service/Dis;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Dis.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "180A"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Dis;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addFirmwareRevisionString()V
    .locals 6

    .prologue
    .line 163
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 171
    return-void
.end method

.method addHardwareRevisionString()V
    .locals 6

    .prologue
    .line 148
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 156
    return-void
.end method

.method addManufacturerNameString()V
    .locals 6

    .prologue
    .line 103
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 111
    return-void
.end method

.method addModelNumberString()V
    .locals 6

    .prologue
    .line 118
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 126
    return-void
.end method

.method addPnpId()V
    .locals 6

    .prologue
    .line 223
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 231
    return-void
.end method

.method addRegCertDataList()V
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 216
    return-void
.end method

.method addSerialNumberString()V
    .locals 6

    .prologue
    .line 133
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 141
    return-void
.end method

.method addSoftwareRevisionString()V
    .locals 6

    .prologue
    .line 178
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 186
    return-void
.end method

.method addSystemId()V
    .locals 6

    .prologue
    .line 193
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 201
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Dis;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addManufacturerNameString()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addModelNumberString()V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSerialNumberString()V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addHardwareRevisionString()V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addFirmwareRevisionString()V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSoftwareRevisionString()V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSystemId()V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addRegCertDataList()V

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addPnpId()V

    .line 96
    return-void
.end method
