.class public final Lcom/android/server/OppoBatteryService;
.super Ljava/lang/Object;
.source "OppoBatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I

.field public static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryCapacity:I

.field private mAccessoryPresent:Z

.field private mAccessoryStatus:I

.field public mBatteryCurrent:I

.field private mBatteryLevel:I

.field public mBatteryNotifyCode:I

.field private mBatteryRequestPowerOff:I

.field private mBatteryStatus:I

.field private mBatteryTempStatus:I

.field private mBatteryTemperature:I

.field private mBatteryVolStatus:I

.field private mBatteryVoltage:I

.field private mChargeFastCharger:Z

.field private mChargeSocFall:Z

.field private mChargeTimeout:Z

.field private mChargeVolStatus:I

.field private mChargerTechnology:I

.field private mChargerVoltage:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighBatteryVoltageWarningLevel:I

.field private final mHighChargerVoltageWarningLevel:I

.field private mLastAccessoryCapacity:I

.field private mLastAccessoryPresent:Z

.field private mLastAccessoryStatus:I

.field public mLastBatteryCurrent:I

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTempStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVolStatus:I

.field private mLastBatteryVoltage:I

.field private mLastChargeFastCharger:Z

.field private mLastChargeSocFall:Z

.field private mLastChargeTimeout:Z

.field private mLastChargeVolStatus:I

.field private mLastChargerTechnology:I

.field private mLastChargerVoltage:I

.field private mLastPlugType:I

.field private final mLowBatteryVoltageWarningLevel:I

.field private final mLowChargerVoltageWarningLevel:I

.field private mPlugType:I

.field private final mTomorrowLowBatteryWarningLevel:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/OppoBatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    .line 104
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    .line 106
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    .line 108
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    .line 110
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    .line 112
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    .line 115
    return-void
.end method

.method private sendAdditionalIntentLocked()V
    .locals 4

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    const-string v1, "chargervoltage"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v1, "batterycurrent"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v1, "chargervolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "batterytempstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "batteryvolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "accessorypresent"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v1, "accessorystatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v1, "accessorycapacity"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "chargetimeout"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    const-string v1, "chargesocfall"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    const-string v1, "chargertechnology"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v1, "chargefastcharger"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v1, "chargeplugged"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    sget-boolean v1, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    if-nez v1, :cond_0

    const-string v1, "debug.batteryservice"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    sget-object v1, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_ADDITIONAL_BATTERY_CHANGED.  chargervoltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterycurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargervolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterytempstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batteryvolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorypresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorystatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorycapacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargetimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargesocfall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargertechnology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargefastcharger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mPlugType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OppoBatteryService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OppoBatteryService$1;-><init>(Lcom/android/server/OppoBatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method


# virtual methods
.method public dumpAddition(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 282
    const/4 v2, 0x1

    .line 283
    .local v2, "update":Z
    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    const-string v6, "-a"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    :cond_0
    const-string v4, "Current OPPO Battery Service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Charger voltage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Battery current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory present:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory capacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargetimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargesocfall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ChargerTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ChargeFastCharger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  PlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UpdatesStopped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  TomorrowLowBatteryWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    :cond_1
    :goto_0
    return v2

    .line 302
    :cond_2
    array-length v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    const-string v6, "set"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 303
    aget-object v1, p3, v4

    .line 304
    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v3, p3, v6

    .line 306
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v6, "voltage"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 326
    :goto_1
    if-eqz v2, :cond_1

    .line 327
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v6, "temperature"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 309
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    goto :goto_1

    .line 310
    :cond_4
    const-string v6, "current"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    goto :goto_1

    .line 312
    :cond_5
    const-string v6, "chargervol"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    goto :goto_1

    .line 314
    :cond_6
    const-string v6, "chargetimeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    .line 316
    :cond_8
    const-string v6, "chargesocfall"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_3

    .line 318
    :cond_a
    const-string v6, "chargertechnology"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    goto :goto_1

    .line 320
    :cond_b
    const-string v6, "chargefastcharger"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    goto/16 :goto_1

    :cond_c
    move v4, v5

    goto :goto_4

    .line 323
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown set option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 332
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_e
    array-length v6, p3

    if-ne v6, v4, :cond_f

    const-string v4, "reset"

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 333
    iput-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    goto/16 :goto_0

    .line 335
    :cond_f
    const-string v4, "Dump current OPPO battery state, or:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    const-string v4, "  set voltage|temperature|current|chargervol|chargetimeout|chargesocfall|chargertechnology|chargefastcharger <value>"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v4, "  reset"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getChargeFastCharger()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    return v0
.end method

.method public getChargeSocFall()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    return v0
.end method

.method public getChargerVoltage()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    return v0
.end method

.method public native native_update()V
.end method

.method public processAdditionalValuesLocked(IIIII)V
    .locals 6
    .param p1, "batteryVoltage"    # I
    .param p2, "batteryTemperature"    # I
    .param p3, "plugType"    # I
    .param p4, "batteryLevel"    # I
    .param p5, "batteryStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 119
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 120
    iput p1, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 121
    iput p2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    .line 122
    iput p3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    .line 123
    iput p4, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    .line 124
    iput p5, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    .line 127
    :cond_0
    sget-boolean v0, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing additional values: mChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeVolStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTemperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTempStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeSocFall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargerTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeFastCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerTechnology:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeFastCharger:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_3

    .line 163
    :cond_2
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, -0x64

    if-ge v0, v1, :cond_4

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    .line 171
    :goto_0
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    if-lt v0, v1, :cond_6

    .line 172
    iput v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    .line 179
    :goto_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    if-lt v0, v1, :cond_8

    .line 181
    iput v5, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    .line 190
    :goto_2
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    .line 191
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    .line 192
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    .line 193
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    .line 194
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    .line 195
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    .line 196
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    .line 197
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    .line 198
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    .line 199
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    .line 200
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    .line 202
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeFastCharger:Z

    .line 203
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargerTechnology:I

    .line 205
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryLevel:I

    .line 206
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastPlugType:I

    .line 208
    invoke-direct {p0}, Lcom/android/server/OppoBatteryService;->sendAdditionalIntentLocked()V

    .line 210
    :cond_3
    return-void

    .line 165
    :cond_4
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, 0x226

    if-le v0, v1, :cond_5

    .line 166
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 168
    :cond_5
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 173
    :cond_6
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    if-gt v0, v1, :cond_7

    .line 174
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 176
    :cond_7
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 182
    :cond_8
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    if-gt v0, v1, :cond_9

    .line 184
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2

    .line 186
    :cond_9
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2
.end method
