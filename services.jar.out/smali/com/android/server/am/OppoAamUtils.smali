.class public Lcom/android/server/am/OppoAamUtils;
.super Ljava/lang/Object;
.source "OppoAamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final OPPO_GUARD_ELF_PATH:Ljava/lang/String; = "/data/system/oppoguardelf"

.field private static final PERSIST_RESTRICT_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/persist_restrict.xml"

.field private static final SCREENOFF_RESTRICT_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/screenoff_restrict.xml"

.field private static final STARTINFO_WHITE_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/startinfo_white.xml"

.field private static final TAG:Ljava/lang/String;

.field private static mAamUtils:Lcom/android/server/am/OppoAamUtils;


# instance fields
.field private DEBUG_DETAIL:Z

.field DEBUG_SWITCH:Z

.field private mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

.field private mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    .line 48
    iget-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    .line 50
    iput-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 51
    iput-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/OppoAamUtils;->initDir()V

    .line 55
    invoke-direct {p0}, Lcom/android/server/am/OppoAamUtils;->initFileObserver()V

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileObserver"    # Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    if-eqz p2, :cond_1

    .line 114
    new-instance p2, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .end local p2    # "fileObserver":Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {p2, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    .line 115
    .restart local p2    # "fileObserver":Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    invoke-virtual {p2}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 118
    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/am/OppoAamUtils;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/server/am/OppoAamUtils;

    invoke-direct {v0}, Lcom/android/server/am/OppoAamUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    .line 62
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    return-object v0
.end method

.method private initDir()V
    .locals 7

    .prologue
    .line 66
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v6, "initDir start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/oppoguardelf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "oppoGuardElfFilePath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "screenOffRestrictFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, "startInfoWhiteFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "persistRestrictFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 81
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 85
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_3
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v6, "initDir failed!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 97
    new-instance v0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 99
    return-void
.end method

.method private readFromFileLocked(Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v8, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_0

    .line 182
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "readFromFileLocked start"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v4, 0x0

    .line 184
    .local v4, "stream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 189
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 194
    .local v7, "type":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 195
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "p"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 197
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 199
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v8, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_2

    .line 201
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readFromFileLocked  pkg == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 218
    if-eqz v5, :cond_3

    .line 219
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v4, v5

    .line 225
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "type":I
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    return-object v1

    .line 221
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "type":I
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "type":I
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 221
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 221
    :catch_4
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 211
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 221
    :catch_6
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed IOException "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 221
    :catch_8
    move-exception v0

    .line 222
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_b
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 218
    if-eqz v4, :cond_4

    .line 219
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_1

    .line 221
    :catch_a
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 218
    :goto_7
    if-eqz v4, :cond_4

    .line 219
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_1

    .line 221
    :catch_b
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 214
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 212
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 210
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 208
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 206
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private writeToFileLocked(Ljava/io/File;Ljava/util/List;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v7, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_0

    .line 231
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v8, "writeToFileLocked!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "N":I
    const/4 v5, 0x0

    .line 236
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 239
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 240
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const/4 v7, 0x0

    const-string v8, "gs"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 245
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 247
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const/4 v7, 0x0

    const-string v8, "att"

    invoke-interface {v3, v7, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    const-string v8, "gs"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    if-eqz v6, :cond_3

    .line 260
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v5, v6

    .line 266
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    return-void

    .line 262
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close state FileInputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 265
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 256
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v5, :cond_4

    .line 260
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 262
    :catch_2
    move-exception v1

    .line 263
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close state FileInputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 259
    :goto_3
    if-eqz v5, :cond_5

    .line 260
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 264
    :cond_5
    :goto_4
    throw v7

    .line 262
    :catch_3
    move-exception v1

    .line 263
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 255
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public readPersistRestrictFile()Ljava/util/List;
    .locals 3
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
    .line 161
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readPersistRestrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "persistRestrictFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 165
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readScreenOffResrictFile()Ljava/util/List;
    .locals 3
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
    .line 121
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readScreenOffResrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "screenOffResrictFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 125
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readStartInfoWhiteFile()Ljava/util/List;
    .locals 3
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
    .line 141
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readStartInfoWhiteFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "startInfoWhiteFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 145
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public savePersistRestrictFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "savePersistRestrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "persistRestrictFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 175
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 176
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 177
    monitor-exit v2

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveScreenOffResrictFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "saveScreenOffResrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "screenOffResrictFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 135
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 136
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 137
    monitor-exit v2

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveStartInfoWhiteFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "saveStartInfoWhiteFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "startInfoWhiteFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 155
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 156
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 157
    monitor-exit v2

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDynamicDebugSwitch()V
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/OppoAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_SWITCH:Z

    .line 296
    return-void
.end method
