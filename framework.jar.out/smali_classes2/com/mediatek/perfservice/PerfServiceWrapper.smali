.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 55
    iput v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 57
    iput v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 84
    const-string v0, "PerfServiceWrapper"

    const-string v1, "Reflection Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 55
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 57
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 78
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 80
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 69
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 75
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 452
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 105
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 94
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableAndRaisePriorityTimeoutMs(II)V
    .locals 3
    .param p1, "timeout_ms"    # I
    .param p2, "core"    # I

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 140
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableAndRaisePriorityTimeoutMs(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableAndRaisePriorityTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 116
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 127
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpAll()V
    .locals 3

    .prologue
    .line 342
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 343
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->dumpAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in dumpAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastBoostPid()I
    .locals 4

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 425
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 426
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2}, Lcom/mediatek/perfservice/IPerfService;->getLastBoostPid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in getLastBoostPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLuckyMoneyInfo(I)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 149
    const-string v0, ""

    .line 151
    .local v0, "URL":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 152
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->getLuckyMoneyInfo(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in getPackName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    const-string v1, ""

    .line 411
    .local v1, "handle":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 412
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2}, Lcom/mediatek/perfservice/IPerfService;->getPackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    :cond_0
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in getPackName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 164
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDisplayType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 401
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyDisplayType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyDisplayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFrameUpdate(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    .local v2, "nowTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 379
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    if-nez v1, :cond_0

    .line 380
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result p1

    .line 381
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 384
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyFrameUpdate(I)V

    .line 388
    :cond_2
    iput-wide v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_3
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in notifyFrameUpdate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 438
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 440
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->notifyUserStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyUserStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePolicy(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 365
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->restorePolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in restorePolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 354
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->setFavorPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setFavorPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 281
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 323
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisableAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 270
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 292
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMs(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 302
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 303
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userGetCapability(I)I
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    .line 215
    const/4 v1, -0x1

    .line 218
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 219
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->userGetCapability(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 6
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I

    .prologue
    .line 172
    const/4 v1, -0x1

    .line 175
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 176
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 177
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 178
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userReg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegBigLittle(IIII)I
    .locals 9
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I

    .prologue
    .line 188
    const/4 v8, -0x1

    .line 191
    .local v8, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 192
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v5

    .line 193
    .local v5, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v6

    .line 194
    .local v6, "tid":I
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 200
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    :cond_0
    :goto_0
    return v8

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegBigLittle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScn()I
    .locals 6

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 232
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 233
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 234
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 235
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userRegScn(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userRegScn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegScnConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 313
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userResetAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRestoreAll()V
    .locals 3

    .prologue
    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 333
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userRestoreAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userRestoreAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 207
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnregScn(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 259
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnregScn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnregScn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
