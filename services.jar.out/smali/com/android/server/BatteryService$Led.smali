.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field public mBatteryLowHint:Z

.field private final mBatteryMediumARGB:I

.field public mChargingHint:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLight:Lcom/android/server/lights/LightsManager;

.field private mLightHandler:Landroid/os/Handler;

.field private final mNotificationLightStateDetector:Lcom/android/server/lights/Light;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    new-instance v2, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 1246
    new-instance v2, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1271
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1273
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1275
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1277
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1279
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1281
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1286
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mLight:Lcom/android/server/lights/LightsManager;

    .line 1287
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/lights/Light;

    .line 1289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1290
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1292
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1294
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1295
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/BatteryService$SettingsObserver;

    invoke-direct {v2, p1, v1}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/BatteryService;->mLowPowerSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SettingsObserver;)Lcom/android/server/BatteryService$SettingsObserver;

    .line 1296
    new-instance v2, Lcom/android/server/BatteryService$SettingsObserver;

    invoke-direct {v2, p1, v1}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/BatteryService;->mChargeSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SettingsObserver;)Lcom/android/server/BatteryService$SettingsObserver;

    .line 1297
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1299
    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .prologue
    .line 1218
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService$Led;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private getIpoLedStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1417
    const-string v0, "1"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2302(Lcom/android/server/BatteryService;Z)Z

    .line 1423
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/BatteryService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>getIpoLedStatus ipo_led_on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  ipo_led_off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_1
    return-void

    .line 1420
    :cond_2
    const-string v0, "0"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2402(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method

.method private updateLedStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1432
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 1433
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2402(Lcom/android/server/BatteryService;Z)Z

    .line 1434
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2302(Lcom/android/server/BatteryService;Z)Z

    .line 1435
    # getter for: Lcom/android/server/BatteryService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1436
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>updateLedStatus  LowLevelFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_2
    return-void
.end method


# virtual methods
.method public turnOffBatteryLights()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1446
    :cond_0
    return-void
.end method

.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1308
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mLight:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLightState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1318
    # getter for: Lcom/android/server/BatteryService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BatteryLed"

    const-string v3, "mBatteryProps is null!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1323
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1324
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1327
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->getIpoLedStatus()V

    .line 1372
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootComplete:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1374
    iput-boolean v6, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1375
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1376
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 1377
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_7

    .line 1381
    const/16 v2, 0x5a

    if-ge v0, v2, :cond_6

    .line 1383
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBreathLightMode:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1384
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1387
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1391
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1395
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1397
    :cond_8
    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    const/16 v2, 0x64

    if-lt v0, v2, :cond_a

    .line 1399
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_9

    .line 1400
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto/16 :goto_0

    .line 1402
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0

    .line 1405
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 1407
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1411
    :cond_b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0
.end method
