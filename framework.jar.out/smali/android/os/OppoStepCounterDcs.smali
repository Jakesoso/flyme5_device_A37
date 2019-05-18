.class public Landroid/os/OppoStepCounterDcs;
.super Ljava/lang/Object;
.source "OppoStepCounterDcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OppoStepCounterDcs$StatisticHandler;,
        Landroid/os/OppoStepCounterDcs$LooperThread;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_NAME:Ljava/lang/String; = "appName"

.field private static final APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final COMMON:I = 0x3ee

.field private static final DATA_TYPE:Ljava/lang/String; = "dataType"

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final LOG_MAP:Ljava/lang/String; = "logMap"

.field private static final LOG_TAG:Ljava/lang/String; = "logTag"

.field static final MSG_STEPCOUNTER_REG:I = 0x3ea

.field static final MSG_WECHAT_SPORT:I = 0x3e9

.field private static final SSOID:Ljava/lang/String; = "ssoid"

.field private static final TAG:Ljava/lang/String; = "OppoStepCounterDcs"

.field private static final UPLOAD_NOW:Ljava/lang/String; = "uploadNow"

.field private static appId:I

.field private static mGInstance:Landroid/os/OppoStepCounterDcs;

.field private static mMutex:Ljava/lang/Object;

.field static mSetpcounterWechatReg:I

.field private static mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

.field private static mThread:Landroid/os/OppoStepCounterDcs$LooperThread;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/os/OppoStepCounterDcs;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 40
    const/16 v0, 0x4e98

    sput v0, Landroid/os/OppoStepCounterDcs;->appId:I

    .line 44
    const/4 v0, 0x0

    sput v0, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoStepCounterDcs;->mGInstance:Landroid/os/OppoStepCounterDcs;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "OppoStepCounterDcs"

    const-string/jumbo v1, "new OppoStepCounterDcs"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 26
    sget v0, Landroid/os/OppoStepCounterDcs;->appId:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/OppoStepCounterDcs$StatisticHandler;)Landroid/os/OppoStepCounterDcs$StatisticHandler;
    .locals 0
    .param p0, "x0"    # Landroid/os/OppoStepCounterDcs$StatisticHandler;

    .prologue
    .line 26
    sput-object p0, Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static getAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 106
    move-object v0, p1

    .line 108
    .local v0, "appName":Ljava/lang/String;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OppoStepCounterDcs"

    const-string v3, "get app name error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Landroid/os/OppoStepCounterDcs;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/OppoStepCounterDcs;->mGInstance:Landroid/os/OppoStepCounterDcs;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/os/OppoStepCounterDcs;

    invoke-direct {v0}, Landroid/os/OppoStepCounterDcs;-><init>()V

    sput-object v0, Landroid/os/OppoStepCounterDcs;->mGInstance:Landroid/os/OppoStepCounterDcs;

    .line 58
    invoke-static {}, Landroid/os/OppoStepCounterDcs;->initStatistic()V

    .line 60
    :cond_0
    sget-object v0, Landroid/os/OppoStepCounterDcs;->mGInstance:Landroid/os/OppoStepCounterDcs;

    return-object v0
.end method

.method static initStatistic()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Landroid/os/OppoStepCounterDcs$LooperThread;

    invoke-direct {v0}, Landroid/os/OppoStepCounterDcs$LooperThread;-><init>()V

    sput-object v0, Landroid/os/OppoStepCounterDcs;->mThread:Landroid/os/OppoStepCounterDcs$LooperThread;

    .line 173
    sget-object v0, Landroid/os/OppoStepCounterDcs;->mThread:Landroid/os/OppoStepCounterDcs$LooperThread;

    invoke-virtual {v0}, Landroid/os/OppoStepCounterDcs$LooperThread;->start()V

    .line 174
    return-void
.end method

.method public static sendDCSMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p4, "upLoadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "Statistics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCommonWithoutJar logTag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",logmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Landroid/os/OppoStepCounterDcs$1;

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/OppoStepCounterDcs$1;-><init>(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    .line 98
    .local v0, "onCommonRunnable":Ljava/lang/Runnable;
    sget-object v1, Landroid/os/OppoStepCounterDcs;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "onCommonRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public sendStepCounterDCSMessage(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 180
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v6, Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

    if-nez v6, :cond_0

    .line 181
    sget-object v7, Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    const-string v6, "OppoStepCounterDcs"

    const-string/jumbo v8, "wait handler"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v6, Landroid/os/OppoStepCounterDcs;->mMutex:Ljava/lang/Object;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 184
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_0
    :try_start_2
    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "packages":[Ljava/lang/String;
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_2

    .line 188
    const-string v6, "OppoStepCounterDcs"

    const-string/jumbo v7, "setpcounter registed by system"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packages":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 184
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 211
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "OppoStepCounterDcs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "packages":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_5
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 191
    aget-object v6, v5, v1

    const-string v7, "com.tencent.mm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    sget v6, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Landroid/os/OppoStepCounterDcs;->mSetpcounterWechatReg:I

    .line 193
    const-string v6, "OppoStepCounterDcs"

    const-string/jumbo v7, "send MSG_WECHAT_SPORT"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v6, Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Landroid/os/OppoStepCounterDcs$StatisticHandler;->removeMessages(I)V

    .line 195
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 196
    .local v2, "msg":Landroid/os/Message;
    const/16 v6, 0x3e9

    iput v6, v2, Landroid/os/Message;->what:I

    .line 197
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    sget-object v6, Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/OppoStepCounterDcs$StatisticHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    const-string v6, "OppoStepCounterDcs"

    const-string/jumbo v7, "send MSG_STEPCOUNTER_REG"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 202
    .restart local v2    # "msg":Landroid/os/Message;
    const/16 v6, 0x3ea

    iput v6, v2, Landroid/os/Message;->what:I

    .line 203
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 204
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 205
    const/4 v6, 0x1

    aget-object v7, v5, v1

    aput-object v7, v3, v6

    .line 206
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    sget-object v6, Landroid/os/OppoStepCounterDcs;->mStasticHandler:Landroid/os/OppoStepCounterDcs$StatisticHandler;

    invoke-virtual {v6, v2}, Landroid/os/OppoStepCounterDcs$StatisticHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method
