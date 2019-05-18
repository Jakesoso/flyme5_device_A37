.class public Lcom/android/server/DCSMsg;
.super Ljava/lang/Object;
.source "DCSMsg.java"


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

.field private static final SSOID:Ljava/lang/String; = "ssoid"

.field private static final TAG:Ljava/lang/String; = "DCSMsgTag"

.field private static final UPLOAD_NOW:Ljava/lang/String; = "uploadNow"

.field private static final appId:I = 0x4e98

.field private static sInstance:Lcom/android/server/DCSMsg;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mDcsMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/DCSMsg;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DCSMsg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DCSMsg;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/DCSMsg;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/DCSMsg;->sInstance:Lcom/android/server/DCSMsg;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/server/DCSMsg;

    invoke-direct {v0}, Lcom/android/server/DCSMsg;-><init>()V

    sput-object v0, Lcom/android/server/DCSMsg;->sInstance:Lcom/android/server/DCSMsg;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/DCSMsg;->sInstance:Lcom/android/server/DCSMsg;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized sendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "strLogTag"    # Ljava/lang/String;
    .param p2, "strEventID"    # Ljava/lang/String;
    .param p3, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/android/server/DCSMsg;->mDcsMsg:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/android/server/DCSMsg$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/DCSMsg$1;-><init>(Lcom/android/server/DCSMsg;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, "onCommonRunnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/android/server/DCSMsg;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "onCommonRunnable":Ljava/lang/Runnable;
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
