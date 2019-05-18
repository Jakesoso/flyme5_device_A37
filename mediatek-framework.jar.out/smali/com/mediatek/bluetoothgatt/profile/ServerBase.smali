.class public abstract Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.super Ljava/lang/Object;
.source "ServerBase.java"


# static fields
.field private static final ADD_SERVICE_TIMEOUT:J = 0x1f4L

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ServerBase"

.field private static final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final mAddServiceLock:Ljava/lang/Object;

.field protected mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

.field protected mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private mGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private final mPrepareQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/service/ServiceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mAddServiceLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mClients:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;-><init>(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mServices:Ljava/util/List;

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    .line 270
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->loadServicesConfig()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mAddServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addGattServerService()V
    .locals 4

    .prologue
    .line 382
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetoothgatt/service/ServiceBase;

    .line 383
    .local v2, "service":Lcom/mediatek/bluetoothgatt/service/ServiceBase;
    invoke-virtual {v2}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 384
    .local v0, "gattSrvc":Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    .line 385
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    .line 386
    invoke-virtual {v2}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->getServiceCfg()Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgCccd(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;)V

    .line 387
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->waitForServiceAdded()V

    goto :goto_0

    .line 390
    .end local v0    # "gattSrvc":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "service":Lcom/mediatek/bluetoothgatt/service/ServiceBase;
    :cond_1
    return-void
.end method

.method private cfgCccd(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;)V
    .locals 6
    .param p1, "cfg"    # Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 405
    .local v3, "srvcUuid":Ljava/util/UUID;
    const/4 v0, 0x0

    .line 406
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 407
    .local v1, "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 408
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getUuid()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 414
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->getSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 416
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v4, v3, v0}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->add(Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_0

    .line 419
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    .end local v1    # "entry":Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    :cond_4
    return-void
.end method

.method private waitForServiceAdded()V
    .locals 6

    .prologue
    .line 393
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mAddServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_0
    const-string v1, "ServerBase"

    const-string v3, "wait()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mAddServiceLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ServerBase"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/bluetoothgatt/service/ServiceBase;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->cfgCharacteristic(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cfgDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "descrUuid"    # Ljava/util/UUID;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->cfgCharacteristic(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->cfgDescriptor(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .locals 3
    .param p1, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetoothgatt/service/ServiceBase;

    .line 289
    .local v1, "service":Lcom/mediatek/bluetoothgatt/service/ServiceBase;
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;->getServiceCfg()Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v2

    .line 293
    .end local v1    # "service":Lcom/mediatek/bluetoothgatt/service/ServiceBase;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeServer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    sget-object v0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 368
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "ServerBase"

    const-string v1, "closeServer() - Not opened yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    .line 373
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 374
    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 375
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->setProfileServer(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)V

    .line 376
    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    .line 377
    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    .line 378
    sget-object v0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public executeWrite(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "execute"    # Z

    .prologue
    const/4 v8, 0x0

    .line 727
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeWrite() - execute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;

    .line 732
    .local v4, "queue":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    if-eqz p2, :cond_1

    .line 733
    invoke-virtual {v4}, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 734
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;

    .line 735
    .local v1, "entry":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;
    iget-boolean v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->isDescriptor:Z

    if-eqz v5, :cond_0

    .line 736
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    .line 737
    .local v3, "newValue":[B
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->value:[B

    iget v6, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->offset:I

    iget-object v7, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->value:[B

    array-length v7, v7

    invoke-static {v5, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 739
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_0

    .line 741
    .end local v3    # "newValue":[B
    :cond_0
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    invoke-virtual {v5}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v3

    .line 742
    .restart local v3    # "newValue":[B
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->value:[B

    iget v6, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->offset:I

    iget-object v7, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->value:[B

    array-length v7, v7

    invoke-static {v5, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 744
    iget-object v5, v1, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    invoke-virtual {v5, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    goto :goto_0

    .line 748
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;>;"
    .end local v1    # "entry":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newValue":[B
    :cond_1
    invoke-virtual {v4}, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->clear()V

    .line 749
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v4    # "queue":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    :cond_2
    return-void
.end method

.method public getCccd(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srvcUuid"    # Ljava/util/UUID;
    .param p3, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->getValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v0

    return-object v0
.end method

.method public getGattCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGattDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "descrUuid"    # Ljava/util/UUID;

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGattServer()Landroid/bluetooth/BluetoothGattServer;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method

.method public getGattService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGattService(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadServicesConfig()V
.end method

.method public notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 593
    invoke-virtual {p3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 594
    return-void
.end method

.method public notify(Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 8
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 606
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify() - srvcUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", charUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 618
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 619
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify() - can\'t find characteristic, srvcUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", charUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v3

    .line 614
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException in notify : e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 626
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v5, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->getDevices(Ljava/util/UUID;Ljava/util/UUID;)Ljava/util/Map;

    move-result-object v2

    .line 627
    .local v2, "devices":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothDevice;[B>;"
    if-nez v2, :cond_2

    .line 628
    const-string v5, "ServerBase"

    const-string v6, "notify() - No remote device need to notify"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 633
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-object v6, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 635
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify() - Send notification to device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_1

    .line 637
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-object v6, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 639
    const-string v5, "ServerBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify() - Send indication to device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v5, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v0, v6}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_1
.end method

.method public openServer(Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    const-string v1, "ServerBase"

    const-string v2, "openServer() - callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 340
    :cond_0
    sget-object v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 341
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_1

    .line 342
    const-string v1, "ServerBase"

    const-string v2, "openServer() - Already opened"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 349
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 350
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v1, :cond_2

    .line 351
    const-string v1, "ServerBase"

    const-string v2, "openServer() - Open GATT server fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_2
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    .line 356
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->setProfileServer(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)V

    .line 357
    new-instance v1, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-direct {v1}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    .line 358
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->addGattServerService()V

    .line 359
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onServerReady(ILandroid/bluetooth/BluetoothGattServer;)V

    .line 360
    sget-object v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "value"    # [B
    .param p5, "isDescriptor"    # Z

    .prologue
    .line 703
    const-string v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareWrite() - offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDescriptor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;

    .line 716
    .local v0, "queue":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    :goto_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->addPrepareWrite(Ljava/lang/Object;I[BZ)V

    .line 717
    return-void

    .line 712
    .end local v0    # "queue":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    :cond_0
    new-instance v0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;-><init>()V

    .line 713
    .restart local v0    # "queue":Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mPrepareQueue:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I

    .prologue
    .line 679
    const-string v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse() - requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 683
    const-string v0, "ServerBase"

    const-string v1, "GattServer is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0
.end method

.method public sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B

    .prologue
    .line 657
    const-string v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse() - requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 664
    const-string v0, "ServerBase"

    const-string v1, "GattServer is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0
.end method

.method public setValue(Ljava/util/UUID;Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 1
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 562
    invoke-virtual {p3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->setValue(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 563
    return-void
.end method

.method public setValue(Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 3
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 573
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 574
    const-string v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() - Service not found! srvcUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    .line 578
    const-string v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() - Characteristic not found! charUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto :goto_0
.end method

.method public updateCccd(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srvcUuid"    # Ljava/util/UUID;
    .param p3, "charUuid"    # Ljava/util/UUID;
    .param p4, "value"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "prop":I
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 509
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getGattCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    .line 517
    const-string v3, "ServerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCccd() - srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charProp=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02X "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-static {p4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 524
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {p4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    and-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_3

    .line 526
    const-string v2, "ServerBase"

    const-string v3, "Characteristic don\'t support NOTIFY!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    const-string v2, "ServerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCccd() - Can\'t get characteristic properties! srvcUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", charUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :cond_2
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {p4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_3

    .line 531
    const-string v2, "ServerBase"

    const-string v3, "Characteristic don\'t support INDICATE!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->setValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V

    move v1, v2

    .line 539
    goto :goto_0
.end method
