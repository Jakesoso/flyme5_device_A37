.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oppoNTPserver:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "cn.pool.ntp.org"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    .line 72
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 75
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 76
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 86
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x1040036

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e006b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 91
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 96
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 97
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 98
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 101
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 96
    goto :goto_0

    .line 82
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 106
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v5, :cond_0

    move v5, v6

    .line 171
    :goto_0
    return v5

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_1

    .line 114
    sget-object v5, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 116
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_3

    const/4 v3, 0x0

    .line 119
    .local v3, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    :cond_2
    const-string v5, "NtpTrustedTime"

    const-string v7, "forceRefresh: no connectivity"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 121
    goto :goto_0

    .line 116
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 118
    :cond_3
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    goto :goto_1

    .line 125
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "NtpTrustedTime"

    const-string v8, "forceRefresh() from cache miss"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v4, Landroid/net/OppoHttpClient;

    invoke-direct {v4}, Landroid/net/OppoHttpClient;-><init>()V

    .line 129
    .local v4, "oppoHttpClient":Landroid/net/OppoHttpClient;
    sget-object v5, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v4, v5, v6, v8}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/OppoHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    :cond_5
    const-string v5, "NtpTrustedTime"

    const-string v6, "Use oppo http server algin time success!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v7, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 133
    invoke-virtual {v4}, Landroid/net/OppoHttpClient;->getHttpTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 134
    invoke-virtual {v4}, Landroid/net/OppoHttpClient;->getHttpTimeReference()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 135
    invoke-virtual {v4}, Landroid/net/OppoHttpClient;->getRoundTripTime()J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v5, v7

    .line 136
    goto :goto_0

    .line 140
    :cond_6
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 155
    .local v0, "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 156
    const-string v5, "1"

    const-string/jumbo v8, "sys.ntp.exception"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 157
    .local v2, "isNtpError":Z
    if-eqz v2, :cond_8

    .line 158
    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 155
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    :cond_8
    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v0, v5, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 161
    const-string v5, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mServer = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->oppoNTPserver:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean v7, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 163
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 164
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 165
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v5, v7

    .line 166
    goto/16 :goto_0

    .end local v2    # "isNtpError":Z
    :cond_9
    move v5, v6

    .line 171
    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 198
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 205
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 207
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 224
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServer:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServer:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 182
    :cond_0
    return-void
.end method
