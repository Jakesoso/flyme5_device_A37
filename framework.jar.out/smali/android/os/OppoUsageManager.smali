.class public final Landroid/os/OppoUsageManager;
.super Ljava/lang/Object;
.source "OppoUsageManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_E:Z = false

.field private static final DEBUG_W:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usage"

.field public static final TAG:Ljava/lang/String; = "OppoUsageManager"

.field private static mInstance:Landroid/os/OppoUsageManager;


# instance fields
.field private mOppoUsageService:Landroid/os/IOppoUsageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 35
    const-string/jumbo v1, "usage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, "serviceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IOppoUsageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoUsageService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 37
    return-void
.end method

.method public static getOppoUsageManager()Landroid/os/OppoUsageManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/OppoUsageManager;

    invoke-direct {v0}, Landroid/os/OppoUsageManager;-><init>()V

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    .line 43
    :cond_0
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-object v0
.end method


# virtual methods
.method public accumulateDialOutDuration(I)Z
    .locals 1
    .param p1, "durationInMinute"    # I

    .prologue
    .line 286
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->accumulateDialOutDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public accumulateHistoryCountOfReceivedMsg(I)Z
    .locals 2
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v0, 0x0

    .line 230
    if-gtz p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfReceivedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public accumulateHistoryCountOfSendedMsg(I)Z
    .locals 2
    .param p1, "newCountIncrease"    # I

    .prologue
    const/4 v0, 0x0

    .line 209
    if-gtz p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfSendedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public accumulateInComingCallDuration(I)Z
    .locals 1
    .param p1, "durationInMinute"    # I

    .prologue
    .line 303
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->accumulateInComingCallDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public export_mos_config()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->export_mos_config()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 425
    :catch_0
    move-exception v0

    .line 432
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAppUsageHistoryRecordCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecordCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppUsageHistoryRecords(II)Ljava/util/List;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialOutDuration()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getDialOutDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryBootTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryBootTime()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryCountOfReceivedMsg()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryCountOfReceivedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryCountOfSendedMsg()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryCountOfSendedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryImeiNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryImeiNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryPcbaNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryPcbaNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryRecordsCountOfPhoneCalls()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryRecordsCountOfPhoneCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInComingCallDuration()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getInComingCallDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 279
    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxChargeCurrent()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getMaxChargeCurrent()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 484
    :catch_0
    move-exception v0

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxChargeTemperature()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 497
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getMaxChargeTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 505
    :goto_0
    return v0

    .line 498
    :catch_0
    move-exception v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinChargeTemperature()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getMinChargeTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 519
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 519
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneCallHistoryRecords(II)Ljava/util/List;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->getPhoneCallHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public import_config_done()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->import_config_done()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 418
    :goto_0
    return v0

    .line 411
    :catch_0
    move-exception v0

    .line 418
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public import_config_init()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->import_config_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 383
    :catch_0
    move-exception v0

    .line 390
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public import_config_loop(Ljava/lang/String;)I
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->import_config_loop(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 404
    :goto_0
    return v0

    .line 397
    :catch_0
    move-exception v0

    .line 404
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public testSaveSomeData(ILjava/lang/String;)V
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "dataContent"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->testSaveSomeData(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateMaxChargeCurrent(I)Z
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 438
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->updateMaxChargeCurrent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 448
    :goto_0
    return v0

    .line 441
    :catch_0
    move-exception v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMaxChargeTemperature(I)Z
    .locals 1
    .param p1, "temp"    # I

    .prologue
    .line 452
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->updateMaxChargeCurrent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 455
    :catch_0
    move-exception v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMinChargeTemperature(I)Z
    .locals 1
    .param p1, "temp"    # I

    .prologue
    .line 466
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->updateMinChargeTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    :goto_0
    return v0

    .line 469
    :catch_0
    move-exception v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "phoneNoStr"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 375
    :goto_0
    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
