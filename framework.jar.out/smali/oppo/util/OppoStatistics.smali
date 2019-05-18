.class public Loppo/util/OppoStatistics;
.super Ljava/lang/Object;
.source "OppoStatistics.java"


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

.field private static final TAG:Ljava/lang/String; = "OppoStatistics"

.field private static final UPLOAD_NOW:Ljava/lang/String; = "uploadNow"

.field private static appId:I

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Loppo/util/OppoStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 44
    const/16 v0, 0x4e98

    sput v0, Loppo/util/OppoStatistics;->appId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 31
    sget v0, Loppo/util/OppoStatistics;->appId:I

    return v0
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
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
    .line 59
    .local p3, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v0, Loppo/util/OppoStatistics$1;

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Loppo/util/OppoStatistics$1;-><init>(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    .line 90
    .local v0, "onCommonRunnable":Ljava/lang/Runnable;
    sget-object v1, Loppo/util/OppoStatistics;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "onCommonRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "OppoStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
