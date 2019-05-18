.class public Lcom/android/server/coloros/OppoBrowserInterceptManager;
.super Ljava/lang/Object;
.source "OppoBrowserInterceptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final INTERCEPT_MANGER_PATH:Ljava/lang/String; = "/data/oppo/boot"

.field private static final INTERCEPT_WHITE_FILE:Ljava/lang/String; = "/data/oppo/boot/browserWhiteList.txt"

.field private static final TAG:Ljava/lang/String; = "OppoBrowserInterceptManager"

.field private static mBrowserIntercept:Lcom/android/server/coloros/OppoBrowserInterceptManager;


# instance fields
.field private DEBUG_SWITCH:Z

.field private final mDefaultWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptFileObserver:Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;

.field private mInterceptWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptWhiteListLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mBrowserIntercept:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->DEBUG_SWITCH:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptFileObserver:Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sohu.inputmethod.sogou"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.oppo.mp_battery_autotest"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oppo.autotest.agingautotesttool"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oppo.PhenixTestServer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oppo.networkautotest"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oppo.community"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nearme.note"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.tencent.tvoem"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.oppo.ubeauty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mDefaultWhiteList:Ljava/util/List;

    .line 63
    invoke-direct {p0}, Lcom/android/server/coloros/OppoBrowserInterceptManager;->initDir()V

    .line 64
    invoke-direct {p0}, Lcom/android/server/coloros/OppoBrowserInterceptManager;->initFileObserver()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/coloros/OppoBrowserInterceptManager;->readWhiteListFile()V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/android/server/coloros/OppoBrowserInterceptManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mBrowserIntercept:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/server/coloros/OppoBrowserInterceptManager;

    invoke-direct {v0}, Lcom/android/server/coloros/OppoBrowserInterceptManager;-><init>()V

    sput-object v0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mBrowserIntercept:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mBrowserIntercept:Lcom/android/server/coloros/OppoBrowserInterceptManager;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 80
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/oppo/boot"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "interceptPath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/oppo/boot/browserWhiteList.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "interceptWhiteFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "OppoBrowserInterceptManager"

    const-string v4, "initDir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;

    const-string v1, "/data/oppo/boot/browserWhiteList.txt"

    invoke-direct {v0, p0, v1}, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;-><init>(Lcom/android/server/coloros/OppoBrowserInterceptManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptFileObserver:Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptFileObserver:Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/coloros/OppoBrowserInterceptManager$FileObserverPolicy;->startWatching()V

    .line 99
    return-void
.end method


# virtual methods
.method public getBrowserInterceptWhiteList()Ljava/util/List;
    .locals 2
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
    .line 102
    iget-object v1, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mDefaultWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 111
    :goto_0
    monitor-exit v2

    .line 112
    return v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readWhiteListFile()V
    .locals 11

    .prologue
    .line 116
    iget-boolean v8, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_0

    .line 117
    const-string v8, "OppoBrowserInterceptManager"

    const-string v9, "readWhiteListFile start"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/oppo/boot/browserWhiteList.txt"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "interceptWhiteListFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 120
    const-string v8, "OppoBrowserInterceptManager"

    const-string v9, "whiteListFile isn\'t exist!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    const/4 v5, 0x0

    .line 123
    .local v5, "isException":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 126
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 130
    .local v6, "line":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 131
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 135
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 136
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :goto_1
    const/4 v5, 0x1

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 147
    iget-object v9, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 148
    :try_start_4
    iget-object v8, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 149
    iget-object v8, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void

    .line 140
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v3, :cond_6

    .line 141
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 146
    :cond_6
    :goto_4
    if-nez v5, :cond_9

    .line 147
    iget-object v9, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 148
    :try_start_6
    iget-object v8, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 149
    iget-object v8, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 143
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v8

    .line 143
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 150
    :catchall_1
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v8

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    .line 140
    :goto_5
    if-eqz v2, :cond_7

    .line 141
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 146
    :cond_7
    :goto_6
    if-nez v5, :cond_8

    .line 147
    iget-object v9, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 148
    :try_start_a
    iget-object v10, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 149
    iget-object v10, p0, Lcom/android/server/coloros/OppoBrowserInterceptManager;->mInterceptWhiteList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_8
    throw v8

    .line 143
    :catch_3
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v8

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v8

    .line 139
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v8

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 135
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_9
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_3
.end method
