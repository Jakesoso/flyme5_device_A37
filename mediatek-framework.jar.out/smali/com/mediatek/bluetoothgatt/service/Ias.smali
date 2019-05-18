.class public Lcom/mediatek/bluetoothgatt/service/Ias;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Ias.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "1802"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Ias;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addAlertLevel()V
    .locals 6

    .prologue
    .line 87
    const/4 v1, 0x1

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    const/4 v3, 0x4

    const/16 v4, 0x10

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ias;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 95
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Ias;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ias;->addAlertLevel()V

    .line 80
    return-void
.end method
